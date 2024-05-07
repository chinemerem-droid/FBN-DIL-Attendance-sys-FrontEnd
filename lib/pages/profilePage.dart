import 'package:first_bank_attendance_system/Components/color.dart';
import 'package:first_bank_attendance_system/pages/edit_profile_page.dart';
 import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);
    final screenWidth = mediaQueryData.size.width;
    final screenHeight = mediaQueryData.size.height;
    // double fontSize = screenWidth * 0.05; // Adjust multiplier as needed

    return Scaffold(
      appBar: AppBar(
          title: const Text('Your Profile'),
          foregroundColor: Colors.white,
          backgroundColor: primaryColor,
          elevation: 0,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 5),
              child: GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const EditProfilePage())),
                  child: SizedBox(
                      width: 0.2 * screenWidth,
                      height: 0.4 * screenHeight,
                      child: const Icon(Icons.edit))),
            ),
          ]),
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
                    height: 10,
                  ),
                  const Text(
                    'Employee',
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                  const SizedBox(
                    height: 15,
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
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(children: [
              const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [Text('User information')]),
              const SizedBox(
                height: 26,
              ),
              const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Registered Device'),
                    Text(
                      'Samsung A21S',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ]),
              const SizedBox(
                height: 30,
              ),
              const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Name'),
                    Text(
                      'Jane Doe',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ]),
              const SizedBox(
                height: 30,
              ),
              const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Email'),
                    Text(
                      'Janedoe334@gmail.com',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ]),
              const SizedBox(
                height: 30,
              ),
              const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Lab Role'),
                    Text(
                      'Product Designer',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ]),
              const SizedBox(
                height: 30,
              ),
              const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Phone Number'),
                    Text(
                      '+234 991 3456 242',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ]),
              SizedBox(height: 0.1 * screenHeight),
            ]),
          ),
        ],
      ),
    );
  }
}
