import 'package:flutter/material.dart';
import 'package:wallpaper_app/components/appbar.dart';
import 'package:wallpaper_app/components/wallpaperGrid.dart';


class InnerPage extends StatelessWidget {
  const InnerPage({super.key});
  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> args =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;

    Widget content = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
      Text('${args['description']}'),
      Expanded(child: wallpaperGrid)
      
    ],);

    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size(100, 50), child: myAppBar('${args['title']}')),
      body: content,
    );
  }
}
