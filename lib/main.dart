import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Images in Flutter',
          ),
        ),
        body: ListView(
          children: [
            CachedNetworkImage(
              placeholder: (context, url) {
                return Image(image: AssetImage('asset/image/placeolder.jpg'));
              },
              imageUrl:
                  'https://www.shutterstock.com/image-photo/portrait-crawling-baby-on-bed-her-189429203',
            ),
            Image.asset(
              'assets/images/sea_pic.jpg',
            ),
            Image(
              image: AssetImage(
                'assets/images/sea_pic.jpg',
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
