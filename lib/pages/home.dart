import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:wallpaper_app/components/appbar.dart';
import 'package:wallpaper_app/components/wallpaperGrid.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    

    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size(100, 50), child: myAppBar("Free Walls")),
      body: wallpaperGrid,
    );
  }
}
