import 'package:flutter/material.dart';

const TextStyle mTextStyle = TextStyle(
  fontStyle: FontStyle.italic,
  fontSize: 30,
);

const TextStyle mTextStyleBold = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.bold,
  color: Colors.deepPurple
);

TextStyle dynamicTextColor({Color TextColor = Colors.blue, FontWeight fontWeight = FontWeight.bold}){
  return TextStyle(
    color: TextColor,
    fontWeight: fontWeight,

  );

}