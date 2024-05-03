import 'package:first_bank_attendance_system/pages/home_page.dart';
import 'package:first_bank_attendance_system/pages/settings_page.dart';
import 'package:first_bank_attendance_system/pages/staff_page.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int navBarIndex = 0;

  List navBody = [const HomePage(), const StaffPage(), const SettingsPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navBody[navBarIndex],
      bottomNavigationBar: SizedBox(
        height: 90,
        child: GNav(
            backgroundColor: const Color(0xFF345782),
            tabBackgroundColor: const Color.fromARGB(86, 255, 253, 253),
            tabBorderRadius: 30,
            tabMargin: const EdgeInsets.all(5),
            activeColor: Colors.white,
             tabs: const [
              GButton(
                icon: Icons.home_outlined,
                iconSize: 25,
              ),
              GButton(
                icon: Icons.person_2_outlined,
                iconSize: 25,
              ),
              GButton(
                icon: Icons.settings,
                iconSize: 25,
              )
            ],
            selectedIndex: navBarIndex,
            onTabChange: (index) {
              setState(() {
                navBarIndex = index;
              });
            }),
      ),
    );
  }
}
