import 'package:flutter/material.dart';
import 'package:dawork/constants.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  final void Function()? onPressed;
  final double? width;
  final double? height;
  final double? textSize;
  final FontWeight? fontWeight;
  final Color? primaryColor;
  final Color? borderColor;
  final double? borderRadius;
  final Color? shadowColor;
  final Color? textColor;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  const CustomButton(
      {Key? key,
      required this.buttonText,
      required this.onPressed,
      this.width,
      this.margin,
      this.fontWeight,
      this.padding,
      this.textSize,
      this.borderRadius,
      this.borderColor,
      this.shadowColor,
      this.primaryColor,
      this.textColor,
      this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin ??
          const EdgeInsets.only(
            top: 25.0,
            bottom: 25.0,
          ),
      width: width ?? double.infinity,
      // height: height ?? MediaQuery.of(context).size.width * 0.15,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          padding: padding,
          backgroundColor: primaryColor ?? Theme.of(context).focusColor,
          shadowColor: shadowColor,
          alignment: Alignment.center,
          side: BorderSide(
            color: borderColor ?? Colors.transparent,
            width: 1.0,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              borderRadius ?? 15.0,
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 18.0),
          child: Text(
            buttonText,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: textColor ?? Colors.white,
                  fontSize: textSize,
                  fontWeight: fontWeight,
                ),
          ),
        ),
      ),
    );
  }
}

class CustomMaterialButton extends StatelessWidget {
  final bool twolines;
  final double? height;
  final double? width;
  final void Function()? onPressed;
  final String text;
  final String subText;
  const CustomMaterialButton(
      {this.twolines = true,
      this.text = "",
      required this.subText,
      required this.onPressed,
      this.height,
      this.width});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: width,
      height: height,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18.0),
        side: const BorderSide(
          color: Color(0xffF0F0F0),
          width: 1.0,
        ),
      ),
      padding: const EdgeInsets.all(20.0),
      onPressed: onPressed,
      child: Row(
        children: [
          const Icon(
            Icons.add,
            color: Color(0xff292D32),
          ),
          SizedBox(
            width: (twolines) ? 15.0 : 20.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (twolines)
                Text(text,
                    style: kHeaderStyle.copyWith(
                        fontWeight: FontWeight.w400,
                        fontSize: 10.0,
                        color: Colors.black.withOpacity(0.6))),
              const SizedBox(
                height: 5.0,
              ),
              Text(
                subText,
                style: kHeaderStyle.copyWith(
                  color:
                      twolines ? Colors.black : Colors.black.withOpacity(0.7),
                  fontWeight: twolines ? FontWeight.w500 : FontWeight.w400,
                  fontSize: 12.0,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
