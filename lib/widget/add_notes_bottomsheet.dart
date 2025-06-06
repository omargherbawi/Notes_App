import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/widget/custom_button.dart';
import 'package:notes_app/widget/custom_text_field.dart';

class AddNotes extends StatelessWidget {
  const AddNotes({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  EdgeInsets.symmetric(horizontal: 18),
      child: SingleChildScrollView(
        child: Column(
          
          children: [
           const SizedBox(height: 10,),
           const Divider(
              thickness: 2,
              indent: 130,
              endIndent: 130,
              color: Colors.grey,
            )
           ,const SizedBox(
              height: 30,
            ),
          const  CustomTextField(
              hint: "Title",
            ),
         const   SizedBox(
              height: 25,
            ),
         const   CustomTextField(
              hint: "Content",
              maxLine: 5,
            ),
       const  SizedBox(
              height: 60,
            ),
            CustomButton(text: "Add" ,
             textcolor: Colors.black,
              buttoncolor: kPrimaryColor,
              onTap: () {
                
              }, ),
          const  SizedBox(
              height: 40,
            ),
        
          ],
        ),
      ),
    );
  }
}
