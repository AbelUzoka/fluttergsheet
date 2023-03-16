import 'package:flutter/material.dart';
import 'package:fluttergsheet/textbox.dart';

class NotesGrid extends StatelessWidget {
  final text;
  final numberOfNotes;

  NotesGrid({required this.text, required this.numberOfNotes});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
          itemCount: numberOfNotes,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
          itemBuilder: (BuildContext context, int index) {
            return MyTextBox(text: text);
          }),
    );
  }
}
