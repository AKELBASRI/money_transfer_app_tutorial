import 'package:flutter/material.dart';

class NumPad extends StatefulWidget {
  final Function ontap;
  final Function ondelete;
  NumPad({this.ontap, this.ondelete});
  @override
  _NumPadState createState() => _NumPadState();
}

class _NumPadState extends State<NumPad> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: width,
          height: height / 2.2,
          child: Padding(
            padding: const EdgeInsets.only(
                top: 50.0, left: 45, right: 45, bottom: 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Number("1", widget.ontap),
                      Number("2", widget.ontap),
                      Number("3", widget.ontap)
                    ]),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Number("4", widget.ontap),
                      Number("5", widget.ontap),
                      Number("6", widget.ontap)
                    ]),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Number("7", widget.ontap),
                      Number("8", widget.ontap),
                      Number("9", widget.ontap)
                    ]),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Number(".", widget.ontap),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Number("0", widget.ontap),
                      ),
                      Delete(Icons.arrow_back_ios_outlined, widget.ondelete)
                    ]),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class Delete extends StatelessWidget {
  final IconData icon;
  final Function ondelete;
  Delete(this.icon, this.ondelete);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: new Icon(
        this.icon,
        color: Colors.white,
        size: 20,
      ),
      onTap: () => {ondelete()},
    );
  }
}

class Number extends StatelessWidget {
  final String number;
  final Function ontap;
  Number(this.number, this.ontap);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Text(
        this.number,
        style: TextStyle(
            color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
      ),
      onTap: () => {ontap(number)},
    );
  }
}
