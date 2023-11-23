import 'package:flutter/material.dart';

import '../widgets/model_button_sheet.dart';
import '../widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
              context: context,
              builder: (_) {
                return AddNote();
              });
        },
        child: Icon(Icons.add),
      ),
      body: NotesViewBody(),
    );
  }
}
