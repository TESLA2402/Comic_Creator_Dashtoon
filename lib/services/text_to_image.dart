import 'dart:convert';
import 'dart:typed_data';
import 'package:http/http.dart' as http;

class GenerateImage {
  Future<Uint8List> generateImage(
      String inputText, List<String> imagePaths) async {
    const apiUrl =
        "https://api-inference.huggingface.co/models/CompVis/stable-diffusion-v1-4";
    "https://xdwvg9no7pefghrn.us-east-1.aws.endpoints.huggingface.cloud";
    final headers = {
      "Accept": "image/png",
      "Authorization": "Bearer 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",
      // "Authorization":
      //     "Bearer VknySbLLTUjbxXAXCjyfaFIPwUTCeRXbFSOjwRiCxsxFyhbnGjSFalPKrpvvDAaPVzWEevPljilLVDBiTzfIbWFdxOkYJxnOPoHhkkVGzAknaOulWggusSFewzpqsNWM",

      "Content-Type": "application/json",
      "Access-Control-Allow-Origin": "*",
      "Access-Control-Allow-Methods": "POST, GET, OPTIONS, PUT, DELETE, HEAD",
    };

    final data = {"inputs": inputText};

    final response = await http.post(
      Uri.parse(apiUrl),
      headers: headers,
      body: jsonEncode(data),
    );
    await Future.delayed(const Duration(seconds: 30), () {});
    if (response.statusCode == 200) {
      return response.bodyBytes;
    } else {
      throw Exception('Failed to generate image');
    }
  }
}
