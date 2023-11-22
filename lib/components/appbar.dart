import 'package:flutter/material.dart';

Widget myAppBar(String title){
  return AppBar(
      backgroundColor: Colors.white,
      shadowColor: Colors.transparent,
      //background color of Appbar to green
      title: Text(title,style: const TextStyle(
        color: Colors.black,
        fontSize: 28,
        fontWeight: FontWeight.bold
      ),),
      
   );
}