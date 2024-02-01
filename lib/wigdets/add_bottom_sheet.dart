import 'package:flutter/material.dart';
import 'package:note_app/wigdets/custom_text_field.dart';

class AddBottomSheet extends StatelessWidget {
  const AddBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Add Note',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 20,
            ),
            CustomTextField(
              hintText: 'Title',
            ),
            const SizedBox(
              height: 15,
            ),
            CustomTextField(
              hintText: 'Description',
              maxLines: 5,
            ),
          ],
        ),
      ),
    );
  }
}
