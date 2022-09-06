import 'package:flutter/material.dart';

class AppDividerWidget extends StatelessWidget {
  const AppDividerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Divider(
      color: Color(0xFFe0e0e0),
      height: 0,
      thickness: 0.5,
    );
  }
}
