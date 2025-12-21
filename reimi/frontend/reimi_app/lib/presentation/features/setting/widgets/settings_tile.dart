import 'package:flutter/material.dart';

class SettingsTile extends StatelessWidget {
  const SettingsTile({
    super.key,
    required this.title,
    required this.onTap,
    required this.shouldNavigate,
  });

  final String title;
  final void Function()? onTap;
  final bool shouldNavigate;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(20),
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 14,
        ),
        decoration: BoxDecoration(
          color: Colors.white.withValues(alpha: 0.7),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            Expanded(
              child: Text(
                title,
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      fontSize: 13,
                      color: Colors.black87,
                    ),
              ),
            ),
            shouldNavigate
                ? const Icon(
                    Icons.chevron_right,
                    color: Colors.black54,
                  )
                : const SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}
