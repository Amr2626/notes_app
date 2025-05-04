import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 15, bottom: 24, top: 24),
      decoration: BoxDecoration(
        color: Color(0xffFFCC80),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: const Text(
              'Flutter Tips',
              style: TextStyle(color: Colors.black, fontSize: 26),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 25, bottom: 25),
              child: const Text(
                'Build your carrer with amr kamel and flutter',
                style: TextStyle(
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
            child: const Text(
              'May 2019',
              style: TextStyle(
                color: Color.fromARGB(225, 167, 153, 153),
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
