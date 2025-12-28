import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.titleSmall!.copyWith(
            fontWeight: FontWeight.w600,
          ),
    );
  }
}

class SubSectionTitle extends StatelessWidget {
  const SubSectionTitle({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.titleSmall!.copyWith(
            fontSize: 10,
            fontWeight: FontWeight.w600,
            color: Colors.black.withValues(alpha: 0.4),
          ),
    );
  }
}
