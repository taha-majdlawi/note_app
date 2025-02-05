import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_app/constents.dart';
import 'package:note_app/models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  fetchAllNotes() async {
   
    try {
      var noteBox = Hive.box<NoteModel>(kBoxName);
     List<NoteModel> notes = await noteBox.values.toList();
      await Future.delayed(Duration(milliseconds: 300));
      emit(NotesSuccess(notes));
    } on Exception catch (e) {
      emit(NotesFailure(e.toString()));
    }
  }
  }

