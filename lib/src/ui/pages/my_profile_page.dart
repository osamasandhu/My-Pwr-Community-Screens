import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_pwr_community_screens/src/ui/pages/my_support_circle.dart';
import 'package:my_pwr_community_screens/src/ui/widgets/app_bar_widget.dart';
import 'package:my_pwr_community_screens/src/ui/widgets/app_divider.dart';
import 'package:my_pwr_community_screens/src/ui/widgets/bottom_nav.dart';
import 'package:my_pwr_community_screens/src/ui/widgets/bullet_container_widget.dart';
import 'package:my_pwr_community_screens/src/ui/widgets/container_widget.dart';
import 'package:my_pwr_community_screens/src/ui/widgets/esd_and_peer_mentor_button_row_widget.dart';
import 'package:my_pwr_community_screens/src/utils/color.dart';
import 'package:my_pwr_community_screens/src/utils/images.dart';
import 'package:my_pwr_community_screens/src/utils/nav.dart';

class MyProfilePage extends StatefulWidget {
  const MyProfilePage({Key? key}) : super(key: key);

  @override
  State<MyProfilePage> createState() => _MyProfilePageState();
}

class _MyProfilePageState extends State<MyProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNavigationBarWidget(),
      appBar: AppBarWidget(
        title: 'My Profile',
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.only(top: 40, bottom: 24),
        child: Column(
          children: [
            const CircleAvatar(
              backgroundColor: Color(0xFFd9d9d9),
              radius: 54,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16, bottom: 32),
              child: Text(
                'What’s your why?\nShare your goals in bio.',
                style: GoogleFonts.urbanist(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: AppColors.greyColor,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const AppDividerWidget(),
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 24, 22, 24),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _getIconWithText(
                    icon: AppImages.chatIconFilled,
                    text: 'Contact ESD\nExpert',
                  ),
                  _getIconWithText(
                    icon: AppImages.bookmarkIconFilled,
                    text: 'Saved',
                  ),
                  _getIconWithText(
                      icon: AppImages.userIcon,
                      text: 'Your Support\nCircle',
                      onTap: () {
                        AppNavigation.push(context, const MySupportCirclePage());
                      }),
                  _getIconWithText(
                    icon: AppImages.heartIconFilled,
                    text: 'Invite a\nFriend',
                  ),
                ],
              ),
            ),
            const AppDividerWidget(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 24),
              child: ESDAndPeerMentorButtonRowWidget(
                peerMentorButtonTapped: () {},
                esdButtonTapped: () {},
              ),
            ),
            const AppDividerWidget(),
            ContainerWidget(
              margin: const EdgeInsets.only(left: 24, right: 24, top: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 16,
                      right: 16,
                      top: 16,
                    ),
                    child: Row(
                      children: [
                        Text(
                          'Main Activity',
                          style: GoogleFonts.urbanist(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: AppColors.blackColor,
                          ),
                        ),
                        const Spacer(),
                        OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100),
                            ),
                            minimumSize: const Size(160, 37),
                            side: const BorderSide(
                              color: Color(0xFFEDEDED),
                              width: 2,
                            ),
                          ),
                          onPressed: () {},
                          child: Text(
                            'Start a post',
                            style: GoogleFonts.urbanist(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: AppColors.primaryColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  for (int i = 0; i < 3; i++) ...[
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 18,
                        right: 18,
                        bottom: 8,
                        top: 32,
                      ),
                      child: Row(
                        children: [
                          RichText(
                            text: TextSpan(
                              text: 'Yudit Sidikman',
                              style: GoogleFonts.urbanist(
                                color: AppColors.blackColor,
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                              children: [
                                TextSpan(
                                  text: ' commented on a post',
                                  style: GoogleFonts.urbanist(
                                    color: const Color(0xFF9E9E9E),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const BulletContainerWidget(),
                          Text(
                            '4d',
                            style: GoogleFonts.urbanist(
                              color: const Color(0xFF9E9E9E),
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 18,
                        right: 18,
                        bottom: 24,
                      ),
                      child: Text(
                        'You’re amazing!',
                        style: GoogleFonts.urbanist(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: const Color(0xFF0a0a0a),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 18,
                        right: 18,
                        bottom: 26,
                      ),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.favorite,
                            color: Colors.red,
                            size: 20,
                          ),
                          const SizedBox(width: 4),
                          _getRowText(text: '83'),
                          const BulletContainerWidget(),
                          _getRowText(text: '132 comments'),
                        ],
                      ),
                    ),
                    const AppDividerWidget(),
                  ],
                  GestureDetector(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Show all activity',
                            style: GoogleFonts.urbanist(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: const Color(0xFF616161),
                            ),
                          ),
                          const SizedBox(width: 8),
                          const Icon(
                            Icons.arrow_forward,
                            color: Color(0xFF616161),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _getRowText({required String text}) {
    return Text(
      text,
      style: GoogleFonts.urbanist(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: const Color(0xFF9E9E9E),
      ),
    );
  }

  Widget _getIconWithText(
      {required String icon, required String text, VoidCallback? onTap}) {
    return InkWell(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            icon,
            width: icon == AppImages.userIcon ? 25 : null,
            height: icon == AppImages.userIcon ? 25 : null,
          ),
          const SizedBox(height: 6),
          Text(
            text,
            textAlign: TextAlign.center,
            style: GoogleFonts.urbanist(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: AppColors.blackColor,
            ),
          ),
        ],
      ),
    );
  }
}
