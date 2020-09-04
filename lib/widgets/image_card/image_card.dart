import 'package:flutter/material.dart';

class ImageCard extends StatefulWidget {
  @override
  _ImageCardState createState() => _ImageCardState();
}

class _ImageCardState extends State<ImageCard> {
  @override
  Widget build(BuildContext context) {
    return new Container(
        child: Image.network(
      'https://images.pexels.com/photos/2363356/pexels-photo-2363356.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.60,
      fit: BoxFit.cover,
    ));
  }
}
