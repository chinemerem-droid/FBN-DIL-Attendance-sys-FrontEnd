import 'package:first_bank_attendance_system/Components/manage_people_tab_bar.dart';
import 'package:flutter/material.dart';

class ManagePeoplePage extends StatelessWidget {
  const ManagePeoplePage({super.key});

  @override
  Widget build(BuildContext context) {
    // final mediaQueryData = MediaQuery.of(context);
    // final screenWidth = mediaQueryData.size.width;
    // final screenHeight = mediaQueryData.size.height;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Manage People'),
      ),
      body: const ManagePeopleTabBar(),
    );
  }
}
