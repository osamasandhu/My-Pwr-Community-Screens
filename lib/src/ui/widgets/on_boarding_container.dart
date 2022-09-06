// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:my_pwr_community_screens/src/utils/color.dart';

class ContainerRow extends StatelessWidget {
  final int page;

  const ContainerRow({Key? key, required this.page}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Containers(
          index: 0,
          page: page,
        ),
        Containers(
          index: 1,
          page: page,
        ),
        Containers(
          index: 2,
          page: page,
        ),
      ],
    );
  }
}

class Containers extends StatelessWidget {
  late int index;
  late int page;

  Containers({Key? key, required this.index, required this.page}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Container(
        width: 10,
        height: 10,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: page == index
              ? AppColors.onBoardingButtonColor
              : AppColors.onBoardingButtonColor.withOpacity(0.2),
        ),
      ),
    );
  }
}
