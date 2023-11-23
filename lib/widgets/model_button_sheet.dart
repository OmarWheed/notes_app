import 'package:flutter/material.dart';
import 'package:todo/widgets/custom_text_filed.dart';

import 'gap.dart';

class AddNote extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children: [
          Gap(
            height: 30,
          ),
          CustomTextField(
            hint: "omar",
          ),
          Gap(
            height: 30,
          ),
          CustomTextField(
            hint: "Contant",
            maxLine: 5,
          ),
        ],
      ),
    );
  }
}
