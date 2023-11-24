import 'package:flutter/material.dart';
import 'package:todo/widgets/custom_app_bar.dart';
import 'package:todo/widgets/gap.dart';

class EditNoteBody extends StatelessWidget {
  const EditNoteBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Gap(
            height: 50,
          ),
          CustomAppBar(
            title: "Edit Note",
            icon: Icons.check,
          ),
        ],
      ),
    );
  }
}
