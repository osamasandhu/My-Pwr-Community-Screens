import 'package:flutter/material.dart';
import 'package:my_pwr_community_screens/src/utils/images.dart';

class OnBoardingBody extends StatelessWidget {
  final String description;
  final String url;

  const OnBoardingBody({
    Key? key,
    required this.url,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.only(top: 50, left: 10, right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            AppImages.appLogo,
            width: 70,
            height: 70,
          ),
Padding(padding: EdgeInsets.symmetric(vertical: 20),child:           Image.asset(
  url,
  height: 350,
),),
          const Text(
            'Community',
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            description,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 18,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
