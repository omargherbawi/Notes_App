import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.text,
      required this.textcolor,
      required this.buttoncolor,
      required this.onTap,
      this.isloading = false});
  final String text;
  final Color textcolor;
  final Color buttoncolor;
  final VoidCallback onTap;
  final bool isloading;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 55,
        decoration: BoxDecoration(
          color: buttoncolor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
            child: isloading
                ? const SizedBox(
                    width: 24,
                    height: 24,
                    child: CircularProgressIndicator(
                      strokeWidth: 3,
                      color: Colors.black,
                    ),
                  )
                : Text(
                    text,
                    style: TextStyle(
                        color: textcolor, fontWeight: FontWeight.bold),
                  )),
      ),
    );
  }
}
