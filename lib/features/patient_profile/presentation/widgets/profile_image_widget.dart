import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ruh/core/config/env_config.dart';
import 'package:ruh/core/utils/theme_extensions.dart';
import 'package:ruh/shared/widgets/app_loader.dart';

class ProfileImageWidget extends StatelessWidget {
  final String? imageUrl;
  final Function(File) onImageSelected;
  final VoidCallback onDeleteImage;

  const ProfileImageWidget({
    super.key,
    this.imageUrl,
    required this.onImageSelected,
    required this.onDeleteImage,
  });

  Future<void> _pickImage(BuildContext context) async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      onImageSelected(File(pickedFile.path));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Container(
            width: 120.w,
            height: 120.w,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: context.tertiary,
              border: Border.all(color: context.primary, width: 2.w),
            ),
            child: ClipOval(
              child: imageUrl != null && imageUrl!.isNotEmpty
                  ? CachedNetworkImage(
                      imageUrl: EnvConfig.baseImageUrl + imageUrl!,
                      fit: BoxFit.cover,
                      placeholder: (context, url) =>
                          const Center(child: AppLoader()),
                      errorWidget: (context, url, error) =>
                          const Icon(Icons.person),
                    )
                  : Icon(Icons.person, size: 60.w, color: context.primary),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: GestureDetector(
              onTap: () => _pickImage(context),
              child: Container(
                padding: EdgeInsets.all(8.w),
                decoration: BoxDecoration(
                  color: context.primary,
                  shape: BoxShape.circle,
                ),
                child: Icon(Icons.camera_alt, color: Colors.white, size: 20.w),
              ),
            ),
          ),
          if (imageUrl != null && imageUrl!.isNotEmpty)
            Positioned(
              bottom: 0,
              left: 0,
              child: GestureDetector(
                onTap: onDeleteImage,
                child: Container(
                  padding: EdgeInsets.all(8.w),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(Icons.delete, color: Colors.white, size: 20.w),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
