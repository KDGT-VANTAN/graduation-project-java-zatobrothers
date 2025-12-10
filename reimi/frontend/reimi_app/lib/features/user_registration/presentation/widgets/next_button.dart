import 'package:flutter/material.dart';

class NextButton extends StatelessWidget {
  const NextButton({
    super.key,
    required this.label,
    required this.theme,
    required this.answered,
    required this.onPressed,
  });
  final String label;
  final ThemeData theme;
  final bool answered;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: answered ? onPressed : null,
        style: ElevatedButton.styleFrom(
          backgroundColor: answered
              ? Colors.white
              : Colors.white.withValues(alpha: 0.25),
          foregroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(vertical: 18),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: Text(
          label,
          style: theme.textTheme.labelLarge!.copyWith(
            fontWeight: FontWeight.bold,
            color: theme.colorScheme.primary,
          ),
        ),
      ),
    );
  }
}
