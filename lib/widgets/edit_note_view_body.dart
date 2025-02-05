import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/widgets/custom_app_bar.dart';
import 'package:note_app/widgets/custome_textfeild.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 24),
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          CostumAppBar(
            onPressed: () => {
              widget.note.title = title ?? widget.note.title,
              widget.note.subTitle = content ?? widget.note.subTitle,
              widget.note.save(),
              BlocProvider.of<NotesCubit>(context).fetchAllNotes(),
              Navigator.pop(context),
            },
            title: 'Edit Note',
            icon: Icons.check,
          ),
          const SizedBox(
            height: 32,
          ),
          CustomeTextfield(
            onChange: (data) {
              title = data;
            },
            hintText: widget.note.title,
          ),
          const SizedBox(
            height: 16,
          ),
          CustomeTextfield(
            onChange: (data) {
              content = data;
            },
            hintText: widget.note.subTitle,
            maxLines: 4,
          ),
        ],
      ),
    );
  }
}
