import 'package:flutter/material.dart';
import 'package:note_app/wigdets/custom_appbar.dart';
import 'package:note_app/wigdets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(title: 'Edit', icon: Icons.check),
          SizedBox(height: 50),
          CustomTextField(hintText: 'Title'),
          SizedBox(height: 20),
          CustomTextField(
            hintText: 'Content',
            maxLines: 5,
          ),
        ],
      ),
    );
  }
}
