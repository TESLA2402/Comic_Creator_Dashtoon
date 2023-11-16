import 'package:comic_creator_dashtoon/services/text_to_image.dart';
import 'package:flutter/material.dart';

class FetchImage extends StatefulWidget {
  final String imageText;
  const FetchImage({super.key, required this.imageText});

  @override
  State<FetchImage> createState() => _FetchImageState();
}

class _FetchImageState extends State<FetchImage> {
  final GenerateImage _generateImage = GenerateImage();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 100,
      child: FutureBuilder(
        future: _generateImage.generateImage(widget.imageText),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const CircularProgressIndicator();
          } else if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          } else if (snapshot.hasData) {
            return Image.memory(snapshot.data!);
          } else {
            return const Text('No data available');
          }
        },
      ),
    );
  }
}
