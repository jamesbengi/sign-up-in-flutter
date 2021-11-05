import 'package:flutter/material.dart';

class GymIt extends StatelessWidget {
  const GymIt({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child:Column(
          children: <Widget>[
            Image(image: AssetImage("assets/nike.jpg"),
            fit: BoxFit.cover,
            )
          ],
        )
      ),
    );
  }
}