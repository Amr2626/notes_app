import 'package:flutter/material.dart';
import 'package:notes/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(children: [SizedBox(height: 35), CustomTextField()]),
    );
  }
}
