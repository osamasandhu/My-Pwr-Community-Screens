import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_pwr_community_screens/src/ui/pages/messages_page.dart';
import 'package:my_pwr_community_screens/src/ui/pages/my_profile_page.dart';
import 'package:my_pwr_community_screens/src/utils/nav.dart';

import '../../utils/images.dart';

class AppBarWidget extends PreferredSize {
  AppBarWidget({
    Key? key,
    required this.title,
  }) : super(
          key: key,
          child: AppBar(),
          preferredSize: const Size.fromHeight(56),
        );

  final String title;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
      actions: [
        GestureDetector(
          onTap: () {
            AppNavigation.push(context, MyProfilePage());
          },
          child: const Icon(Icons.person_outline, color: Colors.white),
        ),
        GestureDetector(
          onTap: () {
            AppNavigation.push(context, MessagesPage());
          },
          child: Image.asset(AppImages.messageIcon),
        ),
      ],
    );
  }
}
