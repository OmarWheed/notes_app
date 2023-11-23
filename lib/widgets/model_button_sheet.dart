import 'package:flutter/material.dart';
import 'package:todo/widgets/custom_text_filed.dart';

import 'custom_bottom.dart';
import 'gap.dart';

class AddNote extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: SingleChildScrollView(
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
            Gap(
              height: 30,
            ),
            MyButton(),
            Gap(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
