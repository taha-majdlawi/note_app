
import 'package:flutter/material.dart';
import 'package:note_app/widgets/custome_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return const NoteItem();
    });
  }
}
