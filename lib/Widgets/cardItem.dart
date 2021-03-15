import 'package:flutter/material.dart';

class cardItem extends StatelessWidget {
  final String name;
  final String number;
  final String imagepath;
  cardItem({this.name, this.number, this.imagepath});
  @override
  Widget build(BuildContext context) {
    List<String> fullname = name.split(" ");
    String firstname = fullname[0];
    return Padding(
      padding:
          const EdgeInsets.only(top: 30.0, left: 20, right: 20, bottom: 20.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white.withOpacity(0.2)),
        width: double.infinity,
        height: 90,
        child: Stack(children: [
          Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 70, right: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name,
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold)),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(number,
                            style: TextStyle(
                                color: Colors.white.withOpacity(0.5),
                                fontWeight: FontWeight.bold)),
                        Text("\$$firstname",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold))
                      ]),
                )
              ],
            ),
          ),
          Positioned(
              top: 23,
              left: 20,
              child: CircleAvatar(
                backgroundImage: AssetImage(imagepath),
              ))
        ]),
      ),
    );
  }
}
