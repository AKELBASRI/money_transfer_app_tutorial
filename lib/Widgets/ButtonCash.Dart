import 'package:flutter/material.dart';
import 'package:money_transfer_app_tutorial/ListContacts.dart';

class ButtonCash extends StatelessWidget {
  final String title;
  final bool isicon;
  final String price;
  ButtonCash({this.title, this.isicon, this.price});

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
        child: Padding(
          padding: !isicon
              ? const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 12, bottom: 12)
              : (const EdgeInsets.all(19)),
          child: Container(
            width: isicon ? 75 : 60,
            child: Row(
              mainAxisAlignment: isicon
                  ? MainAxisAlignment.spaceBetween
                  : MainAxisAlignment.center,
              children: [
                Text(title,
                    style: TextStyle(color: Colors.white, fontSize: 17)),
                isicon
                    ? Icon(
                        Icons.card_membership_outlined,
                        color: Colors.white,
                      )
                    : SizedBox.shrink()
              ],
            ),
          ),
        ),
        color: Color(0xFF321a7e),
        shape: RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(30.0)),
        onPressed: () => {
              isicon
                  ? Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ListContacts(
                                bouttonTitle: title,
                                price: price,
                              )))
                  : null,
            });
  }
}
