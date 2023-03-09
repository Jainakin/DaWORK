import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final String hintText;
  final TextStyle? hintStyle;
  final TextStyle? style;
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? contentPadding;
  final Color? borderColor;
  final double? borderRadius;
  final int? maxLines;
  final TextInputType? keyboardType;
  late bool enabled;
  CustomTextFormField({
    Key? key,
    required this.controller,
    required this.validator,
    required this.hintText,
    this.hintStyle,
    this.contentPadding,
    this.borderColor,
    this.style,
    this.borderRadius,
    this.maxLines,
    this.keyboardType,
    this.height,
    this.width,
    this.enabled = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,

      // margin: const EdgeInsets.only(top: 10, bottom: 5),
      child: TextFormField(
          enabled: enabled,
          controller: controller,
          validator: validator,
          maxLines: maxLines,
          keyboardType: keyboardType,
          decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide(
                    width: 1,
                    color: borderColor ?? Theme.of(context).indicatorColor),
                borderRadius: BorderRadius.circular(borderRadius ?? 15),
              ),
              // counter: Offstage(),

              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    width: 1,
                    color: borderColor ?? Theme.of(context).indicatorColor),
                borderRadius: BorderRadius.circular(borderRadius ?? 15),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    width: 1,
                    color: borderColor ?? Theme.of(context).indicatorColor),
                borderRadius: BorderRadius.circular(borderRadius ?? 15),
              ),
              errorBorder: OutlineInputBorder(
                borderSide: const BorderSide(width: 1, color: Colors.red),
                borderRadius: BorderRadius.circular(borderRadius ?? 15),
              ),
              errorStyle: Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .copyWith(color: Colors.red),
              disabledBorder: InputBorder.none,
              contentPadding: contentPadding ?? const EdgeInsets.only(left: 10),
              hintText: hintText,
              hintStyle: hintStyle ?? Theme.of(context).textTheme.bodySmall),
          style: style ?? Theme.of(context).textTheme.bodySmall),
    );
  }
}
