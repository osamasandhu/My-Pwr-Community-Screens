import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_pwr_community_screens/src/ui/widgets/app_bar_widget.dart';
import 'package:my_pwr_community_screens/src/ui/widgets/app_divider.dart';
import 'package:my_pwr_community_screens/src/ui/widgets/app_text_field.dart';
import 'package:my_pwr_community_screens/src/ui/widgets/bottom_nav.dart';
import 'package:my_pwr_community_screens/src/utils/color.dart';
import 'package:my_pwr_community_screens/src/utils/const.dart';
import 'package:my_pwr_community_screens/src/utils/images.dart';

class MessagesPage extends StatefulWidget {
  const MessagesPage({Key? key}) : super(key: key);

  @override
  State<MessagesPage> createState() => _MessagesPageState();
}

class _MessagesPageState extends State<MessagesPage> {
  final _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNavigationBarWidget(),
      appBar: AppBarWidget(
        title: 'My Messages',
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 24, right: 24, top: 24),
            child: Row(
              children: [
                Expanded(
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
                const SizedBox(width: 16),
                GestureDetector(
                  onTap: () {},
                  child: const Icon(Icons.more_horiz),
                ),
                const SizedBox(width: 24),
                GestureDetector(
                  onTap: () {},
                  child: Image.asset(AppImages.createIcon),
                ),
              ],
            ),
          ),
          const AppDividerWidget(),
          Expanded(
            child: ListView.separated(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.only(bottom: 24),
              itemBuilder: (ctx, index) {
                return
Padding(padding: EdgeInsets.symmetric(vertical: 5),child:                   ListTile(
  leading: const CircleAvatar(
    backgroundColor: AppColors.lightGreyColor,
    radius: 26,
  ),
  title: Text(
    'Username',
    style: GoogleFonts.urbanist(
      fontWeight: FontWeight.bold,
      color: AppColors.blackColor,
      fontSize: 16,
    ),
  ),
  subtitle: Text(
    kComment,
    style: GoogleFonts.urbanist(
      fontWeight: FontWeight.w500,
      fontSize: 16,
      color: const Color(0xFF616161),
    ),
  ),
  trailing: Text(
    'Aug 3',
    style: GoogleFonts.urbanist(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      color: const Color(0xFF9E9E9E),
    ),
  ),
)
  );              },
              separatorBuilder: (ctx, index) {
                return const AppDividerWidget();
              },
              itemCount: 100,
            ),
          ),
        ],
      ),
    );
  }
}
