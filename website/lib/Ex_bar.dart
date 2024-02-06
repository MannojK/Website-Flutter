import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:fluentui_icons/fluentui_icons.dart';

class bar extends StatefulWidget {
  const bar({super.key});

  @override
  State<bar> createState() => _barState();
}

class _barState extends State<bar> {
  int _selectedIndex = 0;
  static final List<Widget> _WidgetOptions = <Widget>[
    const Text('home'),
    const Text('search'),
    const Text('Image'),
    const Text('Profile'),
  ];
  void _onTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: _WidgetOptions[_selectedIndex]
        ),
        bottomNavigationBar: BottomNavigationBar(
            elevation: 20,
            currentIndex: _selectedIndex,
            onTap: _onTapped,
            backgroundColor: Colors.amber,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            selectedItemColor: Colors.blueGrey,
            unselectedItemColor: Colors.blueGrey,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
                label: 'home',
              ),
              BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
                label: 'search',
              ),
              BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_image_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_image_filled),
                label: 'Image',
              ),
              BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),
                label: 'profile',
              ),
            ]),
      ),
    );
  }
}
