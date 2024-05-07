import 'package:first_bank_attendance_system/Components/color.dart';
import 'package:first_bank_attendance_system/pages/managePeople_admins_page.dart';
import 'package:flutter/material.dart';

import '../Components/manage_people_tab_bar.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    // final mediaQueryData = MediaQuery.of(context);
    // final screenWidth = mediaQueryData.size.width;
    // final screenHeight = mediaQueryData.size.height;

    // Calculate font size based on screen width
    // double fontSize = screenWidth * 0.05;
    return Builder(builder: (context) {
      return DefaultTabController(
        length: 2,
        initialIndex: 0,
        child: Scaffold(
          appBar: AppBar(
              title: const Text('Notifications'),
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(100.0),
                child: TabBar(
                    labelColor: primaryColor,
                    unselectedLabelColor: Colors.grey[400],
                    indicatorColor: primaryColor,
                    tabs: const [
                      Tab(
                        text: 'Pending Approvals',
                      ),
                      Tab(
                        text: 'Others',
                      ),
                    ]),
              )),
          body: ListView(
            scrollDirection: Axis.vertical,
            children: const [
              ManagePeopleAdminPage(),
              ManagePeopleTabBar(),
            ],
          ),
        ),
      );
    });
  }
}
