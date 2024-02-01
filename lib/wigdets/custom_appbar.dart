import 'package:flutter/material.dart';
import 'package:note_app/wigdets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Notes',
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
        Spacer(),
        CustomSearchIcon(),
      ],
    );
  }
}
