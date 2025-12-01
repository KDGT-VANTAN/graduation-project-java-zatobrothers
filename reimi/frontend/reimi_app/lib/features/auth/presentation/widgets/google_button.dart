import 'package:flutter/material.dart';
import 'package:reimi_app/gen/assets.gen.dart';

class GoogleButton extends StatelessWidget {
  const GoogleButton({
    super.key,
    required this.text,
    required this.onTap,
  });
  final String text;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 54,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(28),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Assets.images.logo.icons8Google.image(
              fit: BoxFit.cover,
              width: 22,
            ),
            const SizedBox(width: 8),
            Text(
              text,
              style: Theme.of(context).textTheme.labelLarge!.copyWith(
                    color: const Color(0xFF444444),
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
