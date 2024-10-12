import 'package:app_commmerce/Pages/NewsScreen.dart';
import 'package:flutter/material.dart';
import 'package:app_commmerce/Pages/HomeScreen.dart';
import 'package:app_commmerce/Pages/ProductScreen.dart';
import 'package:app_commmerce/Pages/ProfileScreen.dart';

class MainMenu extends StatefulWidget {
  final int index;

  MainMenu (this.index);

  @override
  MainMenuState createState() =>MainMenuState();
}

class MainMenuState extends State<MainMenu> with TickerProviderStateMixin {
  int selectedIndex = 0;

  List<Widget> pages = [HomeScreen(),ProductScreen(), NewsScreen(),ProfileScreen()];

  @override
    void initState() {
      super.initState();

      if(widget.index !=0) {
        selectedIndex = widget.index;
      }
    }

  @override
    Widget build(BuildContext context) {
      return SafeArea(
      child: Scaffold(
        body: pages[selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState((){
              selectedIndex = index;
            });
        },
        elevation: 10,
        backgroundColor: Colors.white,
        currentIndex: selectedIndex,
        selectedItemColor: Colors.deepOrange,
        unselectedItemColor: const Color.fromARGB(255, 255, 115, 0),
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.w500),
        selectedFontSize: 14.0,
        unselectedFontSize: 14.0,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
            Icons.home,
            size: 25.0,
            color: Colors.grey,
            ),
            label: "Home",
            activeIcon: Icon(
              Icons.home,
            size: 25.0,
            color: Colors.deepOrange
            ),
            
          ),
          BottomNavigationBarItem(
            icon: Icon(
            Icons.all_inbox,
            size: 25.0,
            color: Colors.grey,
            ),
            label: "Product",
            activeIcon: Icon(
              Icons.all_inbox,
            size: 25.0,
            color: Colors.deepOrange
            ),
          ),

          BottomNavigationBarItem(
            icon: Icon(
            Icons.newspaper_rounded,
            size: 25.0,
            color: Colors.grey,
            ),
            label: "News",
            activeIcon: Icon(
              Icons.all_inbox,
            size: 25.0,
            color: Colors.deepOrange
            ),
          ),

          BottomNavigationBarItem(
            icon: Icon(
            Icons.account_circle,
            size: 25.0,
            color: Colors.grey,
            ),
            label: "Profile",
            activeIcon: Icon(
              Icons.account_circle,
            size: 25.0,
            color: Colors.deepOrange
            ),
          ),
        ],
        ),
        ),
        );
    }
}