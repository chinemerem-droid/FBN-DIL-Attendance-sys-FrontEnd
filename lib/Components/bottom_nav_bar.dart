import 'package:first_bank_attendance_system/Components/color.dart';
import 'package:first_bank_attendance_system/pages/home_page.dart';
import 'package:first_bank_attendance_system/pages/manage_people_page.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int navBarIndex = 0;

  List navBody = [
    const HomePage(),
    const ManagePeoplePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBarTheme(
          data: NavigationBarThemeData(
              backgroundColor: primaryColor, shadowColor: Colors.transparent),
          child: NavigationBar(
            height: 80,
            labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
            selectedIndex: navBarIndex,
            animationDuration: const Duration(seconds: 2),
            onDestinationSelected: (value) =>
                setState(() => navBarIndex = value),
            destinations: const [
              NavigationDestination(
                icon: Icon(Icons.home_rounded),
                selectedIcon: Icon(
                  Icons.home_rounded,
                  color: Colors.white,
                ),
                label: 'Home',
              ),
              NavigationDestination(
                icon: Icon(Icons.person_2_rounded),
                selectedIcon: Icon(
                  Icons.person_2_rounded,
                  color: Colors.white,
                ),
                label: 'Manage Admins',
              )
            ],
          )),
      body: navBody[navBarIndex],
    );
  }
}
