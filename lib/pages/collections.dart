import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:wallpaper_app/components/appbar.dart';

class CollectionPage extends StatelessWidget {
  const CollectionPage({super.key});
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> title = [
      {
        "hero": "Cars",
        "description": "Text describing the first one",
        "image":
            "https://i.pinimg.com/236x/7b/51/5d/7b515d61106022a27c8c1b4ca9cf451d.jpg"
      },
      {
        "hero": "Second Image",
        "description": "Text describing the first one",
        "image":
            "https://i.pinimg.com/236x/7b/51/5d/7b515d61106022a27c8c1b4ca9cf451d.jpg"
      },
      {
        "hero": "Third Image",
        "description": "Text describing the first one",
        "image":
            "https://i.pinimg.com/236x/7b/51/5d/7b515d61106022a27c8c1b4ca9cf451d.jpg"
      },
      {
        "hero": "Fourth Image",
        "description": "Text describing the first one",
        "image":
            "https://i.pinimg.com/236x/7b/51/5d/7b515d61106022a27c8c1b4ca9cf451d.jpg"
      }
    ];
    // final title = ["one","two"];

    Widget dynamicList = ListView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: title.length,
        itemBuilder: (context, index) {
          return SizedBox(
            height: 200,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 6),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/innerPage', arguments:title);
                },
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(12)),
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      ClipRRect(
                        child: Image.network(
                          '${title[index]["image"]}',
                          fit: BoxFit.cover,
                          width: double.infinity,
                          height: double.infinity,
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: 
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade700.withOpacity(0.5)),
                        child: ClipRRect(
                          child: BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                              child: Padding(
                                padding: EdgeInsets.all(8),
                                child: Column(
                                  children: [
                                    Text('${title[index]["hero"]}',
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        )),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 8, bottom: 2),
                                      child: Text(
                                          '${title[index]["description"]}',
                                          style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 12)),
                                    )
                                  ],
                                ),
                              )),
                        ),
                      ))
                    ],
                  ),
                ),
              ),
            ),
          );
        });

    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size(100, 50), child: myAppBar("Free Walls")),
      body: dynamicList,
    );
  }
}
