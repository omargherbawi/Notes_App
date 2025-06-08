import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

import 'package:notes_app/views/notespage.dart';

import 'models/note_model.dart';



void main()  async {
   WidgetsFlutterBinding.ensureInitialized();

 await Hive.initFlutter();
  Hive.registerAdapter(NoteAdapter());
   await Hive.openBox<Note>('notesBox');

  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
      home: const NotesPage(),
    );
  }
}
