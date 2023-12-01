import 'package:flutter/material.dart';
import 'package:todo/cubits/notes/notes_cubit.dart';
import 'custom_app_bar.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'gap.dart';
import 'notes_list_view.dart';

class NotesViewBody extends StatefulWidget {
  const NotesViewBody({super.key});

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).FetchAllNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.8),
      child: Column(
        children: [
          Gap(height: 25),
          CustomAppBar(
            title: "Notes",
            icon: Icons.search,
          ),
          Gap(height: 25),
          Expanded(
            child: NotesListView(),
          )
        ],
      ),
    );
  }
}
