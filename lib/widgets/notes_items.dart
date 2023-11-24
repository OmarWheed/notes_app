import 'package:flutter/material.dart';

import '../views/edit_view.dart';
import 'edit_not_body.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

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
          color: Color(0xffFFCC80),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: Text(
                  "Flutter tips ",
                  style: TextStyle(fontSize: 26, color: Colors.black),
                ),
              ),
              subtitle: Text("Build your career with tharwat samy ",
                  style: TextStyle(
                      fontSize: 24, color: Colors.black.withOpacity(0.4))),
              trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.delete,
                    color: Colors.black,
                    size: 30,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20.0, bottom: 40.0),
              child: Text("may21,2022",
                  style: TextStyle(color: Colors.black, fontSize: 15)),
            )
          ],
        ),
      ),
    );
  }
}
