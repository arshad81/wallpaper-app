import 'package:flutter/material.dart';

final homeWalls = [
  {
    "image":
        "https://images.pexels.com/photos/1366919/pexels-photo-1366919.jpeg?auto=compress&cs=tinysrgb&w=1600"
  },
  {
    "image":
        "https://images.pexels.com/photos/799443/pexels-photo-799443.jpeg?auto=compress&cs=tinysrgb&w=1600"
  },
  {
    "image":
        "https://images.pexels.com/photos/1624496/pexels-photo-1624496.jpeg?auto=compress&cs=tinysrgb&w=1600"
  },
  {
    "image":
        "https://images.pexels.com/photos/1535162/pexels-photo-1535162.jpeg?auto=compress&cs=tinysrgb&w=1600"
  },
  {
    "image":
        "https://images.pexels.com/photos/1366919/pexels-photo-1366919.jpeg?auto=compress&cs=tinysrgb&w=1600"
  },
  {
    "image":
        "https://images.pexels.com/photos/799443/pexels-photo-799443.jpeg?auto=compress&cs=tinysrgb&w=1600"
  },
  {
    "image":
        "https://images.pexels.com/photos/1624496/pexels-photo-1624496.jpeg?auto=compress&cs=tinysrgb&w=1600"
  },
  {
    "image":
        "https://images.pexels.com/photos/1535162/pexels-photo-1535162.jpeg?auto=compress&cs=tinysrgb&w=1600"
  }
];

Widget wallpaperGrid = Padding(
  padding: EdgeInsets.all(3),
  child: Container(
  child: GridView.builder(
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, childAspectRatio: 0.75),
      itemCount: homeWalls.length,
      itemBuilder: (context, index) {
        return GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/singleImage',
                  arguments: '${homeWalls[index]["image"]}');
            },
            child: Padding(
              padding: const EdgeInsets.all(3),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(18),
                child: Image.network(
                  '${homeWalls[index]["image"]}',
                  fit: BoxFit.cover,
                ),
              ),
            ));
      }),
));
