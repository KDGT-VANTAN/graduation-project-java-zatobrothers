import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:reimi_app/features/profile/presentation/widgets/circle_icon_button.dart';

class AccountHeader extends StatelessWidget {
  const AccountHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CircleIconButton(
            icon: const Icon(LineIcons.bell),
            onPressed: () {},
          ),
          const SizedBox(width: 16),
          CircleIconButton(
            icon: const Icon(LineIcons.cog),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
