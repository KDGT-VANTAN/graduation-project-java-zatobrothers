import 'package:flutter/material.dart';

class AnswerOptionCard extends StatelessWidget {
  const AnswerOptionCard({
    super.key,
    required this.label,
    required this.onTap,
    required this.isSelected,
  });

  final String label;
  final void Function()? onTap;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return InkWell(
      borderRadius: BorderRadius.circular(20),
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color(0xFF4A5F72),
          border: isSelected
              ? Border.all(
                  color: Colors.white,
                  width: 2,
                )
              : null,
        ),
        padding: const EdgeInsets.all(20),
        width: double.infinity,
        child: Text(
          label,
          style: theme.textTheme.labelMedium!.copyWith(
            color: Colors.white,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
