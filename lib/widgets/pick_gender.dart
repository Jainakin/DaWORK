import 'package:flutter/material.dart';

class PickGender extends StatelessWidget {
  final String gender;
  final String value;
  final String text;
  final double width;
  final void Function(String?)? onChanged;
  const PickGender({
    Key? key,
    required this.onChanged,
    required this.gender,
    required this.value,
    required this.text,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: 50.0,
      child: ListTile(
        contentPadding: const EdgeInsets.only(left: 0.0, top: 10.0),
        horizontalTitleGap: -7.0,
        minVerticalPadding: 0.0,
        minLeadingWidth: 0.0,
        title: Text(
          text,
          softWrap: true,
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
        leading: Radio(
          value: value,
          groupValue: gender,
          onChanged: onChanged,
        ),
      ),
    );
  }
}
