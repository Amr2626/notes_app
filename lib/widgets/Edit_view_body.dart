import 'package:flutter/material.dart';
import 'package:notes/widgets/custom_app_bar.dart';

class EditNoteViewbody extends StatelessWidget {
  const EditNoteViewbody({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: const [
          SizedBox(height: 61),
          const CustomAppBar(title: 'Edite Note', icon: Icons.check),
        ],
      ),
    );
  }
}
