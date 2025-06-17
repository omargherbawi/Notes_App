import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/Cubits/notes_cubit/notes_cubit_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widget/edit_notes_body.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key, required this.note});
  final Note note;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "Edit Note",
              style: TextStyle(fontSize: 30),
            ),
          ),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: IconButton(
                  onPressed: () {
                    note.save();
                    Navigator.pop(context);
                    BlocProvider.of<NotesCubitCubit>(context).fetchAllNotes();
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text(
                        "Edit Note successfully",
                        style: TextStyle(color: Colors.white),
                      ),
                      backgroundColor: Color.fromARGB(255, 59, 216, 64),
                    ));
                  },
                  icon: const Icon(
                    Icons.check,
                    size: 30,
                  )),
            ),
          ]),
      body: EditNotesBody(
        note: note,
      ),
    );
  }
}
