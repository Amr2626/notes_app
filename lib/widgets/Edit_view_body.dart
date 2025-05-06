import 'package:flutter/material.dart';
import 'package:notes/widgets/custom_app_bar.dart';
//import 'package:notes/widgets/custom_text_field.dart';

class EditNoteViewbody extends StatelessWidget {
  const EditNoteViewbody({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: const [
          SizedBox(height: 61),
          CustomAppBar(title: 'Edit Note', icon: Icons.check),
          // SizedBox(height: 61),
          // CustomTextField(hint: 'title'),
          // SizedBox(height: 20),
          // CustomTextField(hint: 'content'),
        ],
      ),
    );
  }
}
