import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);
    final screenWidth = mediaQueryData.size.width;
     // Calculate font size based on screen width
    // double fontSize = screenWidth * 0.05;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(0.20 * screenWidth),
        child: Container(
          color: Colors.blue,
        ),
      ),
    );
  }
}
