import 'package:flutter/material.dart';
import 'package:my_pwr_community_screens/src/utils/color.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({
    Key? key,
    required this.child,
    this.margin,
    this.padding,
  }) : super(key: key);

  final Widget child;
  final EdgeInsets? padding;
  final EdgeInsets? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: const Offset(1, 1),
            blurRadius: 4,
            spreadRadius: 1,
            color: const Color(0xFF0090C6).withOpacity(0.2),
          ),
        ],
        border: Border.all(
          color: AppColors.primaryColor.withOpacity(0.2),
          width: 2,
        ),
      ),
      child: child,
    );
  }
}
