import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:ruh/shared/widgets/app_avatar.dart';

class AppCachedImage extends StatelessWidget {
  final String? imageUrl;
  final BoxFit fit;

  const AppCachedImage({
    super.key,
    required this.imageUrl,
    this.fit = BoxFit.cover,
  });

  @override
  Widget build(BuildContext context) {
    final url = resolveImageUrl(imageUrl);
    if (url == null) return const SizedBox();

    return CachedNetworkImage(
      imageUrl: url,
      fit: fit,
      placeholder: (_, _) => const SizedBox(),
      errorWidget: (_, _, _) => const SizedBox(),
    );
  }
}
