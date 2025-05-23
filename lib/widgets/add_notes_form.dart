import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:notes/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes/models/note_model.dart';
import 'package:notes/widgets/custom_botton.dart';
import 'package:notes/widgets/custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(height: 35),
          CustomTextField(
            onsaved: (value) {
              title = value;
            },
            hint: 'Title',
          ),
          const SizedBox(height: 15),
          CustomTextField(
            onsaved: (value) {
              subtitle = value;
            },
            hint: 'Content',
            maxlines: 5,
          ),
          const SizedBox(height: 30),
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return CustomBottom(
                isloading: state is AddNoteLoading ? true : false,
                ontap: () {
                  if (formkey.currentState!.validate()) {
                    formkey.currentState!.save();
                    var currentDate = DateTime.now();
                    var formattedCurrentDate = DateFormat.yMEd().format(
                      currentDate,
                    );
                    var notemodel = NoteModel(
                      title: title!,
                      subtitle: subtitle!,
                      date: formattedCurrentDate,
                      color: const Color.fromARGB(255, 9, 5, 228).value,
                    );

                    BlocProvider.of<AddNoteCubit>(context).addNote(notemodel);
                  } else {
                    setState(() {
                      autovalidateMode = AutovalidateMode.always;
                    });
                  }
                },
              );
            },
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}





























// class AddNoteForm extends StatefulWidget {
//   const AddNoteForm({super.key});
  
//    final GlobalKey<FormState> formkey = GlobalKey();
   
//    AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

//    String? title , subtitle;

//   @override
//   State<StatefulWidget> createState() => _AddNoteFormState();
// }

// class _AddNoteFormState extends State<AddNoteForm> {
//   @override
//   Widget build(BuildContext context) {
//     return Form(
//       key: formkey,
//       autovalidateMode: autovalidateMode,
//       child: Column(
//         children: [
//           SizedBox(height: 35),
//           CustomTextField(
//             onsaved: (value) {
//               title = value;
//             },
//             hint: 'Title',
//           ),
//           SizedBox(height: 15),

//           CustomTextField(
//             onsaved: (value) {
//               subtitle = value;
//             },
//             hint: 'content',
//             maxlines: 5,
//           ),

//           SizedBox(height: 30),

//           CustomBottom(
//             ontap: () {
//               if (formkey.currentState!.validate()) {
//                 formkey.currentState!.save();
//               } else {
//                 autovalidateMode = AutovalidateMode.always;
//                 setState(() {});
//               }
//             },
//           ),

//           SizedBox(height: 20),
//         ],
//       ),
//     );
//   }
// }
