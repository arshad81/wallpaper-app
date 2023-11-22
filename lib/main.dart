import 'package:flutter/material.dart';
import 'package:wallpaper_app/pages/home.dart';
import 'package:wallpaper_app/pages/collections.dart';
import 'package:wallpaper_app/pages/innerpage.dart';
import 'package:wallpaper_app/pages/singleImage.dart';


void main() {
  runApp(
    MaterialApp(
      title: 'Named Routes Demo',
      // Start the app with the "/" named route. In this case, the app starts
      // on the FirstScreen widget.
      initialRoute: '/collection',
      routes: {
        '/collection': (context) => const CollectionPage(),
        '/homepage': (context) => const HomePage(),
        '/innerPage': (context) => const InnerPage(),
        '/singleImage': (context) => const SingleImage(),

      },
    ),
  );
}