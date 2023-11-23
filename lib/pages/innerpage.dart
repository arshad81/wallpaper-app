import 'package:flutter/material.dart';
import 'package:wallpaper_app/components/appbar.dart';

class InnerPage extends StatelessWidget {
  const InnerPage({super.key});
  @override
  Widget build(BuildContext context) {
        final Map<String, dynamic> item = ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
        

    // Widget content =  wallpaperGrid;
    Widget content =  Text(item['hero']);


    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size(100, 50),
          child: myAppBar('${item['title']}')),
      body: content,
    );
  }
}
