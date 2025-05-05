import 'package:flutter/material.dart';
import 'package:notes/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hint,
    //required this.maxlines,
  });
  final String hint;
  //final int maxlines;

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: KPrimaryColor,
      //maxLength: maxlines,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(color: KPrimaryColor),
        border: BuilderBorder(),
        enabledBorder: BuilderBorder(),
        focusedBorder: BuilderBorder(KPrimaryColor),
      ),
    );
  }

  OutlineInputBorder BuilderBorder([Color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: BorderSide(color: Color ?? Colors.white),
    );
  }
}
