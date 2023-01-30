import 'package:calculator/widget_styles/text_styles/utils.dart';
import 'package:flutter/material.dart';

class TextStyles{

  static const String ubuntu = "Ubuntu";

  static const boldLarge = TextStyle(
    fontFamily: ubuntu,
    fontSize: 40.0,
    fontWeight: FontWeight.w800,
    color: Colors.black87
  );

  static final hintBoldLarge = extend(boldLarge, const TextStyle(
    color: Colors.grey
  ));

  static const semiBoldMedium = TextStyle(
    fontFamily: ubuntu,
    fontSize: 32.0,
    fontWeight: FontWeight.w200,
    color: Colors.black87
  );

}