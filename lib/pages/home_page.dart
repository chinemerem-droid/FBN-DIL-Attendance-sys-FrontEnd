import 'package:first_bank_attendance_system/Components/color.dart';
import 'package:first_bank_attendance_system/Components/manage_people_tab_bar.dart';
import 'package:first_bank_attendance_system/pages/managePeople_admins_page.dart';
import 'package:first_bank_attendance_system/pages/notifications_page.dart';
import 'package:first_bank_attendance_system/pages/profilePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // final mediaQueryData = MediaQuery.of(context);
    // final screenWidth = mediaQueryData.size.width;
    // final screenHeight = mediaQueryData.size.height;
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
            automaticallyImplyLeading: false,
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(100.0),
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        margin: const EdgeInsets.only(left: 20),
                        child: Row(
                          children: [
                            GestureDetector(
                                onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const ProfilePage())),
                                child: Container(
                                  child: SvgPicture.asset(
                                      'images/ProfileIcon.svg'),
                                )),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Super Admin',
                                      style: TextStyle(
                                          fontSize: 14, color: primaryColor),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    const Text(
                                      'Good Morning,',
                                      style: TextStyle(
                                          fontSize: 17.08,
                                          fontWeight: FontWeight.w300),
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      'John Doe',
                                      style: TextStyle(
                                          fontSize: 17.08,
                                          fontWeight: FontWeight.bold,
                                          color: primaryColor),
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        )),
                    GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const NotificationsPage())),
                      child: Container(
                        margin: const EdgeInsets.only(right: 20),
                        child: SvgPicture.asset('images/notificationsIcon.svg'),
                      ),
                    ),
                  ],
                ),
                TabBar(
                    labelColor: primaryColor,
                    unselectedLabelColor: Colors.grey[400],
                    indicatorColor: primaryColor,
                    tabs: const [
                      Tab(
                        text: 'Checked in',
                      ),
                      Tab(
                        text: 'Late Check in',
                      ),
                      Tab(
                        text: 'Checked out',
                      ),
                    ]),
              ]),
            )),
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
      ),
    );
  }
}
