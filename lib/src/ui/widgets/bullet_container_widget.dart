import 'package:flutter/material.dart';

class BulletContainerWidget extends StatelessWidget {
  const BulletContainerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 4,
      width: 4,
      decoration: const BoxDecoration(
        color: Color(0xFF757575),
        shape: BoxShape.circle,
      ),
      margin: const EdgeInsets.symmetric(horizontal: 8),
    );
  }
}
