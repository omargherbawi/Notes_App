import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextField extends StatelessWidget {
  final String hint;
  final int maxLine;
  final void Function(String?)? onSaved;
  final String? Function(String?)? validator ;

  const CustomTextField({super.key, required this.hint, this.maxLine = 1, this.onSaved, this.validator});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator ,
      onSaved: onSaved,
      cursorColor: kPrimaryColor,
      maxLines: maxLine,
      decoration: InputDecoration(
          hintText: hint,
          hintStyle: const TextStyle(color: Colors.grey),
          border: buildborder(Colors.white),
          enabledBorder: buildborder(Colors.white),
          focusedBorder: buildborder(kPrimaryColor)),
    );
  }

  OutlineInputBorder buildborder(Color color) {
    return OutlineInputBorder(
        borderSide: BorderSide(color: color),
        borderRadius: BorderRadius.circular(8));
  }
}
