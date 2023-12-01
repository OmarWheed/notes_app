import 'package:flutter/material.dart';
import 'package:todo/models/note_model.dart';

import '../views/edit_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.note});
  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) {
            return EditNoteView();
          },
        ));
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(note.color),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: Text(
                  "${note.title} ",
                  style: TextStyle(fontSize: 26, color: Colors.black),
                ),
              ),
              subtitle: Text("${note.subTitle} ",
                  style: TextStyle(
                      fontSize: 24, color: Colors.black.withOpacity(0.4))),
              trailing: IconButton(
                  onPressed: () {
                    note.delete();
                  },
                  icon: Icon(
                    Icons.delete,
                    color: Colors.black,
                    size: 30,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20.0, bottom: 40.0),
              child: Text("${note.date}",
                  style: TextStyle(color: Colors.black, fontSize: 15)),
            )
          ],
        ),
      ),
    );
  }
}
