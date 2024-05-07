import 'package:first_bank_attendance_system/Components/color.dart';
import 'package:first_bank_attendance_system/pages/check_out_page.dart';
import 'package:first_bank_attendance_system/pages/checked_in_page.dart';
import 'package:first_bank_attendance_system/pages/late_check_in_page.dart';
import 'package:flutter/material.dart';

class HomeTabBar extends StatelessWidget {
  const HomeTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);
    // final screenWidth = mediaQueryData.size.width;
    final screenHeight = mediaQueryData.size.height;

    return DefaultTabController(
        length: 3,
        initialIndex: 0,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(0.09 * screenHeight),
            child: AppBar(
              automaticallyImplyLeading: false,
              bottom: TabBar(
                  labelColor: primaryColor,
                  unselectedLabelColor: Colors.grey[400],
                  indicatorColor: primaryColor,
                  tabs: const [
                    Tab(
                      text: 'Check in',
                    ),
                    Tab(
                      text: 'Late Check in',
                    ),
                    Tab(
                      text: 'Check out',
                    ),
                  ]),
            ),
          ),
          body: ListView(
            scrollDirection: Axis.vertical,
            children: [
              Container(
                child: const CheckedInPage(),
              ),
              Container(
                child: const LateCheckInPage(),
              ),
              Container(
                child: const checkOutPage(),
              )
            ],
          ),
        ));
  }
}
