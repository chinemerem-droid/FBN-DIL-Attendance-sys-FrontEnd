import 'package:first_bank_attendance_system/Components/color.dart';
import 'package:flutter/material.dart';
import 'package:swipeable_button_view/swipeable_button_view.dart';

class SwipeButton extends StatelessWidget {
  const SwipeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SwipeableButtonView(
    
          onFinish: () {},
          onWaitingProcess: () {},
          activeColor: primaryColor,
          buttonWidget: Icon(
            Icons.arrow_forward,
            color: primaryColor,
            
          ),
          buttontextstyle: const TextStyle(fontWeight: FontWeight.w300, color: Colors.white),
          buttonText: 'Swipe right to Check in'),
    );
  }
}
