import 'package:flutter/material.dart';
import 'package:note_app/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return EditNoteView();
        }));
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 7.0),
        child: Container(
          padding: EdgeInsets.only(top: 24, bottom: 24, left: 16),
          decoration: BoxDecoration(
            color: const Color(0xffFFCC80),
            borderRadius: BorderRadius.circular(24),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                title: const Text(
                  'Flutter tips',
                  style: TextStyle(color: Colors.black, fontSize: 26),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 16.0, bottom: 16),
                  child: const Text(
                    'Build your carrer with taha majdlawi',
                    style: TextStyle(
                      color: Colors.black45,
                      fontSize: 20,
                    ),
                  ),
                ),
                trailing: IconButton(
                    autofocus: true,
                    padding: EdgeInsets.only(bottom: 24),
                    onPressed: () {
                      print('ff');
                    },
                    icon: Icon(
                      Icons.delete,
                      size: 32,
                      color: Colors.black,
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 32.0),
                child: Text(
                  'Fab2,2025',
                  style: TextStyle(color: Colors.black45, fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
