import 'package:belle_house_mobile_app/pages/home/navigation_menu.dart';
import 'package:belle_house_mobile_app/utils/colors.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  List pages = [
    const NaviMenu(),
    Container(
      color: Colors.blue,
      child: const Center(
        child: Text('page 1'),
      ),
    ),
    Container(
      color: Colors.cyan,
      child: const Center(
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
      backgroundColor: AppColors.backgroundColor,
      body: pages[currentIndex],
      bottomNavigationBar: Container(
        height: 65,
        decoration: const BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(14),
            topRight: Radius.circular(14),
          ),
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(14),
            topRight: Radius.circular(14),
          ),
          child: BottomNavigationBar(
            backgroundColor: AppColors.primaryColor,
            selectedItemColor: AppColors.secondaryColor,
            onTap: onTapNav,
            currentIndex: currentIndex,
            type: BottomNavigationBarType.fixed,
            unselectedItemColor: const Color.fromARGB(190, 233, 231, 231),
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
            ],
          ),
        ),
      ),
    );
  }
}
