import 'package:flutter/material.dart';
import 'package:reimi_app/core/extensions/image_path_extension.dart';
import 'package:reimi_app/core/extensions/value_objects/address_extension.dart';
import 'package:reimi_app/data/models/home_user_model.dart';
import 'package:reimi_app/gen/assets.gen.dart';
import 'package:reimi_app/presentation/pages/home/widgets/circle_badge.dart';

class UserCard extends StatelessWidget {
  const UserCard({
    super.key,
    required this.user,
    required this.onTap,
  });

  final HomeUserModel user;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFFDDF5FB),
          // color: const Color(0xFFEAF4F6),
          borderRadius: BorderRadius.circular(20),
        ),
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: 0.9),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: AspectRatio(
                        aspectRatio: 1,
                        child: Image(
                          image: user.mainPhotoUrl.toImageProvider(),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 5,
                      right: 5,
                      child: CircleBadge(
                        color: Colors.white.withValues(alpha: 0.8),
                        size: 48,
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.white,
                              width: 1,
                            ),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Image(
                              image: Assets.images.weatherPersonality
                                  .nfieSoftOctopusImage.path
                                  .toImageProvider(),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 7,
                      right: 7,
                      child: CircleBadge(
                        color: theme.colorScheme.secondary,
                        size: 40,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              '99',
                              style: theme.textTheme.labelSmall!.copyWith(
                                fontSize: 13,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '%',
                              style: theme.textTheme.labelSmall!.copyWith(
                                fontSize: 10,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Text(
                  user.name,
                  style: theme.textTheme.bodySmall!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  ' (${DateTime.now().year - user.birthDate.year})',
                  style: theme.textTheme.bodySmall,
                ),
                if (true)
                  const Padding(
                    padding: EdgeInsets.only(left: 4),
                    child:
                        Icon(Icons.check_circle, color: Colors.green, size: 16),
                  ),
              ],
            ),
            const SizedBox(height: 4),
            Text(
              user.address.displayName(context),
              style: theme.textTheme.bodySmall!.copyWith(
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              user.introduction,
              style: theme.textTheme.bodySmall!.copyWith(
                fontSize: 10,
                color: Colors.black87.withValues(alpha: 0.6),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
