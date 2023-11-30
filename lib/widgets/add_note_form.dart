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
          MyButton(
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
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
