import 'package:flutter/material.dart';
import 'package:note_app/wigdets/custom_appbar.dart';
import 'package:note_app/wigdets/custom_note_item.dart';
import 'package:note_app/wigdets/notes_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          CustomAppBar(),
          Expanded(child: NoteListView()),
        ],
      ),
    );
  }
}
