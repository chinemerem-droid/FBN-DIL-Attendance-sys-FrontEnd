import 'package:flutter/material.dart';

import 'color.dart';

class GenerateCodeInputField extends StatelessWidget {
  const GenerateCodeInputField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      
      decoration: InputDecoration(
        suffixIcon: Icon(Icons.paste, color: neutralColor,),
        focusColor: Colors.white,
        contentPadding: const EdgeInsets.only(left: 20, right: 20),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(100),
            borderSide:
                const BorderSide(color: Color.fromARGB(255, 255, 255, 255))),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(100),
            borderSide: BorderSide(color: (primaryColor))),
        fillColor: const Color.fromARGB(255, 239, 235, 235),
        filled: true,
      ),
    );
  }
}
