import 'package:flutter/material.dart';

Container cardWidget() {
  return Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20), color: Colors.white),
    width: double.infinity,
    height: 230,
    child: Padding(
      padding: const EdgeInsets.only(top: 25.0, left: 20, right: 20),
      child: Stack(children: [
        Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Text(
                "Kepada",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            Row(children: [
              SizedBox(width: 50),
              Text(
                "Addison Larson",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Spacer()
            ]),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 50.0),
                      child: Text("0451 887 969",
                          style: TextStyle(color: Colors.grey[500])),
                    ),
                    Text("\$addison",
                        style: TextStyle(fontWeight: FontWeight.bold))
                  ]),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                "Catalan",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                "Bayar spotify",
                style: TextStyle(fontSize: 18, color: Colors.grey[500]),
              ),
            ),
          ],
        ),
        Positioned(
            top: 45,
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/avatar.jpg'),
            ))
      ]),
    ),
  );
}
