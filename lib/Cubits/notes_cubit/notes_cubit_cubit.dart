import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';

part 'notes_cubit_state.dart';

class NotesCubitCubit extends Cubit<NotesCubitState> {
  NotesCubitCubit() : super(NotesInitial());

  List<Note>? notes;
  fetchAllNotes() async {
    var notesBox = Hive.box<Note>(kNotesBox);
    notes = notesBox.values.toList();
  }
}
