import 'package:flutter/material.dart';
import 'package:money_transfer_app_tutorial/Widgets/NumPad.Dart';
import 'package:money_transfer_app_tutorial/Widgets/ButtonCash.Dart';

class MoneyWidget extends StatefulWidget {
  String _expression = "";
  @override
  _MoneyWidgetState createState() => _MoneyWidgetState();
}

class _MoneyWidgetState extends State<MoneyWidget> {
  @override
  Widget build(BuildContext context) {
    void onTap(String text) {
      setState(() {
        widget._expression += text;
      });
    }

    void onDelete() {
      try {
        String expression = widget._expression;
        if (expression.length > 0) {
          List<String> newexpression = expression.split("");
          newexpression.removeLast();

          setState(() {
            widget._expression = newexpression.join();
          });
        }
      } catch (e) {
        print(e);
      }
    }

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 50.0, left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.center_focus_weak, color: Colors.white),
              CircleAvatar(
                backgroundImage: AssetImage('assets/avatar.jpg'),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 50.0, left: 20, right: 20),
          child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.white),
              width: double.infinity,
              height: 90,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                    child: Text(
                      'Rp',
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Text(widget._expression,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 50))
                ],
              )),
        ),
        NumPad(
          ontap: onTap,
          ondelete: onDelete,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 18.0, right: 18.0, top: 18.5),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            ButtonCash(title: "Minta", isicon: true, price: widget._expression),
            ButtonCash(
              title: "Kirim",
              isicon: true,
              price: widget._expression,
            )
          ]),
        ),
      ],
    );
  }
}
