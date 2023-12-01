import 'package:flutter/material.dart';
import 'package:todo/cubits/add_note_cubit/add_note_cubit.dart';
import 'add_note_form.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddNote extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: BlocConsumer<AddNoteCubit, AddNoteState>(
        listener: (context, state) {
          if (state is AddNoteFailure)
            print("note is failure ${state.errMessage}");
          if (state is AddNoteSuccess) {
            Navigator.of(context).pop();
          }
        },
        builder: (context, state) {
          return Padding(
              padding: EdgeInsets.only(
                  left: 8,
                  right: 8,
                  bottom: MediaQuery.of(context).viewInsets.bottom),
              child: SingleChildScrollView(
                child: AbsorbPointer(
                    absorbing: state is AddNoteLoading ? true : false,
                    child: AddNoteForm()),
              ));
        },
      ),
    );
  }
}
