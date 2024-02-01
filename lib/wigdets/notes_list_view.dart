import 'package:flutter/material.dart';
import 'package:note_app/wigdets/custom_note_item.dart';

class NoteListView extends StatelessWidget {
  const NoteListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, bottom: 16.0),
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(
              vertical: 4.0,
            ),
            child: NoteItem(),
          );
        },
      ),
    );
  }
}
