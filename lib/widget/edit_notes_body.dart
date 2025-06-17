import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';

import 'custom_text_field.dart';

class EditNotesBody extends StatefulWidget {
  const EditNotesBody({super.key, required this.note});
  final Note note;

  @override
  State<EditNotesBody> createState() => _EditNotesBodyState();
}

class _EditNotesBodyState extends State<EditNotesBody> {
  String? title;
  String? subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            CustomTextField(
              initvalue: widget.note.title,
              onChanged: (value) {
                title = value;
                widget.note.title = value;
              },
              hint: "Edit title",
            ),
            const SizedBox(
              height: 25,
            ),
            CustomTextField(
              initvalue: widget.note.subtitle,
              onChanged: (value) {
                subtitle = value;
                widget.note.subtitle = value;
              },
              hint: "Edit subtitle",
              maxLine: 5,
            ),
            const SizedBox(
              height: 60,
            ),
          ],
        ),
      ),
    );
  }
}
