import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/cubit/notes_cubit.dart';
import 'package:note_app/wigdets/add_bottom_sheet.dart';
import 'package:note_app/wigdets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
                isScrollControlled: true,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                context: context,
                builder: (context) => const AddBottomSheet());
          },
          child: const Icon(Icons.add),
        ),
        body: const NotesViewBody(),
      ),
    );
  }
}
