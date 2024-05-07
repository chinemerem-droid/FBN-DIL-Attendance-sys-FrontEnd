import 'package:first_bank_attendance_system/Components/bottom_nav_bar.dart';
import 'package:first_bank_attendance_system/Components/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ManagePeopleDetailsPage extends StatelessWidget {
  const ManagePeopleDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);
    final screenWidth = mediaQueryData.size.width;
    final screenHeight = mediaQueryData.size.height;

    void _showDialog() {
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              content: SizedBox(
                height: 0.35 * screenHeight,
                width: 0.5 * screenWidth,
                child: Center(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(children: [
                      const SizedBox(
                        height: 30,
                      ),
                      SvgPicture.asset('images/profilePic.svg'),
                      const SizedBox(
                        height: 8,
                      ),
                      const Text(
                        'You are about to delete Jane Doe from the system. Are you sure?',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontWeight: FontWeight.w400),
                      ),
                    ]),
                    Column(
                      children: [
                        GestureDetector(
                            child: Container(
                          decoration: BoxDecoration(
                              color: primaryColor,
                              borderRadius: BorderRadius.circular(100)),
                          child: const Padding(
                            padding: EdgeInsets.all(15),
                            child: Center(
                              child: Text('Proceed',
                                  style: TextStyle(
                                    color: Colors.white,
                                  )),
                            ),
                          ),
                        )),
                        const SizedBox(
                          height: 15,
                        ),
                        GestureDetector(
                            child: Container(
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(100)),
                          child: const Padding(
                            padding: EdgeInsets.all(15),
                            child: Center(
                              child: Text('Cancel',
                                  style: TextStyle(
                                    color: Colors.red,
                                  )),
                            ),
                          ),
                        ))
                      ],
                    )
                  ],
                )),
              ),
            );
          });
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Manage People'),
        foregroundColor: Colors.white,
        backgroundColor: primaryColor,
        elevation: 0,
      ),
      body: Column(
        children: [
          Container(
            height: 0.6 * screenWidth,
            decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                )),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset('images/profilePic (2).svg'),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'John Doe',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    'Employee',
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    'staff ID:1213-131-3244',
                    style: TextStyle(fontSize: 12, color: neutralColor),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Container(
            height: 0.5 * screenHeight,
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [Text('User information')]),
                      SizedBox(
                        height: 26,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Registered Device'),
                            Text(
                              'Samsung A21S',
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                          ]),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Name'),
                            Text(
                              'Jane Doe',
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                          ]),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Email'),
                            Text(
                              'Janedoe334@gmail.com',
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                          ]),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Lab Role'),
                            Text(
                              'Product Designer',
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                          ]),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Phone Number'),
                            Text(
                              '+234 991 3456 242',
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                          ]),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const BottomNavBar())),
                        child: Container(
                          width: 0.7 * screenWidth,
                          decoration: BoxDecoration(
                              color: primaryColor,
                              borderRadius: BorderRadius.circular(100)),
                          child: const Padding(
                            padding: EdgeInsets.all(15),
                            child: Center(
                              child: Text('View attendance history',
                                  style: TextStyle(
                                    color: Colors.white,
                                  )),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: _showDialog,
                        child: SvgPicture.asset('images/deleteIcon.svg'),
                      )
                    ],
                  )
                ]),
          ),
        ],
      ),
    );
  }
}
