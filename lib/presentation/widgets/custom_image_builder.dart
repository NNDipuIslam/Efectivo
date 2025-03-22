import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomImageWidget extends StatelessWidget {
  final String imagePath; // The path of the image
  final double width; // The width of the image
  final double height; // The height of the image
  final BoxFit
      fit; // The fit of the image (BoxFit contains different types of scaling, like fill, contain, etc.)
  final Alignment alignment; // The alignment of the image
  final Color? color; // The color to blend with the image (for tinting)
  final String? semanticsLabel; // Accessibility label for the image
  final Gradient? gradient; // The gradient to apply to the image

  // Constructor to initialize image path, width, height, and all new parameters
  const CustomImageWidget({
    Key? key,
    required this.imagePath,
    this.width = 100.0,
    this.height = 100.0,
    this.fit = BoxFit.contain,
    this.alignment = Alignment.center,
    this.color,
    this.semanticsLabel,
    this.gradient, // New parameter for gradient
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget imageWidget;

    // Check if the image is an SVG by checking the file extension
    if (imagePath.endsWith('.svg')) {
      // Use SvgPicture to load SVG images
      imageWidget = SvgPicture.asset(
        imagePath,
        width: width,
        height: height,
        fit: fit,
        alignment: alignment,
        color: color,
        semanticsLabel: semanticsLabel,
      );
    } else {
      // Use Image.asset for non-SVG images (like PNG, JPG, etc.)
      imageWidget = Image.asset(
        imagePath,
        width: width,
        height: height,
        fit: fit,
        alignment: alignment,
        color: color,
      );
    }

    // If a gradient is provided, wrap the image with a ShaderMask
    if (gradient != null) {
      return ShaderMask(
        shaderCallback: (bounds) {
          return gradient!.createShader(bounds);
        },
        child: imageWidget,
      );
    }

    // Return the image widget without any gradient if none is provided
    return imageWidget;
  }
}
