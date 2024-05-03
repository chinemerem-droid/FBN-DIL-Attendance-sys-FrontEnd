import 'package:first_bank_attendance_system/Components/bottom_nav_bar.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);
    final screenWidth = mediaQueryData.size.width;

    // Calculate font size based on screen width
    double fontSize = screenWidth * 0.05; // Adjust multiplier as needed

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 35, right: 35),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Hello.',
                  style: TextStyle(
                      fontSize: 2.19 * fontSize,
                      color: const Color(0xFF345782),
                      fontWeight: FontWeight.w600),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Please enter your login details',
                  style: TextStyle(
                    fontSize: 0.69 * fontSize,
                    color: const Color(0xFF345782),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 60,
            ),
            Container(
              child: Image.asset('images/illustration.png'),
            ),
            const SizedBox(
              height: 35,
            ),
            const Row(
              children: [
                Text(
                  'Staff ID',
                  style: TextStyle(color: Color(0xFF345782)),
                )
              ],
            ),
            const SizedBox(
              height: 3.5,
            ),
            TextField(
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(vertical: 10.0),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(100),
                    borderSide: const BorderSide(color: Color(0xFFF6F6F6))),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(100),
                    borderSide: const BorderSide(color: (Color(0xFF345782)))),
                fillColor: const Color(0xFFF6F6F6),
                filled: true,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              children: [
                Text(
                  'Password',
                  style: TextStyle(color: Color(0xFF345782)),
                )
              ],
            ),
            const SizedBox(
              height: 3.5,
            ),
            TextField(
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(vertical: 10.0),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(100),
                    borderSide: const BorderSide(color: Color(0xFFF6F6F6))),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(100),
                    borderSide: const BorderSide(color: (Color(0xFF345782)))),
                fillColor: const Color(0xFFF6F6F6),
                filled: true,
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            GestureDetector(
              onTap: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => const BottomNavBar())),
              child: Container(
                decoration: BoxDecoration(
                    color: (const Color(0xFF345782)),
                    borderRadius: BorderRadius.circular(100)),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Center(
                    child: Text('Login',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 0.94 * fontSize,
                        )),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
