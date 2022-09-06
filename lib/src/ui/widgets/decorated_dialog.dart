// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class DecoratedDialog extends StatelessWidget {
  List<Widget> children;

  DecoratedDialog({Key? key, required this.children}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      child: Container(
        padding: const EdgeInsets.fromLTRB(15, 15, 15,0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40), color: Colors.white),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: children,
        ),
      ),
    );
  }
}
