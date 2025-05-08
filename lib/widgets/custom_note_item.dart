import 'package:flutter/material.dart';
import 'package:notes/models/note_model.dart';
import 'package:notes/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return EditNoteView(); //
            },
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.only(left: 15, bottom: 24, top: 24),
        decoration: BoxDecoration(
          color: Color(0xffFFCC80),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                note.title,
                style: const TextStyle(color: Colors.black, fontSize: 26),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 25, bottom: 25),
                child: Text(
                  note.subtitle,
                  style: const TextStyle(
                    color: Color.fromARGB(225, 167, 153, 153),
                    fontSize: 16,
                  ),
                ),
              ),
              trailing: IconButton(
                // padding: const EdgeInsets.only(top: 0, right: 0),
                onPressed: () {},

                icon: Icon(Icons.delete, color: Colors.black, size: 30),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Text(
                note.date,
                style: const TextStyle(
                  color: Color.fromARGB(225, 167, 153, 153),
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
