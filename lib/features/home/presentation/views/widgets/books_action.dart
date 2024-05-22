import 'package:flutter/material.dart';
import 'package:kotobaty_app/features/home/presentation/views/widgets/custom_button.dart';

class BookAction extends StatelessWidget {
  const BookAction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          CustomButton(
            text: '19.99',
            foregroundColor: Colors.black,
            backgroundColor: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              bottomLeft: Radius.circular(16),
            ),
          ),
          CustomButton(
            text: 'free Preview',
            foregroundColor: Colors.white,
            backgroundColor: Color(0xffEf8262),
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(16),
              bottomRight: Radius.circular(16),
            ),
            fontSize: 16,
          )
        ],
      ),
    );
  }
}
