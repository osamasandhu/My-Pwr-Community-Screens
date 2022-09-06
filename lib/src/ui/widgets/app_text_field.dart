import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DecoratedAppTextField extends StatelessWidget {
  const DecoratedAppTextField({
    Key? key,
    this.hint,
    this.onTap,
    this.label,
    this.value,
    this.obscure = false,
    this.suffix,
    this.onSaved,
    this.onChanged,
    this.readonly = false,
    this.validator,
    this.keyboardType,
    this.floatLabel = false,
    this.textEditingController,
    this.isBold = false,
    this.maxLines = 1,
    this.textInputAction = TextInputAction.next,
    this.fillColor,
    this.style,
    this.inputDecoration,
    this.bottomPadding,
    this.focusedBorderColor,
    this.prefix,
  }) : super(key: key);

  final bool? isBold;
  final double? bottomPadding;
  final TextStyle? style;
  final bool? obscure;
  final String? hint;
  final String? label;
  final String? value;
  final bool readonly;
  final Widget? suffix;
  final bool? floatLabel;
  final VoidCallback? onTap;
  final TextInputType? keyboardType;
  final FormFieldSetter<String>? onSaved;
  final FormFieldSetter<String>? onChanged;
  final FormFieldValidator<String>? validator;
  final TextEditingController? textEditingController;
  final int? maxLines;
  final Color? fillColor;
  final TextInputAction? textInputAction;
  final InputDecoration? inputDecoration;
  final Color? focusedBorderColor;
  final Widget? prefix;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: bottomPadding ?? 15),
      child: TextFormField(
        onTap: onTap,
        onSaved: onSaved,
        onChanged: onChanged,
        textInputAction: textInputAction,
        keyboardType: keyboardType,
        initialValue: value,
        maxLines: maxLines,
        readOnly: readonly,
        //minLines: minLines,
        validator: validator,
        obscureText: obscure ?? false,
        controller: textEditingController,
        scrollPadding: const EdgeInsets.all(380),
        decoration: inputDecoration ??
            InputDecoration(
              prefixIcon: prefix,
              labelText: label,
              labelStyle: const TextStyle(
                fontFamily: 'Lexend Deca',
                color: Color(0xFF95A1AC),
                fontSize: 14,
                fontWeight: FontWeight.normal,
              ),
              hintText: hint ?? '',
              hintStyle: GoogleFonts.urbanist(
                color: const Color(0xFF95A1AC),
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.transparent),
                borderRadius: BorderRadius.circular(7),
              ),
              border: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.transparent),
                borderRadius: BorderRadius.circular(7),
              ),
              contentPadding: const EdgeInsets.symmetric(horizontal: 8),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.transparent),
                borderRadius: BorderRadius.circular(7),
              ),
              filled: true,
              fillColor: fillColor ?? Colors.white,
            ),
      ),
    );
  }
}
