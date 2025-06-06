import 'package:flutter/material.dart';
import 'package:notes_app/widget/edit_notes_body.dart';


class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
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
                  onPressed: () {},
                  icon: const Icon(
                    Icons.check,
                    size: 30,
                  )),
            ),
          ]
          ),

          body: EditNotesBody(),
    );
  }
}