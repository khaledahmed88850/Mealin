import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomRecipeImage extends StatelessWidget {
  const CustomRecipeImage({
    super.key,
    required this.imageUrl,
    this.onPressed,
    this.aspectRatio = 1.1,
  });
  final String imageUrl;

  final void Function()? onPressed;
  final double aspectRatio;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Column(
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: AspectRatio(
                aspectRatio: aspectRatio,
                child: CachedNetworkImage(
                  imageUrl: imageUrl,
                  errorWidget: (context, url, error) =>
                      const Icon(Icons.error_outline),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
