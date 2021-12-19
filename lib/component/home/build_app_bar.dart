import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

AppBar buildAppBar() {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    leading: IconButton(
      icon: const Icon(Icons.menu, color: Colors.black87),
      onPressed: () {},
    ),
    systemOverlayStyle: SystemUiOverlayStyle.dark,
  );
}
