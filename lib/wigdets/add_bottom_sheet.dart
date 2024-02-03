import 'package:flutter/material.dart';
import 'package:note_app/wigdets/custom_button.dart';
import 'package:note_app/wigdets/custom_text_field.dart';


class AddBottomSheet extends StatelessWidget {
  const AddBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 25),
      child: SingleChildScrollView(
        child: AddNoteForm(),
      ),
    );
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const Text(
            'Add Note',
            style: TextStyle(fontSize: 20),
          ),
          const SizedBox(
            height: 20,
          ),
          CustomTextField(
            onSaved: (value){
              title = value;
            },
            hintText: 'Title',
          ),
          const SizedBox(
            height: 15,
          ),
          CustomTextField(
            onSaved: (value){
              subtitle = value;
            },
            hintText: 'Description',
            maxLines: 5,
          ),
          const SizedBox(
            height: 30,
          ),
          CustomButton(
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
                print(title);
                print(subtitle);
              } else {
                setState(() {
                  //autovalidateMode = AutovalidateMode.onUserInteraction;
                });
              }
            },
          ),
        ],
      ),
    );
  }
}
