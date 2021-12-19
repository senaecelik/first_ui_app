import 'package:first_ui_app/constant/border_constant.dart';
import 'package:first_ui_app/constant/color_constant.dart';
import 'package:first_ui_app/constant/padding_constant.dart';
import 'package:flutter/material.dart';

class SearchComponent extends StatefulWidget {
  const SearchComponent({Key? key}) : super(key: key);

  @override
  _SearchComponentState createState() => _SearchComponentState();
}

class _SearchComponentState extends State<SearchComponent> {
  @override
  Widget build(BuildContext context) {
    return buildSearchContainer(context);
  }
}

Container buildSearchContainer(BuildContext context) {
  return Container(
    padding: PaddingConstant.instance.paddingSmall,
    decoration: BoxDecoration(
      color: ColorConstant.instance.backgroundColor,
      borderRadius: BorderRadiusConstant.instance.borderRadiusNormal,
    ),
    child: buildSearchTextField(context),
  );
}

TextField buildSearchTextField(BuildContext context) {
  return TextField(
    decoration: InputDecoration(
        border: InputBorder.none,
        prefixIcon: const Icon(
          Icons.search,
          color: Colors.black87,
        ),
        hintText: "Search you're looking for",
        hintStyle: Theme.of(context)
            .textTheme
            .headline6!
            .copyWith(color: Colors.grey)),
  );
}
