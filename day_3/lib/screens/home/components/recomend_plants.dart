import 'package:day_3/screens/details/details_screen.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class RecomendsPlants extends StatelessWidget {
  const RecomendsPlants({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecomenPlantCard(
            image: "assets/images/image_1.png",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DetailsScreen(),
                ),
              );
            },
            title: "Samantha",
            country: "Russia",
            price: 440,
          ),
          RecomenPlantCard(
            image: "assets/images/image_2.png",
            press: () {},
            title: "Angelica",
            country: "Russia",
            price: 440,
          ),
          RecomenPlantCard(
            image: "assets/images/image_3.png",
            press: () {},
            title: "Samantha",
            country: "Russia",
            price: 440,
          ),
        ],
      ),
    );
  }
}

class RecomenPlantCard extends StatelessWidget {
  const RecomenPlantCard({
    Key? key,
    required this.image,
    required this.title,
    required this.country,
    required this.price,
    required this.press,
  }) : super(key: key);
  final String image, title, country;
  final int price;
  final Function() press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(
        left: kDefaultpadding,
        top: kDefaultpadding / 2,
        bottom: kDefaultpadding * 2,
      ),
      width: size.width * 0.4,
      child: Column(
        children: <Widget>[
          Image.asset(image),
          GestureDetector(
            onTap: press,
            child: Container(
              padding: const EdgeInsets.all(kDefaultpadding / 2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.23),
                  )
                ],
              ),
              child: Row(
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "$title\n".toUpperCase(),
                          style: Theme.of(context).textTheme.button,
                        ),
                        TextSpan(
                          text: country.toUpperCase(),
                          style: TextStyle(
                            color: kPrimaryColor.withOpacity(0.5),
                          ),
                        )
                      ],
                    ),
                  ),
                  const Spacer(),
                  Text(
                    '\$ $price',
                    style: Theme.of(context)
                        .textTheme
                        .button!
                        .copyWith(color: kPrimaryColor),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
