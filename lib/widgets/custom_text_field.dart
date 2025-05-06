import 'package:flutter/material.dart';
import 'package:notes/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hint,
    this.maxlines = 1,
    this.onsaved,
  });
  final String hint;
  final int maxlines;

  final void Function(String?)? onsaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onsaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'filed is requird';
        } else {
          return null;
        }
      },
      cursorColor: KPrimaryColor,
      maxLines: maxlines,
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
