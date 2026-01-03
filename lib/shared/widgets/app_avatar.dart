import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ruh/core/config/env_config.dart';
import 'package:ruh/core/utils/theme_extensions.dart';

String? resolveImageUrl(String? raw) {
  final v = raw?.trim();
  if (v == null || v.isEmpty) return null;
  if (v.startsWith('http://') || v.startsWith('https://')) return v;

  final base = EnvConfig.baseImageUrl.trim();
  if (base.isEmpty) return v;

  final baseNoSlash = base.endsWith('/')
      ? base.substring(0, base.length - 1)
      : base;
  final pathWithSlash = v.startsWith('/') ? v : '/$v';
  return '$baseNoSlash$pathWithSlash';
}

ImageProvider? cachedImageProviderFromUrl(String? rawUrl) {
  final url = resolveImageUrl(rawUrl);
  if (url == null) return null;
  return CachedNetworkImageProvider(url);
}

class AppAvatar extends StatelessWidget {
  final String? imageUrl;
  final double size;
  final IconData fallbackIcon;

  const AppAvatar({
    super.key,
    required this.imageUrl,
    required this.size,
    this.fallbackIcon = Icons.person,
  });

  @override
  Widget build(BuildContext context) {
    final provider = cachedImageProviderFromUrl(imageUrl);

    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: context.surfaceContainerHighest,
        border: Border.all(color: context.outline),
      ),
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        backgroundImage: provider,
        child: provider == null
            ? Icon(
                fallbackIcon,
                size: (size * 0.5).clamp(18.0, 64.0).sp,
                color: context.onSurfaceVariant,
              )
            : null,
      ),
    );
  }
}
