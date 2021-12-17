import 'package:flutter/material.dart';

import '../../../constants.dart';

class BottomBtn extends StatelessWidget {
  const BottomBtn({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        SizedBox(
          width: size.width / 2,
          height: 84,
          child: ElevatedButton(
            onPressed: () {},
            child: const Text(
              "Buy Now",
              style: TextStyle(fontSize: 20),
            ),
            style: ElevatedButton.styleFrom(
              primary: kPrimaryColor,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              primary: Colors.transparent,
            ),
            child: const Text("Description"),
          ),
        ),
      ],
    );
  }
}
