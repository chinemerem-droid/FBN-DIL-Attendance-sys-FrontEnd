import 'package:first_bank_attendance_system/Components/color.dart';
import 'package:flutter/material.dart';

class SearchBarComponent extends StatelessWidget {
  const SearchBarComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
                child: TextField(
                  decoration: InputDecoration(
                      contentPadding:
                          const EdgeInsets.only(left: 20, right: 30),
                      filled: true,
                      fillColor: const Color.fromARGB(255, 231, 241, 249),
                      hintText: 'Search People...',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: BorderSide.none),
                      prefixIcon: const Icon(Icons.search_rounded),
                      iconColor: inputHintColor),
                ),
              ) ;
  }
}