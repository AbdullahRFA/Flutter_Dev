// IMPORTANT: this file must import material.dart
import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String btnName;
  final Icon btnIcon;
  final VoidCallback callBack;
  final TextStyle? textStyle;

  const RoundedButton({
    Key? key,
    required this.btnName,
    required this.btnIcon,
    required this.callBack,
    this.textStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      ),
      onPressed: callBack,
      icon: btnIcon,
      label: Text(btnName, style: textStyle),
    );
  }
}