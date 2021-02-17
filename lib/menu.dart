import 'package:floating_action_button_onclick/files/flutterfour.dart';
import 'package:floating_action_button_onclick/files/flutterone.dart';
import 'package:floating_action_button_onclick/files/flutterthree.dart';
import 'package:floating_action_button_onclick/files/fluttertwo.dart';
import 'package:floating_action_button_onclick/floating.dart';
import 'package:floating_action_button_onclick/main.dart';
import 'package:flutter/material.dart';

class PopUp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return PopupState();
  }
}

class PopupState extends State<PopUp> {
  int _selectedIndex = 0;
  bool _applyWorkaround = false;
  PageController _pageController = PageController();

  List<Widget> _widgetOptions = [
    FlutterOne(),
    FlutterTwo(),
    FlutterThree(),
    FlutterFour(),
  ];

  void _itemselected(int selectedindex) {
    print(selectedindex);
    _pageController.jumpToPage(selectedindex);
  }

  void _onpagechanged(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: _widgetOptions,
        onPageChanged: _onpagechanged,
        physics: NeverScrollableScrollPhysics(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'menu',
        child: PopupMenuButton<int>(
          icon: Icon(Icons.add),
         offset: Offset(0, -220),
          //  + (_applyWorkaround ? -200 * _selectedIndex : 0).toDouble()),
          onSelected: _itemselected,
          initialValue: _selectedIndex,
          // currentIndex: _selectedIndex,
          itemBuilder: (context) => [
            PopupMenuItem(
              value: 0,
              child: Text(
                "Flutter one",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
              ),
            ),
            PopupMenuItem(
              value: 1,
              child: Text(
                "Flutter Two",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
              ),
            ),
            PopupMenuItem(
              value: 2,
              child: Text(
                "Flutter Three",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
              ),
            ),
            PopupMenuItem(
              value: 3,
              child: Text(
                "Flutter Four",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
              ),
            ),
          ],
          //     (result){
          //   // if(result == 0){
          //   //   Navigator.of(context).push(
          //   //     MaterialPageRoute(builder: (context) => FloatButton()),
          //   //   );
          //   // }
          // },
          // color: Colors.blue,
          // selectedItemColor: Colors.pinkAccent,
          // currentIndex: _selectedIndex,
        ),
      ),
    );
  }
}
