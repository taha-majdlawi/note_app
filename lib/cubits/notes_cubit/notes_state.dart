part of 'notes_cubit.dart';

sealed class NotesState extends Equatable {
  const NotesState();

  @override
  List<Object> get props => [];
}

final class NotesInitial extends NotesState {}
final class NotesLoading extends NotesState {}
final class NotesSuccess extends NotesState {
  final List<NoteModel> notes;

  NotesSuccess(this.notes);
}
final class NotesFailure extends NotesState {
  final String message;
  const NotesFailure( this.message);
}
