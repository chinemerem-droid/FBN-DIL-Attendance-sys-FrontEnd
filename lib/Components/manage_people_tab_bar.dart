import 'package:first_bank_attendance_system/Components/color.dart';
import 'package:first_bank_attendance_system/pages/managePeople_admins_page.dart';
import 'package:flutter/material.dart';

class ManagePeopleTabBar extends StatelessWidget {
  const ManagePeopleTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);
    // final screenWidth = mediaQueryData.size.width;
    final screenHeight = mediaQueryData.size.height;

    return DefaultTabController(
        length: 2,
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
                      text: 'Admins',
                    ),
                    Tab(
                      text: 'Employees',
                    ),
                  ]),
            ),
          ),
          body: ListView(
            scrollDirection: Axis.vertical,
            children: [
              Container(
                child: const ManagePeopleAdminPage(),
              ),
              Container(
                child: const ManagePeopleTabBar(),
              ),
            ],
          ),
        ));
  }
}
