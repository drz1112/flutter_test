import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            // color: Colors.blueAccent,
            shape: BoxShape.circle,
            border: Border.all(
              color: Colors.black,
            ),
          ),
          child: const Text('hello'),
        ),
      ),
    );
  }
}
