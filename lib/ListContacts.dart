import 'package:flutter/material.dart';

import 'package:money_transfer_app_tutorial/Widgets/CustomAppbar.dart';
import 'package:money_transfer_app_tutorial/Widgets/cardItem.dart';
import 'package:money_transfer_app_tutorial/Widgets/titleContainer.dart';
import 'Constants/Constants.Dart';
import 'package:money_transfer_app_tutorial/Widgets/cardWidget.dart';

class ListContacts extends StatefulWidget {
  final String bouttonTitle;
  final String price;
  ListContacts({this.bouttonTitle, this.price});
  @override
  _ListContactsState createState() => _ListContactsState();
}

class _ListContactsState extends State<ListContacts>
    with TickerProviderStateMixin {
  AnimationController _ColorAnimationController;
  AnimationController _TextAnimationController;
  Animation _colorTween;

  // Animation<Offset> _transTween;
  @override
  void initState() {
    _ColorAnimationController =
        AnimationController(vsync: this, duration: Duration(seconds: 0));
    _colorTween = ColorTween(begin: Colors.transparent, end: KbackgroundColor1)
        .animate(_ColorAnimationController);

    _TextAnimationController =
        AnimationController(vsync: this, duration: Duration(seconds: 0));

    super.initState();
  }

  bool _scrollListener(ScrollNotification scrollInfo) {
    if (scrollInfo.metrics.axis == Axis.vertical) {
      _ColorAnimationController.animateTo(scrollInfo.metrics.pixels / 1);

      _TextAnimationController.animateTo(
          (scrollInfo.metrics.pixels - 350) / 50);
      return true;
    }
  }

  @override
  Widget build(BuildContext context) {
    double width;
    double height;
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: customAppbar(
              price: widget.price, buttontitle: widget.bouttonTitle)),
      body: NotificationListener<ScrollNotification>(
        onNotification: _scrollListener,
        child: Stack(children: [
          Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomLeft,
                    colors: [
                  KbackgroundColor1,
                  KbackgroundColor2,
                ])),
          ),
          ListView(children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(19.0),
                  child: cardWidget(),
                ),
                titleContainer(
                  title: "Disarankan",
                ),
                cardItem(
                  name: "Cherry Boom",
                  number: "0451 887 969",
                  imagepath: "assets/avatar.jpg",
                ),
                titleContainer(
                  title: "Disarankan",
                ),
                cardItem(
                  name: "Cherry Boom",
                  number: "0451 887 969",
                  imagepath: "assets/avatar.jpg",
                ),
                cardItem(
                  name: "Cherry Boom",
                  number: "0451 887 969",
                  imagepath: "assets/avatar.jpg",
                ),
                cardItem(
                  name: "Cherry Boom",
                  number: "0451 887 969",
                  imagepath: "assets/avatar.jpg",
                ),
                cardItem(
                  name: "Cherry Boom",
                  number: "0451 887 969",
                  imagepath: "assets/avatar.jpg",
                ),
                cardItem(
                  name: "Cherry Boom",
                  number: "0451 887 969",
                  imagepath: "assets/avatar.jpg",
                ),
                cardItem(
                  name: "Cherry Boom",
                  number: "0451 887 969",
                  imagepath: "assets/avatar.jpg",
                ),
              ],
            )
          ]),
          Container(
            height: 80,
            child: AnimatedBuilder(
              animation: _ColorAnimationController,
              builder: (context, child) => AppBar(
                backgroundColor: _colorTween.value,
                elevation: 0,
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
