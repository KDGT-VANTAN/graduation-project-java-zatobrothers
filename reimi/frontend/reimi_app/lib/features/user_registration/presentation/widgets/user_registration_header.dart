import 'package:flutter/material.dart';

class UserRegistrationHeader extends StatelessWidget {
  const UserRegistrationHeader({
    super.key,
    required this.currentPage,
    required this.totalPages,
    required this.onPressed,
  });
  final int currentPage;
  final int totalPages;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (currentPage == 1) ...[
          const SizedBox.shrink(),
        ] else ...[
          IconButton(
            onPressed: onPressed,
            icon: const Icon(Icons.arrow_back, color: Colors.white, size: 24),
          ),
        ],
        Expanded(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: LinearProgressIndicator(
              value: currentPage / totalPages,
              minHeight: 10,
              backgroundColor: Colors.white.withValues(alpha: 0.2),
              valueColor: AlwaysStoppedAnimation(
                Colors.white.withValues(alpha: 0.8),
              ),
            ),
          ),
        ),
        const SizedBox(width: 8),
        Text(
          "$currentPage/$totalPages",
          style: Theme.of(
            context,
          ).textTheme.labelMedium!.copyWith(color: Colors.white, fontSize: 16),
        ),
      ],
    );
  }
}
