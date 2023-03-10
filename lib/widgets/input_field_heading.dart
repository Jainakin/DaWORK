import 'package:flutter/material.dart';

class InputFieldHeading extends StatelessWidget {
  const InputFieldHeading({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      margin: const EdgeInsets.only(top: 20.0, bottom: 10.0),
      child: Text(
        text,
        style: Theme.of(context).textTheme.bodySmall!.copyWith(
              fontSize: 13.0,
              color: Theme.of(context).hintColor,
            ),
      ),
    );
  }
}
