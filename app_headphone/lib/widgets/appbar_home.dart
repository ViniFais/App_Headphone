import 'package:flutter/material.dart';

appBarHome() {
  return AppBar(
    backgroundColor: Colors.transparent,
    leading: IconButton(onPressed: (){}, icon: Icon(Icons.menu),),
    title: Text(
      'Headphone',
      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)
      //style: TextStyle(fontWeight: FontWeight.bold),
    ),
    centerTitle: true,
    actions: [
      Padding(
          padding: EdgeInsets.only(right: 8),
          child: Card(
              elevation: 5,
              color: Color.fromARGB(255, 182, 182, 182),
              child: Padding(
                padding: EdgeInsets.all(4),
                child: IconButton(icon: Icon(Icons.person), onPressed: () {}),
              )))
    ],
  );
}
