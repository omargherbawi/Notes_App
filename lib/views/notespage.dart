import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/Cubits/notes_cubit/notes_cubit_cubit.dart';
import 'package:notes_app/widget/add_notes_bottomsheet.dart';
import 'package:notes_app/widget/notespagebody.dart';

class NotesPage extends StatelessWidget {
  const NotesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubitCubit(),
      child: Scaffold(
        floatingActionButton: SizedBox(
          width: 70,
          height: 70,
          child: FloatingActionButton(
            onPressed: () {
              showModalBottomSheet(
                  isScrollControlled: true,
                  context: context,
                  builder: (context) {
                    return const AddNotes();
                  });
            },
            backgroundColor: const Color.fromARGB(255, 0, 255, 200),
            shape: const CircleBorder(),
            child: const Icon(
              Icons.add,
              color: Colors.black,
            ),
          ),
        ),
        appBar: AppBar(
            backgroundColor: Colors.black,
            title: const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Notes",
                style: TextStyle(fontSize: 30),
              ),
            ),
            actions: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.search,
                      size: 30,
                    )),
              ),
            ]),
        body: const NotesPageBody(),
      ),
    );
  }
}
