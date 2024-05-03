import 'package:belle_house_mobile_app/pages/home/main_property_page.dart';
import 'package:belle_house_mobile_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  List pages = [
    MainPropertyPage(),
    Container(
      color: Colors.blue,
      child: Center(
        child: Text('page 1'),
      ),
    ),
    Container(
      color: Colors.cyan,
      child: Center(
        child: Text('page 2'),
      ),
    ),
  ];
  //changing the screen on tapping
  void onTapNav(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: pages[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: AppColors.primaryColor,
            selectedItemColor: AppColors.secondaryColor,
            onTap: onTapNav,
            currentIndex: currentIndex,
            unselectedItemColor: Color.fromARGB(190, 233, 231, 231),
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Accueil',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite),
                label: 'Important',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
              ),
            ]));
  }
}
