import 'package:flutter/material.dart';
import 'package:todo/widgets/custom_app_bar.dart';

import '../widgets/edit_not_body.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditNoteViewBody(),
    );
  }
}
