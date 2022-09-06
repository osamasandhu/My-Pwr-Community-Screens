import 'package:flutter/material.dart';
import 'package:my_pwr_community_screens/src/ui/pages/messages_page.dart';
import 'package:my_pwr_community_screens/src/ui/pages/my_profile_page.dart';
import 'package:my_pwr_community_screens/src/ui/pages/my_support_circle.dart';
import 'package:my_pwr_community_screens/src/ui/widgets/app_bar_widget.dart';
import 'package:my_pwr_community_screens/src/ui/widgets/app_divider.dart';
import 'package:my_pwr_community_screens/src/ui/widgets/app_text_field.dart';
import 'package:my_pwr_community_screens/src/ui/widgets/esd_and_peer_mentor_button_row_widget.dart';
import 'package:my_pwr_community_screens/src/ui/widgets/post_container_widget.dart';
import 'package:my_pwr_community_screens/src/utils/color.dart';
import 'package:my_pwr_community_screens/src/utils/nav.dart';

import '../widgets/bottom_nav.dart';

class FeedPage extends StatefulWidget {
  const FeedPage({Key? key}) : super(key: key);

  @override
  _FeedPageState createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage>
    with SingleTickerProviderStateMixin {
  late TabController controller;
  final _searchController = TextEditingController();

  var scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(      bottomNavigationBar: const BottomNavigationBarWidget(),

        appBar: AppBarWidget(
          title: 'Feed',
        ),
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverList(
                delegate: SliverChildListDelegate([
                  Container(
                    color: Colors.white,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 24, top: 15, right: 24, bottom: 10),
                          child: DecoratedAppTextField(
                            textEditingController: _searchController,
                            fillColor: const Color(0xFFf5f5f5),
                            hint: 'Search messages',
                            prefix: const Icon(
                              Icons.search,
                              color: Color(0xFF9E9E9E),
                            ),
                          ),
                        ),
                        const AppDividerWidget(),
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Row(
                            children: const [
                              CircleAvatar(
                                  backgroundColor: AppColors.lightGreyColor),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 16),
                                child: Text(
                                  'Share with us',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.greyColor,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const AppDividerWidget(),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 22, horizontal: 30),
                          child: ESDAndPeerMentorButtonRowWidget(
                            esdButtonTapped: () {},
                            peerMentorButtonTapped: () {},
                          ),
                        ),AppDividerWidget(),
                      ],
                    ),
                  ),
                ]),
              ),
            ];
          },
          body: DefaultTabController(
            length: 2,
            child: Column(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: TabBar(
                    indicatorColor: Colors.black,
                    controller: controller,
                    labelColor: Colors.black,
                    indicatorWeight: 4,
                    unselectedLabelColor: Colors.grey,
                    // indicator: BoxDecoration(
                    //   borderRadius: BorderRadius.circular(24),
                    //   color: Colors.white,
                    // ),
                    // isScrollable: true,
                    tabs: [
                      _buildTab(text: 'Trending'),
                      // _buildTab(text: 'Set Back'),
                      // _buildTab(text: 'Confidence'),
                      _buildTab(text: 'New'),
                    ],
                  ),
                ),
                Expanded(
                  child: TabBarView(
                    controller: controller,
                    children: [
                      ListView.builder(itemBuilder: (c, i) {
                        return PostContainerWidget();
                      }),
                      ListView.builder(itemBuilder: (c, i) {
                        return PostContainerWidget();
                      })

                      // SingleChildScrollView(
                      //   padding: const EdgeInsets.symmetric(
                      //       vertical: 30, horizontal: 10),
                      //   child: Column(
                      //     children: [
                      //       _buildContainerImage(
                      //           url: 'player4', text: 'Physical'),
                      //     ],
                      //   ),
                      // ),
                      // SingleChildScrollView(
                      //   padding: const EdgeInsets.symmetric(
                      //       vertical: 30, horizontal: 10),
                      //   child: Column(
                      //     children: [
                      //       _buildContainerImage(
                      //           url: 'player5', text: 'Technical'),
                      //     ],
                      //   ),
                      // ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTab({required String text}) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 2),
        child: Tab(
            child: Text(
          text,
          style: const TextStyle(fontWeight: FontWeight.bold),
        )));
  }
}
