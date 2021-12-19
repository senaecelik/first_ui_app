import 'package:first_ui_app/screen/add_view.dart';
import 'package:first_ui_app/screen/profile_view.dart';
import 'package:flutter/material.dart';
import 'head_component.dart';

class NavigationBarPage extends StatefulWidget {
  const NavigationBarPage({Key? key}) : super(key: key);

  @override
  _NavigationBarPageState createState() => _NavigationBarPageState();
}

class _NavigationBarPageState extends State<NavigationBarPage> {
  int tabselected = 0;
  final pages = [
    const HeadComponent(),
    const AddPage(),
    const ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return buildNavigationBarTheme(context);
  }

  Scaffold buildNavigationBarTheme(BuildContext context) {
    return Scaffold(
      body: Container(
        child: pages[tabselected],
      ),
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          labelTextStyle: MaterialStateProperty.all(
            Theme.of(context)
                .textTheme
                .bodyText1!
                .copyWith(fontWeight: FontWeight.w400),
          ),
        ),
        child: buildNavigationBar(),
      ),
    );
  }

  NavigationBar buildNavigationBar() {
    return NavigationBar(
      height: 60,
      selectedIndex: 0,
      labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
      animationDuration: const Duration(seconds: 2),
      onDestinationSelected: (index) {
        setState(() {
          tabselected = index;
        });
      },
      backgroundColor: Colors.white,
      destinations: const [
        NavigationDestination(
          icon: Icon(Icons.home),
          label: "Home",
        ),
        NavigationDestination(
            icon: Icon(Icons.add_circle_outlined), label: "Add"),
        NavigationDestination(
            icon: Icon(Icons.account_circle_rounded), label: "Profile")
      ],
    );
  }
}
