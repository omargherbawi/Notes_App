import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/Cubits/notes_cubit/notes_cubit_cubit.dart';

import 'notes_listview.dart';

class NotesPageBody extends StatefulWidget {
  const NotesPageBody({super.key});

  @override
  State<NotesPageBody> createState() => _NotesPageBodyState();
}

class _NotesPageBodyState extends State<NotesPageBody> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<NotesCubitCubit>(context).fetchAllNotes();
  }

  @override
  Widget build(BuildContext context) {
    return const NotesListView();
  }
}
