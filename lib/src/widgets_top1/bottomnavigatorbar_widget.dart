import 'package:flutter/material.dart';

import 'navegation_bar/page_navegator1.dart';
import 'navegation_bar/page_navegator2.dart';
import 'navegation_bar/page_navegator3.dart';
import 'navegation_bar/page_navegator4.dart';

class BottomNavigatorBarWidget extends StatefulWidget {
  const BottomNavigatorBarWidget({super.key});

  @override
  State<BottomNavigatorBarWidget> createState() => _BottomNavigatorBarWidgetState();
}

class _BottomNavigatorBarWidgetState extends State<BottomNavigatorBarWidget> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Navegator Bar'),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: index,
          onTap: (value) {
            setState(() {
              index = value;
            });
          },
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Colors.red,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'Busib',
              backgroundColor: Colors.green,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: 'School',
              backgroundColor: Colors.purple,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Sett',
              backgroundColor: Colors.pink,
            ),
          ],
        ),
        body: IndexedStack(
          index: index,
          children: const <Widget>[
   
            NavegatorBarPage1(),
            NavegatorBarPage2(),
            NavegatorBarPage3(),
            NavegatorBarPage4(),
          ],
        ));
  }
}
