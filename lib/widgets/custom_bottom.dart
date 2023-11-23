import 'package:flutter/material.dart';

import '../constant.dart';

class MyButton extends StatelessWidget {
  const MyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(59), color: Colors.amber),
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(KprimaryColor)),
        onPressed: () {},
        child: Text(
          "add",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
