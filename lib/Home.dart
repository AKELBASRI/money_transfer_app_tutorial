import 'package:flutter/material.dart';
import 'package:money_transfer_app_tutorial/constants/Constants.dart';
import 'package:money_transfer_app_tutorial/Widgets/MoneyWidget.Dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 2;
  final _selectedItemColor = Colors.white;
  final _unselectedItemColor = Colors.white30;
  final _selectedBgColor = BoxDecoration(
      border: Border(top: BorderSide(color: Colors.white, width: 4.0)),
      gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            KprimaryColor.withOpacity(0.6),
            Colors.transparent,
          ]));
  final _unselectedBgColor = BoxDecoration(
      gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomLeft,
          colors: [
        Colors.transparent,
        Colors.transparent,
      ]));
  static List<Widget> _widgetOptions = <Widget>[
    Text("Index:0 Home"),
    Text("Index 1 : "),
    MoneyWidget(),
    Text("Index 3"),
    Text("Index 4 ")
  ];
  Widget _buildIcon(IconData iconData, int index) => Container(
        width: 77,
        height: 75,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 13.0),
          child: Container(
            decoration: _getBgColor(index),
            child: InkWell(
              child: Icon(iconData),
              onTap: () => _onItemTapped(index),
            ),
          ),
        ),
      );
  BoxDecoration _getBgColor(int index) =>
      _selectedIndex == index ? _selectedBgColor : _unselectedBgColor;
  Color _getItemColor(int index) =>
      _selectedIndex == index ? _selectedItemColor : _unselectedItemColor;
  @override
  Widget build(BuildContext context) {
    double width;
    double height;
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Scaffold(
      extendBody: true,
      body: Stack(
        children: [
          Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [KbackgroundColor1, KbackgroundColor2])),
          ),
          Center(child: _widgetOptions.elementAt(_selectedIndex))
        ],
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
        child: BottomNavigationBar(
            showSelectedLabels: false,
            elevation: 0,
            showUnselectedLabels: false,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: _buildIcon(Icons.home, 0), label: ''),
              BottomNavigationBarItem(
                  icon: _buildIcon(Icons.picture_in_picture_alt_rounded, 1),
                  label: ''),
              BottomNavigationBarItem(
                  icon: _buildIcon(Icons.attach_money, 2), label: ''),
              BottomNavigationBarItem(
                  icon: _buildIcon(Icons.signal_cellular_alt_outlined, 3),
                  label: ''),
              BottomNavigationBarItem(
                  icon: _buildIcon(Icons.access_time_outlined, 4), label: ''),
            ]),
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
