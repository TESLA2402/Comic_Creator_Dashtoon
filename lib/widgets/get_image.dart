import 'package:comic_creator_dashtoon/services/text_to_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class FetchImage extends StatefulWidget {
  final String imageText;
  final List<String> imagePaths;
  const FetchImage(
      {super.key, required this.imageText, required this.imagePaths});

  @override
  State<FetchImage> createState() => _FetchImageState();
}

class _FetchImageState extends State<FetchImage> {
  final GenerateImage _generateImage = GenerateImage();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 50,
      child: FutureBuilder(
        future:
            _generateImage.generateImage(widget.imageText, widget.imagePaths),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          } else if (snapshot.hasData) {
            return Image.memory(
              snapshot.data!,
              width: 50,
              height: 50,
            );
          } else {
            return const Text('No data available');
          }
        },
      ),
    );
  }
}
