import 'package:flutter/material.dart';
import 'package:note_app/constents.dart';

class CustomeTextfield extends StatelessWidget {
  const CustomeTextfield(
      {super.key,
      required this.hintText,
      this.maxLines = 1,
       this.onSave});
  final String hintText;
  final int maxLines;
  final void Function(String?)? onSave;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSave,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Field is requierd';
        }
      },
      cursorColor: kPrimaryColor,
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hintText,
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
