import 'package:flutter/material.dart';

class MainPhotoCard extends StatelessWidget {
  const MainPhotoCard({
    super.key,
    required this.image,
    required this.onTap,
  });
  final ImageProvider<Object>? image;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(2),
        decoration: BoxDecoration(
          color: Colors.white.withValues(alpha: 0.9),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: Colors.white,
            width: 2,
          ),
        ),
        child: image != null
            ? ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: AspectRatio(
                  // 正方形
                  aspectRatio: 1,
                  child: Image(
                    image: image!,
                    fit: BoxFit.cover,
                  ),
                ),
              )
            : null,
      ),
    );
  }
}
