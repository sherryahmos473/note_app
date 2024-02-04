import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/cubit/notes_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/wigdets/custom_note_item.dart';

class NoteListView extends StatelessWidget {
  const NoteListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesCubitState>(
      builder: (context, state) {
        List<NoteModel> notes = BlocProvider.of<NotesCubit>(context).notes??[];
        return Padding(
          padding: const EdgeInsets.only(top: 8, bottom: 20),
          child: ListView.builder(
            itemCount: notes.length,
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
      },
    );
  }
}
