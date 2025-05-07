import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes/constants.dart';
import 'package:notes/models/note_model.dart';

part 'note_state.dart';

class NoteCubit extends Cubit<NoteState> {
  NoteCubit() : super(NoteInitial());

  FetchAllNotes() {
    try {
      var NoteBox = Hive.box<NoteModel>(KNotesBox);

      List<NoteModel> notes = NoteBox.values.toList();
      emit(NoteSuccess(notes));
    } catch (e) {
      emit(NoteFailure(e.toString()));
    }
  }
}
