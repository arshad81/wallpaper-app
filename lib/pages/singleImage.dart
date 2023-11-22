import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:wallpaper_app/components/appbar.dart';

class SingleImage extends StatelessWidget {
  const SingleImage({super.key});
  @override
  Widget build(BuildContext context) {
   final String message = ModalRoute.of(context)!.settings.arguments as String;
    Widget wallpaper = Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: NetworkImage(message),fit: BoxFit.cover)
      ),
    );

    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size(100, 50), child: myAppBar("")),
      body: wallpaper,
    );
  }
}
