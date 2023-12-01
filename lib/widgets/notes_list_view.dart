import 'package:flutter/material.dart';
import 'package:todo/cubits/notes/notes_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/models/note_model.dart';
import 'notes_items.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<NoteModel> notes =
        BlocProvider.of<NotesCubit>(context).notes ?? [];
    print(notes.length);
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: notes.length,
              itemBuilder: ((context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: NoteItem(
                    note: notes[index],
                  ),
                );
              })),
        );
      },
    );
  }
}
