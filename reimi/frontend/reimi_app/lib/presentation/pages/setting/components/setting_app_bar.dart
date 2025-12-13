import 'package:flutter/material.dart';

class SettingAppBar extends StatelessWidget {
  const SettingAppBar({
    super.key,
    required this.title,
    this.showBackButton = true,
    this.onBack,
  });
  final String title;
  final bool showBackButton;
  final VoidCallback? onBack;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        showBackButton
            ? IconButton(
                icon: const Icon(
                  Icons.arrow_back_ios,
                  size: 22,
                ),
                onPressed: onBack ?? () => Navigator.pop(context),
              )
            : const SizedBox.shrink(),
        Center(
          child: Text(
            title,
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: Colors.black87,
                ),
          ),
        ),
        const SizedBox(width: 44),
      ],
    );
  }
}
