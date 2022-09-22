// ignore_for_file: prefer_const_constructors, sort_child_properties_last, use_key_in_widget_constructors, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:test_app/widgets/newnote.dart';
import '../widgets/filleddata.dart';
import '../models/note.dart';


class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Note> _userNote = [];

   
   // ignore: unused_field
  

  _addNewNote(String title, String description) {
    final newnote = Note(title, description);
    
    setState(() {
      _userNote.add(newnote);
    });
  }

  void startAddNewNote(BuildContext ctx) {
    showModalBottomSheet(
        context: ctx,
        builder: (cntx) {
          return GestureDetector(
            child: NewNote(_addNewNote),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Bosc-test-app',
          style: TextStyle(
            fontFamily: 'OpenSans',
          ),
        ),
        actions: [
          IconButton(
            onPressed: () => startAddNewNote(context),
            icon: Icon(
              Icons.add,
              color: Colors.black,
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => startAddNewNote(context),
        child: Container(
          width: 60,
          height: 60,
          child: Icon(
            Icons.add,
            size: 25,
          ),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              // ignore: prefer_const_literals_to_create_immutables
              colors: [
                Color(0xffB1B2FF),
                Color(0xffEEF1FF),
              ],
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            SingleChildScrollView(
              child: FilledData(_userNote),
            ),
          ],
        ),
      
    );
  }
}
