// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';

import '../../../constants.dart';

class TitleWithMoreBtn extends StatelessWidget {
  const TitleWithMoreBtn({
    Key? key,
    required this.title,
    required this.press,
  }) : super(key: key);
  final String title;
  final Function() press;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultpadding),
      child: Row(
        children: <Widget>[
          TitleWithCustomUnderLine(text: title),
          Spacer(),
          ElevatedButton(
            onPressed: press,
            child: Text("More"),
            style: ElevatedButton.styleFrom(
                primary: kPrimaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                )),
          )
        ],
      ),
    );
  }
}

class TitleWithCustomUnderLine extends StatelessWidget {
  const TitleWithCustomUnderLine({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: kDefaultpadding / 4),
            child: Text(
              "Recomendad",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              margin: EdgeInsets.only(right: kDefaultpadding / 4),
              height: 7,
              color: kPrimaryColor.withOpacity(0.2),
            ),
          )
        ],
      ),
    );
  }
}
