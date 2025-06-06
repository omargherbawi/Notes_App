import 'package:flutter/material.dart';


class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text, required this.textcolor, required this.buttoncolor, required this.onTap});
final String text;
final Color textcolor;
final Color buttoncolor;
final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap ,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 55,
        child: Center(child: Text(text,style: TextStyle(color: textcolor, fontWeight: FontWeight.bold),)),
        decoration: BoxDecoration(
          color: buttoncolor,
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}