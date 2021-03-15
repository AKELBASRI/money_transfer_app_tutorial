import 'package:flutter/material.dart';
import 'package:money_transfer_app_tutorial/Widgets/ButtonCash.dart';

class customAppbar extends StatelessWidget {
  final price;
  final buttontitle;
  customAppbar({this.price, this.buttontitle});
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      leading: IconButton(
          icon: Icon(Icons.arrow_back),
          iconSize: 30,
          onPressed: () => {Navigator.pop(context)}),
      title: Row(children: [
        Text(
          "Rp.",
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Text(
          price,
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ]),
      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 2, bottom: 8.0),
          child: ButtonCash(title: buttontitle, isicon: false),
        ),
      ],
    );
  }
}
