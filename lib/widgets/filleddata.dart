// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, invalid_required_positional_param

import 'package:flutter/material.dart';
import '../models/note.dart';

class FilledData extends StatelessWidget {
  final List<Note> data;
  FilledData(this.data);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 650,
      child: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 5,
            child: ListTile(
              title: Text(data[index].title),
              subtitle: Text(data[index].description),
            ),
          );
        },
      ),
    );
  }
}
