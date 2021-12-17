import 'package:day_3/constants.dart';
import 'package:day_3/screens/details/components/bottom_btn.dart';
// import 'package:day_3/screens/details/components/icon_card.dart';
import 'package:day_3/screens/details/components/image_and_icon.dart';
import 'package:day_3/screens/details/components/title_and_price.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          ImageAndIcons(size: size),
          const TitleAndPrice(title: "Angelica", country: "Russia", price: 440),
          const SizedBox(
            height: kDefaultpadding,
          ),
          BottomBtn(size: size),
          // const SizedBox(height: kDefaultpadding * 2)
        ],
      ),
    );
  }
}
