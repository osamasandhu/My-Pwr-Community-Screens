import 'package:flutter/material.dart';
import 'package:my_pwr_community_screens/src/ui/pages/join_community_page.dart';
import 'package:my_pwr_community_screens/src/ui/widgets/on_boarding_body.dart';
import 'package:my_pwr_community_screens/src/ui/widgets/on_boarding_container.dart';
import 'package:my_pwr_community_screens/src/utils/color.dart';
import 'package:my_pwr_community_screens/src/utils/images.dart';
import 'package:my_pwr_community_screens/src/utils/nav.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  var _page = 0;
  final _controller = PageController(initialPage: 0);
  double percent = 0.4;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: PageView(
          controller: _controller,
          physics: const NeverScrollableScrollPhysics(),
          onPageChanged: (page) => setState(() => _page = page),
          children: [
            OnBoardingBody(
              description:
                  'Support Circles is a safe place to share experiences and discuss mutual interests with other users. ',
              url: AppImages.onBoardingFirst,
            ),
            OnBoardingBody(
              description:
                  'Upon joining a circle, you will be assigned to a group of users who are going through the ESD course at the same time as you. ',
              url: AppImages.onBoardingSecond,
            ),
            OnBoardingBody(
              description:
                  'Each circle has an ESD Expert and Peer Mentor who provides guidance and answers questions about the material in the course.',
              url: AppImages.onBoardingThird,
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(
          top: 10,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ContainerRow(
              page: _page,
            ),
            Container(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: CircularPercentIndicator(
                  radius: 40.0,
                  lineWidth: 3.0,
                  animation: true,
                  percent: percent,
                  center: GestureDetector(
                    onTap: _page == 2
                        ? () {
                            AppNavigation.pushReplacement(context, const JoinCommunityPage());
                          }
                        : () {
                            _nextView();
                            percent = percent + 0.3;
                          },
                    child: CircleAvatar(
                      backgroundColor: AppColors.onBoardingButtonColor,
                      radius: 30,
                      child: const Icon(
                        Icons.arrow_forward_rounded,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ),
                  backgroundColor: Colors.grey.withOpacity(0.3),
                  circularStrokeCap: CircularStrokeCap.round,
                  progressColor: AppColors.onBoardingButtonColor,
                  animateFromLastPercent: true,
                )),
          ],
        ),
      ),
    );
  }

  void _nextView() => _controller.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.ease,
      );
}
