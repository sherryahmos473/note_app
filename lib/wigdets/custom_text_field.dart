import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hintText, this.maxLines = 1, this.onSaved});
  
  final String hintText;
  final int maxLines;
  final Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (value){
        if(value?.isEmpty ?? true){
          return 'This field is required';
        }
      },
        cursorColor: kPrimaryColor,
        maxLines: maxLines,
        decoration: InputDecoration(
            hintText: hintText,
            hintStyle: const TextStyle(color: kPrimaryColor),
            border: buildBorder(),
            enabledBorder: buildBorder(),
            focusedBorder: buildBorder(kPrimaryColor)));
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(
        color: color ?? Colors.white,
      ),
    );
  }
}
