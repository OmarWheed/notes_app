import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/models/note_model.dart';
import 'package:todo/views/notes_view.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:todo/views/simple_bloc_observer.dart';
import 'constant.dart';

void main() async {
  await Hive.initFlutter();
  Bloc.observer = SimpleBlocObserver();
  Hive.registerAdapter(
      NoteModelAdapter()); // know hive it i will resister ot adapter
  await Hive.openBox<NoteModel>(kNotesBox);

  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(brightness: Brightness.dark, fontFamily: "Poppins"),
        home: NotesView()
        //),
        );
  }
}
