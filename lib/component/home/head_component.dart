import 'package:first_ui_app/component/home/promo_component.dart';
import 'package:first_ui_app/component/home/search_component.dart';
import 'package:first_ui_app/constant/border_constant.dart';
import 'package:first_ui_app/constant/height_constant.dart';
import 'package:first_ui_app/constant/padding_constant.dart';
import 'package:flutter/material.dart';

class HeadComponent extends StatefulWidget {
  const HeadComponent({Key? key}) : super(key: key);

  @override
  _HeadComponentState createState() => _HeadComponentState();
}

class _HeadComponentState extends State<HeadComponent> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        //Head,subhead and search component
        buildTextContainer(context),

        /// promocoard component
        const PromoCompanent(),
      ],
    ));
  }

  Container buildTextContainer(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadiusConstant.instance.borderRadiusVertical),
      padding: PaddingConstant.instance.paddingNormal,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          //"Find your"
          buildHeadText(context),
          SizedBox(height: HeightConstant.instance.heightNormal),
          //"Inspritation"
          buildSubText(context),
          SizedBox(height: HeightConstant.instance.heightNormal),
          //Search Component
          const SearchComponent(),
          SizedBox(height: HeightConstant.instance.heightSmall),
        ],
      ),
    );
  }
}

//Head text
Text buildHeadText(BuildContext context) {
  return Text(
    "Find Your",
    style:
        Theme.of(context).textTheme.headline6!.copyWith(color: Colors.black87),
  );
}

//Sub text
Text buildSubText(BuildContext context) {
  return Text(
    "Inspiration",
    style: Theme.of(context).textTheme.headline4!.copyWith(color: Colors.black),
  );
}
