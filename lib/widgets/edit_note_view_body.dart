import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_app_bar.dart';
import 'package:note_app/widgets/custome_textfeild.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 24),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CostumAppBar(
            title: 'Edit Note',
            icon: Icons.check,
          ),
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
        ],
      ),
    );
  }
}
