import 'package:first_ui_app/constant/border_constant.dart';

import 'package:first_ui_app/constant/height_constant.dart';
import 'package:first_ui_app/constant/padding_constant.dart';
import 'package:flutter/material.dart';

class PromoCompanent extends StatelessWidget {
  const PromoCompanent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: PaddingConstant.instance.paddingNormal,
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            buildHead(context),
            SizedBox(
              height: HeightConstant.instance.heightSmall,
            ),
            SizedBox(
              height: HeightConstant.instance.heightBig,
              child: buildPromoCardListView(),
            ),
            SizedBox(
              height: HeightConstant.instance.heightNormal,
            ),
            bestImageCard(context),
          ]),
    );
  }

  Text buildHead(BuildContext context) {
    return Text(
      "Promo Today",
      style: Theme.of(context)
          .textTheme
          .headline6!
          .copyWith(color: Colors.black)
          .copyWith(
            fontWeight: FontWeight.bold,
          ),
    );
  }

  Widget promoCard(image) {
    return AspectRatio(
      aspectRatio: 2.63 / 3,
      child: Container(
        margin: PaddingConstant.instance.marginRight,
        decoration: BoxDecoration(
          borderRadius: BorderRadiusConstant.instance.borderRadiusNormal,
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(image),
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadiusConstant.instance.borderRadiusNormal,
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              stops: const [0.2, 0.9],
              colors: [
                Colors.black.withOpacity(.8),
                Colors.black.withOpacity(.1),
              ],
            ),
          ),
        ),
      ),
    );
  }

  ListView buildPromoCardListView() {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        promoCard('assets/images/two.jpeg'),
        promoCard('assets/images/three.jpeg'),
        promoCard('assets/images/four.jpeg'),
        promoCard('assets/images/one.jpg'),
      ],
    );
  }

  SizedBox bestImageCard(BuildContext context) {
    return SizedBox(
      height: HeightConstant.instance.heightBig,
      child: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Container(
            height: HeightConstant.instance.heightBig,
            decoration: BoxDecoration(
              borderRadius: BorderRadiusConstant.instance.borderRadiusNormal,
              // ignore: prefer_const_constructors
              image: DecorationImage(
                fit: BoxFit.cover,
                image: const AssetImage('assets/images/one.jpg'),
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadiusConstant.instance.borderRadiusNormal,
                gradient: LinearGradient(
                  begin: Alignment.bottomRight,
                  stops: const [0.3, 0.9],
                  colors: [
                    Colors.black.withOpacity(.8),
                    Colors.black.withOpacity(.2),
                  ],
                ),
              ),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Best Design",
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .copyWith(color: Colors.white)
                          .copyWith(fontWeight: FontWeight.bold)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
