import 'package:flutter/material.dart';
import 'package:note_app/wigdets/custom_appbar.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          CustomAppBar(title: 'Edit',icon: Icons.check),
          
        ],
      ),
    );
  }
}
