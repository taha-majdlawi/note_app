import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:note_app/constents.dart';
import 'package:note_app/widgets/custom_button.dart';
import 'package:note_app/widgets/custome_textfeild.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 32,
            ),
            CustomeTextfield(
              hintText: 'Title',
            ),
            SizedBox(
              height: 16,
            ),
            CustomeTextfield(
              hintText: 'Contnet',
              maxLines: 4,
            ),
            SizedBox(
              height: 200,
            ),
            CustomButton(),
            SizedBox(
              height: 24,
            ),
          ],
        ),
      ),
    );
  }
}
