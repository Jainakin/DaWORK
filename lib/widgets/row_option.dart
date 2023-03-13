import 'package:flutter/material.dart';

// ignore: must_be_immutable
class RowOption extends StatelessWidget {
  RowOption({Key? key, required this.text, this.textColor = Colors.black, required this.icon, required this.onTap}) : super(key: key);
  final String text;
  late Color textColor;
  final IconData icon;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: GestureDetector(
        onTap: onTap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Theme.of(context).focusColor.withOpacity(0.25),
              ),
              child: Icon(
                icon,
                color: Theme.of(context).focusColor,
                size: 20,
              ),
            ),
            const SizedBox(
              width: 10.0,
            ),
            Text(
              text,
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    fontSize: 16.0,
                    color: textColor,
                  ),
            ),
            const Spacer(),
            Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey[200],
              ),
              child: const Icon(
                Icons.chevron_right_rounded,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
