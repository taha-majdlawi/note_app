import 'package:flutter/material.dart';
import 'package:note_app/constents.dart';

class CustomeTextfield extends StatelessWidget {
  const CustomeTextfield({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        hintText: 'Title',
        hintStyle: TextStyle(
          color: kPrimaryColor,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: kPrimaryColor),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
      ),
    );
  }
}
