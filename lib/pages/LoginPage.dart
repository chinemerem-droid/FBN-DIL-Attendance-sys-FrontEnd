import 'package:first_bank_attendance_system/pages/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import '../Components/color.dart';
import '../Components/text_field.dart';

class LoginPage2 extends StatefulWidget {
  const LoginPage2({super.key});

  @override
  State<LoginPage2> createState() => _LoginPage2State();
}

class _LoginPage2State extends State<LoginPage2> {
  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);
    final screenWidth = mediaQueryData.size.width;
    final screenHeight = mediaQueryData.size.height;
    double fontSize = screenWidth * 0.1; // Adjust multiplier as needed

    void moveToWelcomePage() {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => WelcomePage()));
    }

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 35, right: 35, top: 100),
        child: SingleChildScrollView(
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
                        fontSize: fontSize,
                        color: primaryColor,
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Let’s check you in for the day',
                    style: TextStyle(
                      fontSize: 0.4 * fontSize,
                      color: primaryColor,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 60,
              ),
              SvgPicture.asset('images/illustration.svg'),
              const SizedBox(
                height: 40,
              ),
              SizedBox(
                height: 0.7 * screenHeight,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'Staff ID',
                              style: TextStyle(color: primaryColor),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const MyTextField(),
                      ],
                    ),
                    Column(
                      children: [
                        GestureDetector(
                          onTap: moveToWelcomePage,
                          child: Container(
                            decoration: BoxDecoration(
                                color: primaryColor,
                                borderRadius: BorderRadius.circular(100)),
                            child: Padding(
                              padding: const EdgeInsets.all(15),
                              child: Center(
                                child: Text('Login',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 0.5 * fontSize,
                                    )),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
