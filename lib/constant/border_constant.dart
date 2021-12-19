import 'package:flutter/material.dart';

class BorderRadiusConstant {
  static BorderRadiusConstant instance = BorderRadiusConstant._init();
  BorderRadiusConstant._init();

  final borderRadiusNormal = BorderRadius.circular(20);
  final borderRadiusVertical =
      const BorderRadius.vertical(bottom: Radius.circular(30));
}
