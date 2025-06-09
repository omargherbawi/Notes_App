import 'package:flutter/material.dart';
import 'add_note_form.dart';

class AddNotes extends StatelessWidget {
  const AddNotes({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 18),
      child: SingleChildScrollView(
        child: AddNoteForm(),
      ),
    );
  }
}
