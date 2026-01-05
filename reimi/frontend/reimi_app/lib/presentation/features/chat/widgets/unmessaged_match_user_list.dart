import 'package:flutter/material.dart';
import 'package:reimi_app/core/extensions/image_path_extension.dart';
import 'package:reimi_app/data/models/unmessaged_match_user_model.dart';

class UnmessagedMatchUserList extends StatelessWidget {
  const UnmessagedMatchUserList({
    super.key,
    required this.users,
    required this.onTap,
  });
  final List<UnmessagedMatchUserModel> users;
  final void Function(String userId) onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SizedBox(
      height: 86,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return GestureDetector(
            onTap: () {
              onTap(users[index].id);
            },
            child: Container(
              width: 86,
              height: 86,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: theme.colorScheme.secondary,
                  width: 3,
                ),
                color: Colors.transparent,
              ),
              child: CircleAvatar(
                backgroundColor: Colors.transparent,
                child: CircleAvatar(
                  radius: 38,
                  backgroundImage: users[index].mainPhotoUrl.toImageProvider(),
                ),
              ),
            ),
          );
        },
        separatorBuilder: (_, __) => const SizedBox(width: 8),
        itemCount: users.length,
      ),
    );
  }
}
