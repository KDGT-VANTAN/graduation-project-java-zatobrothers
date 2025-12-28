import 'package:flutter/material.dart';

class Gap extends StatelessWidget {
  const Gap({
    super.key,
    required this.height,
  });
  final double? height;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(child: SizedBox(height: height));
  }
}

class SliverSectionTitle extends StatelessWidget {
  const SliverSectionTitle({
    super.key,
    required this.title,
    required this.paddingHorizontal,
  });
  final String title;
  final double paddingHorizontal;

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.symmetric(horizontal: paddingHorizontal),
      sliver: SliverToBoxAdapter(
        child: Text(
          title,
          style: Theme.of(context).textTheme.titleSmall!.copyWith(
                fontWeight: FontWeight.w600,
              ),
        ),
      ),
    );
  }
}
