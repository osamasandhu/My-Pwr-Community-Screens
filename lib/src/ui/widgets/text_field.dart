// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

import '../../utils/color.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    Key? key,
    this.hint,
    this.onTap,
    this.label,
    this.value,
    this.dense = false,
    this.obscure = false,
    this.suffix,
    this.onSaved,
    this.maxLines = 1,
    this.onChanged,
    this.readonly = false,
    this.validator,
    this.prefixIcon,
    this.keyboardType,
    this.floatLabel = false,
    this.textEditingController,
    this.textCapitalization = TextCapitalization.none,
    this.textInputAction,
  }) : super(key: key);

  final bool dense;
  final bool obscure;
  final String? hint;
  final String? label;
  final int? maxLines;
  final String? value;
  final bool readonly;
  final Widget? suffix;
  final bool floatLabel;
  final Widget? prefixIcon;
  final VoidCallback? onTap;
  final TextInputType? keyboardType;
  final FormFieldSetter<String?>? onSaved;
  final FormFieldSetter<String?>? onChanged;
  final FormFieldValidator<String?>? validator;
  final TextEditingController? textEditingController;
  final TextCapitalization textCapitalization;
  final TextInputAction? textInputAction;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: TextFormField(
        textCapitalization: textCapitalization,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        onTap: onTap,
        onSaved: onSaved,
        readOnly: readonly,
        maxLines: maxLines,
        initialValue: value,
        onChanged: onChanged,
        validator: validator,
        obscureText: obscure,
        cursorColor: Colors.white,
        keyboardType: keyboardType,
        controller: textEditingController,
        textInputAction: textInputAction,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide:
                BorderSide(color: AppColors.onBoardingButtonColor, width: 1.8),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              color: Colors.red,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              color: Colors.grey.withOpacity(0.5),
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              color: Colors.grey.withOpacity(0.5),
            ),
          ),
          hintText: hint,
          // labelText: label,
          // hintStyle: const TextStyle(
          //   color: Colors.white,
          //   fontSize: 14,
          //   fontWeight: FontWeight.normal,
          // ),
          // labelStyle: const TextStyle(
          //   color: Colors.white,
          //   fontWeight: FontWeight.normal,
          // ),
        ),
      ),
    );
  }
}

class AppPasswordField extends StatefulWidget {
  final IconData? icon;
  final String? hint;

//  final bool iconBool;
  final String? label;

//  final Widget? prefixIcon;

  final BuildContext? context;

  final FormFieldValidator<String?>? validator;
  final TextEditingController? textEditingController;

  const AppPasswordField(
      {Key? key,
      this.icon,
      this.label,
      this.validator,
      this.hint,
      this.context,
      //  required this.iconBool,
      this.textEditingController // this.validator,
      })
      : super(key: key);

  @override
  _AppPasswordFieldState createState() => _AppPasswordFieldState();
}

class _AppPasswordFieldState extends State<AppPasswordField> {
  bool _show = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: TextFormField(
        cursorColor: Colors.white,
        validator: widget.validator,
        obscureText: _show,
        controller: widget.textEditingController,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        //keyboardType: widget.keyboardType,
        textInputAction: TextInputAction.next,
        onFieldSubmitted: (v) {
          FocusScope.of(context).nextFocus();
        },
        style: const TextStyle(
          color: Colors.black,
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),

        decoration: InputDecoration(
          suffixIcon: GestureDetector(
            child: Icon(
              _show ? Icons.visibility_off : Icons.visibility,
              color: AppColors.onBoardingButtonColor,
            ),
            onTap: () => setState(() => _show = !_show),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide:
                BorderSide(color: AppColors.onBoardingButtonColor, width: 1.8),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              color: Colors.red,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              color: Colors.grey.withOpacity(0.5),
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              color: Colors.grey.withOpacity(0.5),
            ),
          ),
          hintText: widget.hint,
          // labelText: widget.label,
          hintStyle: const TextStyle(
            color: Colors.black,
            fontSize: 14,
            fontWeight: FontWeight.normal,
          ),
          // labelStyle: const TextStyle(
          //   color: Colors.white,
          //   fontWeight: FontWeight.normal,
          // ),
        ),
      ),
    );
  }
}
