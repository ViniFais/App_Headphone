import 'package:flutter/material.dart';

categoria() {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      children: <Widget>[
        SizedBox(width: 15),
        Card(
          elevation: 5,
          color: Colors.black,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Todos',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        Card(
          color: Color.fromARGB(255, 199, 199, 199),
          elevation: 5,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Headphones',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
        Card(
          color: Color.fromARGB(255, 199, 199, 199),
          elevation: 5,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Fones de ouvido',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
        Card(
          color: Color.fromARGB(255, 199, 199, 199),
          elevation: 5,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Speakers',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
        Card(
          color: Color.fromARGB(255, 199, 199, 199),
          elevation: 5,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'JBL',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
        SizedBox(width: 15),
      ],
    ),
  );
}
