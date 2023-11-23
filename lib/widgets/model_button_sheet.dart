import 'package:flutter/material.dart';

class AddNote extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          enabled: true,
          decoration: InputDecoration(),
        )
      ],
    );
  }
}
