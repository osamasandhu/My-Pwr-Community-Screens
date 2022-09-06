import 'package:flutter/material.dart';
import 'package:my_pwr_community_screens/src/utils/color.dart';

class AppOutLineButton extends StatefulWidget {
  final String title;
  final String? url;
  final VoidCallback onPressed;

  const AppOutLineButton(
      {Key? key, this.url, required this.onPressed, required this.title})
      : super(key: key);

  @override
  State<AppOutLineButton> createState() => _AppOutLineButtonState();
}

class _AppOutLineButtonState extends State<AppOutLineButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24),
      child: TextButton(
          style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(124),
              side: BorderSide(
                color: Colors.grey.withOpacity(0.5),
              ),
            ),
          ),
          onPressed: widget.onPressed,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 13),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                widget.url == null
                    ? const SizedBox()
                    : Image.asset(
                        widget.url ?? '',
                        width: 22,
                        height: 22,
                      ),
                widget.url == null
                    ? const SizedBox()
                    : const SizedBox(
                        width: 10,
                      ),
                Text(
                  widget.title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                )
              ],
            ),
          )),
    );
  }
}

class AppButton extends StatefulWidget {
  final String title;
  final VoidCallback onPressed;

  const AppButton({Key? key, required this.onPressed, required this.title})
      : super(key: key);

  @override
  State<AppButton> createState() => _AppButtonState();
}

class _AppButtonState extends State<AppButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24),
      child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: AppColors.onBoardingButtonColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(124),
            ),
          ),
          onPressed: widget.onPressed,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 13),
            child: Center(
              child: Text(
                widget.title,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          )),
    );
  }
}
