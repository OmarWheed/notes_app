import 'package:flutter/material.dart';

import '../constant.dart';

class MyButton extends StatelessWidget {
  final bool isLoading;
  const MyButton({super.key, this.onTap, this.isLoading = false});
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 55,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8), color: KprimaryColor),
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: isLoading
              ? CircularProgressIndicator(
                  color: Colors.black,
                )
              : Text(
                  "Add",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
        ),
      ),
    );
  }
}
