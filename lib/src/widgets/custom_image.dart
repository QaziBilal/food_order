import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CustomImage extends StatelessWidget {
  String image;
  double width;
  double height;
  BoxFit fit;
  CustomImage(
      {required this.image,
      required this.width,
      required this.height,
      this.fit = BoxFit.cover,
      super.key});

  @override
  Widget build(BuildContext context) {
    return kIsWeb
        ? Image.network(
            "assets/$image",
            width: width,
            height: height,
            fit: fit,
          )
        : Image.asset(
            image,
            width: width,
            height: height,
            fit: fit,
          );
  }
}
