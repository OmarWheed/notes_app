import 'package:flutter/material.dart';
import 'custom_app_bar.dart';
import 'notes_items.dart';
import 'notes_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.8),
      child: Column(
        children: [
          Gap(),
          CustomAppBar(),
          Gap(),
          Expanded(child: NotesListView())
        ],
      ),
    );
  }
}

SizedBox Gap() {
  return SizedBox(
    height: 25,
  );
}
