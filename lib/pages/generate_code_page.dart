import 'package:first_bank_attendance_system/Components/bottom_nav_bar.dart';
import 'package:first_bank_attendance_system/Components/color.dart';
import 'package:first_bank_attendance_system/Components/generate_code_input_field.dart';
import 'package:first_bank_attendance_system/Components/text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class GenerateCodePage extends StatelessWidget {
  const GenerateCodePage({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);
    final screenWidth = mediaQueryData.size.width;
    final screenHeight = mediaQueryData.size.height;
    double fontSize = screenWidth * 0.05; // Adjust multiplier as needed

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 35, right: 35),
        child: Container(
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
                        color: primaryColor,
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
                      color: primaryColor,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              SvgPicture.asset('images/illustration.svg'),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 0.45 * screenHeight,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                'Check in Code',
                                style: TextStyle(color: primaryColor),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const GenerateCodeInputField()
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Text(
                            'STEP 2 OF 2',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: primaryColor),
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          GestureDetector(
                            onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const BottomNavBar())),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: primaryColor,
                                  borderRadius: BorderRadius.circular(100)),
                              child: Padding(
                                padding: const EdgeInsets.all(15),
                                child: Center(
                                  child: Text('Generate code',
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
