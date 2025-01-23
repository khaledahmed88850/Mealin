import 'package:flutter/material.dart';
import 'package:mealin/core/utils/assets.dart';

abstract class Styles {
  static const textStyle18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w400,
  );
  static const textStyle20 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w800,
  );
  static var textStyle26 = TextStyle(
    fontFamily: AssetsData.fontEdu,
    color: Colors.black,
    fontWeight: FontWeight.bold,
    fontSize: 26,
  );
  static const textStyle30 = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.normal,
  );
  static const textStyle16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );
  static const textStyle14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
  );
}
