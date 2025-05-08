part of 'note_cubit.dart';

@immutable
sealed class NoteState {}

final class NoteInitial extends NoteState {}

class NotesLoaded extends NoteState {
  final List<NoteModel> notes;

  NotesLoaded(this.notes);
}
