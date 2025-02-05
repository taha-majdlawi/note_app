import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/constents.dart';
import 'package:note_app/views/notes_view.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(kBoxName);
  runApp( const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});
 

 @override 
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins',
        brightness: Brightness.dark,
      ),
      home: const NotesView(),
    );
  }
}
