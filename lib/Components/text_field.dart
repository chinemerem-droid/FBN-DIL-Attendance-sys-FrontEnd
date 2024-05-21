import 'package:first_bank_attendance_system/Components/color.dart';
import 'package:flutter/material.dart';

class MyTextField extends StatefulWidget {
  const MyTextField({super.key});

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        focusColor: Colors.white,
        contentPadding: const EdgeInsets.only(left: 20, right: 20),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(100),
            borderSide:
                const BorderSide(color: Color.fromARGB(255, 255, 255, 255))),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(100),
            borderSide: BorderSide(color: (primaryColor))),
        fillColor: const Color.fromARGB(255, 242, 242, 242),
        filled: true,
      ),
    );
  }
}
