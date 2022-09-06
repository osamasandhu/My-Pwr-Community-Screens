import 'package:flutter/material.dart';
import 'package:my_pwr_community_screens/src/ui/pages/on_boarding_page.dart';
import 'package:my_pwr_community_screens/src/ui/widgets/outline_button.dart';
import 'package:my_pwr_community_screens/src/utils/color.dart';
import 'package:my_pwr_community_screens/src/utils/images.dart';
import 'package:my_pwr_community_screens/src/utils/nav.dart';

class BeginPage extends StatefulWidget {
  const BeginPage({Key? key}) : super(key: key);

  @override
  State<BeginPage> createState() => _BeginPageState();
}

class _BeginPageState extends State<BeginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 354,
        padding: const EdgeInsets.only(
          top: 50,
        ),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: AppColors.onBoardingButtonColor,
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.elliptical(80, 30),
            bottomRight: Radius.elliptical(80, 30),
          ),
        ),
        child: Stack(
          fit: StackFit.expand,
          clipBehavior: Clip.none,
          children: [
            Column(
              children: const [
                Center(
                  child: Text(
                    'Welcome to our\ncommunity.',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 36,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: 20,
                )
              ],
            ),
            Positioned(
                left: MediaQuery.of(context).size.width / 2 - 200,
                bottom: -220,
                child: Image.asset(
                  AppImages.begin,
                  // width: MediaQuery.of(context).size.width,
                ))
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: SizedBox(
          height: 85,
          child: AppButton(
            title: 'Let’s Begin',
            onPressed: () {AppNavigation.push(context, OnBoardingPage());},
          ),
        ),
      ),
    );
  }
}
