import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/cubits/cubit/notes_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/show_snack_bar.dart';
import 'package:note_app/wigdets/color_list_view.dart';
import 'package:note_app/wigdets/custom_appbar.dart';
import 'package:note_app/wigdets/custom_text_field.dart';
import 'package:note_app/wigdets/edit_note_color_list_view.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, content;
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          CustomAppBar(
              title: 'Edit',
              icon: Icons.check,
              onPressed: () {
                widget.note.title = title ?? widget.note.title;
                widget.note.content = content ?? widget.note.content;
                widget.note.date =
                    DateFormat('dd-mm-yyyy').format(DateTime.now());
                widget.note.save();
                Navigator.pop(context);
                BlocProvider.of<NotesCubit>(context).fetcAllNotes();
                showSnackBar(context, 'Note updated');
              }),
          const SizedBox(height: 50),
          CustomTextField(
              onChanged: (value) {
                title = value;
              },
              hintText: widget.note.title),
          const SizedBox(height: 20),
          CustomTextField(
            onChanged: (value) {
              content = value;
            },
            hintText: widget.note.content,
            maxLines: 5,
          ),
          const SizedBox(height: 30),
          EditNotesColorsList(
            note: widget.note,
          ),
        ],
      ),
    );
  }
}
