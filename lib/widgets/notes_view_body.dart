import 'package:flutter/material.dart';
import 'package:notes/widgets/custom_app_bar.dart';
import 'package:notes/widgets/notes_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: const [
          SizedBox(height: 60),
          CustomAppBar(title: 'Notes', icon: Icons.search),
          //SizedBox(height: 10),
          Expanded(child: NotesListView()),
        ],
      ),
    );
  }
}
