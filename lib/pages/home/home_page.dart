import 'package:belle_house_mobile_app/pages/home/navigation_menu.dart';
import 'package:belle_house_mobile_app/pages/others/profile.dart';
import 'package:belle_house_mobile_app/utils/colors.dart';
import 'package:belle_house_mobile_app/utils/dimensions.dart';
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
      color: Colors.cyan,
      child: const Center(
        child: Text('page 2'),
      ),
    ),
    const Profile(),
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
            items: [
              BottomNavigationBarItem(
                icon: _buildNavItem(Icons.home, 0),
                label: 'Accueil',
              ),
              BottomNavigationBarItem(
                icon: _buildNavItem(Icons.favorite, 1),
                label: 'Important',
              ),
              BottomNavigationBarItem(
                icon: _buildNavItem(Icons.person, 2),
                label: 'Profile',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildNavItem(IconData icon, int index) {
    return Container(
      height: Dimension.sizeThirty,
      width: Dimension.sizeThirty * 2,
      decoration: BoxDecoration(
        color: currentIndex == index
            ? AppColors.secondaryColor.withOpacity(.35)
            : null, // Change the color based on the selected index
        borderRadius: BorderRadius.circular(13),
      ),
      child: Icon(icon),
    );
  }
}
