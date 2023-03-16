import 'package:flutter/material.dart';
import 'package:fluttergsheet/button.dart';
import 'package:fluttergsheet/notes_grid.dart';
import 'package:fluttergsheet/textbox.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _controller = TextEditingController();

  void _post() {
    print(_controller.text);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 120),
          child: Text(
            'N  O  T  E  S',
            style: TextStyle(color: Colors.black),
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      backgroundColor: Colors.grey[300],
      body: Column(
        children: [
          NotesGrid(text: _controller.text, numberOfNotes: 7),
          Container(
              child: Column(
            children: [
              TextField(
                controller: _controller,
                decoration: InputDecoration(
                    hintText: 'enter..',
                    border: OutlineInputBorder(),
                    suffixIcon: IconButton(
                      icon: Icon(Icons.clear),
                      onPressed: () {
                        _controller.clear();
                      },
                    )),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('@ C r e a t e d b y A b e l'),
                  MyButton(text: 'P O S T', function: _post)
                ],
              )
            ],
          ))
        ],
      ),
    );
  }
}
