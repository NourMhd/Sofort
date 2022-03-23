import 'package:flutter/material.dart';
import 'package:sofort/colors/const.dart';
import 'package:sofort/ui/menu/menuWidgets.dart';
import 'package:sofort/ui/mylist/myListWidgets/myList_widget.dart';
import 'package:sofort/ui/search/widgets/search_widget.dart';

class Searchpage extends StatefulWidget {
  const Searchpage({Key? key}) : super(key: key);
  @override
  State<Searchpage> createState() => _SearchpageState();
}

class _SearchpageState extends State<Searchpage> {
  int _selectedIndex = 0;

  static  final List<Widget> _widgetOptions = <Widget>[
   const Searchwidget(),
    const MyListwidget(),
    const MenuWidget(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundcolor,
      body: Container(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.deepOrange,
        selectedItemColor: backgroundcolor,
        unselectedItemColor: Colors.white,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Suchen',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.file_copy),
            label: 'Jetzt Loslegen',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'Speisekarte',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
