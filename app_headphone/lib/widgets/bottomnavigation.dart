import 'package:flutter/material.dart';

bottomNavigation() {
  return BottomAppBar(
      elevation: 20,
      color: Color.fromARGB(255, 0, 0, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          IconButton(onPressed: () {}, icon: Icon(Icons.home, color: Colors.white,)),
          IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart, color: Colors.white,)),
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications, color: Colors.white,)),
          IconButton(onPressed: () {}, icon: Icon(Icons.settings, color: Colors.white,)),
         
        ]),
      ));
}
