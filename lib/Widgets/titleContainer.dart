import 'package:flutter/material.dart';

class titleContainer extends StatelessWidget {
  final String title;
  titleContainer({this.title});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 18.0),
      child: Container(
          width: double.infinity,
          height: 36,
          color: Colors.white24.withOpacity(0.1),
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 8.0, left: 30),
            child: Text(title,
                style: TextStyle(color: Colors.white, fontSize: 17)),
          )),
    );
  }
}
