import 'package:flutter/material.dart';
import 'custom_text_field.dart';

class EditNotesBody extends StatelessWidget {
  const EditNotesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 18),
      child: SingleChildScrollView(
        child: Column(
          
          children: [
         
          
           SizedBox(
              height: 30,
            ),
            CustomTextField(
              hint: "Title",
            ),
           SizedBox(
              height: 25,
            ),
            CustomTextField(
              hint: "Content",
              maxLine: 5,
            ),
             SizedBox(
              height: 60,
            ),
            
         
        
          ],
        ),
      ),
    );
  }
}