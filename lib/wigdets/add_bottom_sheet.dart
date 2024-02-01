import 'package:flutter/material.dart';
import 'package:note_app/wigdets/custom_button.dart';
import 'package:note_app/wigdets/custom_text_field.dart';

class AddBottomSheet extends StatelessWidget {
  const AddBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 25),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              'Add Note',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            CustomTextField(
              hintText: 'Title',
            ),
            SizedBox(
              height: 15,
            ),
            CustomTextField(
              hintText: 'Description',
              maxLines: 5,
            ),
            SizedBox(
              height: 30,
            ),
            CustomButton(),
          ],
        ),
      ),
    );
  }
}
