import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/models/note_model.dart';

part 'notes_cubit_state.dart';

class NotesCubit extends Cubit<NotesCubitState> {
  NotesCubit() : super(NotesCubitInitial());
  List<NoteModel>? notes;
  fetcAllNotes() {
    var notesBox = Hive.box<NoteModel>(kNotesBox);
    notes = notesBox.values.toList();
  }
}
