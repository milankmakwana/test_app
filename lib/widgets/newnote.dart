// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';


class NewNote extends StatelessWidget {
  final Function addNewNote;
  NewNote(this.addNewNote);
  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();
  void _submitData(BuildContext context) {
    final enteredtitle = _titleController.text;
    final entereddescription = _descriptionController.text;
    if (entereddescription.isEmpty || enteredtitle.isEmpty) {
      return;
    }
    addNewNote(enteredtitle, entereddescription);
    print(entereddescription);
    print(enteredtitle);
    Navigator.of(context).pop();
  }
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Card(
        elevation: 5,
        margin: EdgeInsets.all(10),
        child: Container(
          height: 400,
          margin: EdgeInsets.only(
              top: 10,
              left: 10,
              right: 10,
              bottom: MediaQuery.of(context).viewInsets.bottom + 10),
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              TextField(
                controller: _titleController,
                decoration: InputDecoration(
                  labelText: 'Title',
                  hintText: 'enter title here',
                ),
                onSubmitted: (_) => _submitData(context),
              ),
              Container(
                child: TextField(
                  controller: _descriptionController,
                  onSubmitted: (_) => _submitData(context),
                  decoration: InputDecoration(
                    labelText: 'Description',
                    hintText: 'enter desccription here',
                  ),
                ),
              ),
              SizedBox(
                height: 70,
              ),
              ElevatedButton(
                style: ButtonStyle(),
                onPressed: () => _submitData(context),
                child: Text('Submit'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
