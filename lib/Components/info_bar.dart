import 'package:first_bank_attendance_system/Components/color.dart';
import 'package:flutter/material.dart';

class InFoBar extends StatelessWidget {
  final String text1, text2;

  const InFoBar({super.key, required this.text1, required this.text2});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 15, top: 12, bottom: 12),
      height: 70,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 244, 243, 243),
          borderRadius: BorderRadius.circular(10),
          border:
              Border.all(color: Color.fromARGB(255, 221, 217, 217), width: 1)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text1, style: TextStyle(color: infoBackgroundColor),),
          Text(text2, style: TextStyle(color: primaryColor, fontWeight: FontWeight.w600),),
        ],
      ),
    );
  }
}
