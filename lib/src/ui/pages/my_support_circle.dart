import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_pwr_community_screens/src/ui/widgets/app_bar_widget.dart';
import 'package:my_pwr_community_screens/src/ui/widgets/app_divider.dart';
import 'package:my_pwr_community_screens/src/ui/widgets/app_text_field.dart';
import 'package:my_pwr_community_screens/src/ui/widgets/bottom_nav.dart';
import 'package:my_pwr_community_screens/src/ui/widgets/esd_and_peer_mentor_button_row_widget.dart';
import 'package:my_pwr_community_screens/src/ui/widgets/post_container_widget.dart';
import 'package:my_pwr_community_screens/src/utils/color.dart';
import 'package:my_pwr_community_screens/src/utils/const.dart';

import '../../utils/images.dart';

class MySupportCirclePage extends StatefulWidget {
  const MySupportCirclePage({Key? key}) : super(key: key);

  @override
  State<MySupportCirclePage> createState() => _MySupportCirclePageState();
}

class _MySupportCirclePageState extends State<MySupportCirclePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(      bottomNavigationBar: const BottomNavigationBarWidget(),

      appBar: AppBarWidget(
        title: 'My Support Circle',
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 24, top: 15, right: 24, bottom: 10),
                    child: Row(
                      children: [
                        const Text(
                          '[Group Name]',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: AppColors.blackColor,
                          ),
                        ),
                        const SizedBox(width: 4),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.info,
                              color: AppColors.blackColor),
                        ),
                        const Spacer(),
                        SizedBox(
                          width: 82,
                          child: Stack(
                            children: [
                              getContainer(child: const SizedBox()),
                              Positioned(
                                left: 19,
                                child: getContainer(child: const SizedBox()),
                              ),
                              Positioned(
                                left: 38,
                                child: getContainer(child: const SizedBox()),
                              ),
                              Positioned(
                                left: 57,
                                child: getContainer(child: const SizedBox()),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 8),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(
                                color: AppColors.greyColor, width: 1),
                          ),
                          alignment: Alignment.center,
                          padding: const EdgeInsets.symmetric(
                            vertical: 2,
                            horizontal: 8,
                          ),
                          child: const Text(
                            '46.3K',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const AppDividerWidget(),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      children: [
                        const CircleAvatar(
                            backgroundColor: AppColors.lightGreyColor),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          child: Text(
                            'Shared with the group...',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: AppColors.greyColor,
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.star_border,
                              color: Colors.black),
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
                  ),
                ],
              ),
            ),
            for (int i = 0; i < 100; i++) const PostContainerWidget()
          ],
        ),
      ),
    );
  }

}
Widget getContainer({required Widget child}) {
  return Container(
    height: 24,
    width: 24,
    decoration: BoxDecoration(
      color: AppColors.lightGreyColor,
      shape: BoxShape.circle,
      border: Border.all(
        color: AppColors.greyColor,
        width: 0.2,
      ),
    ),
  );
}
