// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:day_3/constants.dart';
import 'package:day_3/screens/home/components/featured_plants.dart';
import 'package:day_3/screens/home/components/header_with_searchbox.dart';
import 'package:day_3/screens/home/components/recomend_plants.dart';
import 'package:day_3/screens/home/components/title_with_more_btn.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(title: "Recomended", press: () {}),
          RecomendsPlants(),
          TitleWithMoreBtn(title: "Featured Plants", press: () {}),
          FeaturedPlants(),
          SizedBox(
            height: kDefaultpadding,
          )
        ],
      ),
    );
  }
}
