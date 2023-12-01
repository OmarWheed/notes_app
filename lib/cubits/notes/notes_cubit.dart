import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:todo/models/note_model.dart';
import 'package:hive/hive.dart';

import '../../constant.dart';
part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  List<NoteModel>? notes;
  FetchAllNotes() {
    var noteBox = Hive.box<NoteModel>(kNotesBox);
    notes = noteBox.values.toList();
  }
}
