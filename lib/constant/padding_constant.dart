import 'package:flutter/material.dart';

class PaddingConstant {
  static PaddingConstant instance = PaddingConstant._init();

  PaddingConstant._init();

  final paddingNormal = const EdgeInsets.all(20);
  final paddingSmall = const EdgeInsets.all(5);
  final marginRight = const EdgeInsets.only(right: 15.0);
}
