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

class _FetchImageState extends State<FetchImage>
    with AutomaticKeepAliveClientMixin {
  final GenerateImage _generateImage = GenerateImage();
  Future<Uint8List>? finalData;
  @override
  void initState() {
    setState(() {
      finalData =
          _generateImage.generateImage(widget.imageText, widget.imagePaths);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return FutureBuilder(
      future: //finalData,
          _generateImage.generateImage(widget.imageText, widget.imagePaths),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return const Image(
              image: AssetImage("assets/random_comic_panel.jpg"));

          //Text('Error: ${snapshot.error}');
        } else if (snapshot.hasData) {
          return Image.memory(
            snapshot.data!,
          );
        } else {
          return const Text('No data available');
        }
      },
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
