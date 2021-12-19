import 'package:first_ui_app/component/home/buil_navigation_bar.dart';
import 'package:first_ui_app/component/home/build_app_bar.dart';
import 'package:flutter/material.dart';
import '../constant/color_constant.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorConstant.instance.backgroundColor,
        appBar: buildAppBar(),
        body: const NavigationBarPage());
  }
}
