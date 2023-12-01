import 'package:intl/intl.dart';
import 'package:todo/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:todo/models/note_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'custom_bottom.dart';
import 'custom_text_filed.dart';
import 'gap.dart';
import 'package:flutter/material.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          Gap(
            height: 30,
          ),
          CustomTextField(
            onSaved: (p0) => title = p0,
            hint: "omar",
          ),
          Gap(
            height: 30,
          ),
          CustomTextField(
            hint: "Contant",
            maxLine: 5,
            onSaved: (p0) => subTitle = p0,
          ),
          Gap(
            height: 30,
          ),
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return MyButton(
                isLoading: state is AddNoteLoading ? true : false,
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    var currentDate = DateTime.now();
                    var formattedCurrentDate =
                        DateFormat("yyyy-MM-dd – kk:mm").format(currentDate);
                    NoteModel note = NoteModel(
                        title: title!,
                        subTitle: subTitle!,
                        date: formattedCurrentDate,
                        color: Colors.blueGrey.value);
                    BlocProvider.of<AddNoteCubit>(context).addNote(note);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
            },
          ),
          Gap(
            height: 30,
          ),
        ],
      ),
    );
  }
}
