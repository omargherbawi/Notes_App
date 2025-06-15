import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/Cubits/add_note_cubit/add_note_state.dart';
import 'package:notes_app/models/note_model.dart';

import '../Cubits/add_note_cubit/add_note_cubit.dart';
import '../constants.dart';
import 'custom_button.dart';
import 'custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  String? title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          const Divider(
            thickness: 2,
            indent: 130,
            endIndent: 130,
            color: Colors.grey,
          ),
          const SizedBox(
            height: 30,
          ),
          CustomTextField(
            validator: (value) {
              if (value?.isEmpty ?? true) {
                return 'field is required';
              } else {
                return null;
              }
            },
            onSaved: (value) {
              title = value;
            },
            hint: "Title",
          ),
          const SizedBox(
            height: 25,
          ),
          CustomTextField(
            validator: (value) {
              if (value?.isEmpty ?? true) {
                return 'field is required';
              } else {
                return null;
              }
            },
            onSaved: (value) {
              subtitle = value;
            },
            hint: "Content",
            maxLine: 5,
          ),
          const SizedBox(
            height: 60,
          ),
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return CustomButton(
                isloading: state is AddNoteLoading ? true : false,
                text: "Add",
                textcolor: Colors.black,
                buttoncolor: kPrimaryColor,
                onTap: () {
                  if (formkey.currentState!.validate()) {
                    formkey.currentState!.save();
                    var note = Note(
                        title: title!,
                        subtitle: subtitle!,
                        date: DateTime.now().toString(),
                        color: Colors.pink.value);
                    BlocProvider.of<AddNoteCubit>(context).addnote(note);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
            },
          ),
          const SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}
