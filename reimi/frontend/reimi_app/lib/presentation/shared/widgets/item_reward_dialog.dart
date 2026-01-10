import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reimi_app/domain/read_models/reward_item.dart';
import 'package:reimi_app/i18n/strings.g.dart';

class ItemRewardDialog extends HookConsumerWidget {
  const ItemRewardDialog({
    super.key,
    required this.title,
    required this.rewards,
    required this.onClose,
  });

  final String title;
  final List<RewardItem> rewards;
  final VoidCallback onClose;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = Translations.of(context);
    final theme = Theme.of(context);
    final controller = useAnimationController(
      duration: const Duration(milliseconds: 420),
    );

    final scale = CurvedAnimation(
      parent: controller,
      curve: Curves.easeOutBack,
    );

    final fade = CurvedAnimation(
      parent: controller,
      curve: Curves.easeOut,
    );

    useEffect(() {
      controller.forward();
      return null;
    }, const []);

    return Center(
      child: FadeTransition(
        opacity: fade,
        child: ScaleTransition(
          scale: scale,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                width: 312,
                padding: const EdgeInsets.fromLTRB(24, 56, 24, 24),
                decoration: BoxDecoration(
                  color: const Color(0xFFF6FBFF),
                  borderRadius: BorderRadius.circular(28),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.18),
                      blurRadius: 30,
                      offset: const Offset(0, 16),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    _RewardRow(rewards: rewards),
                    const SizedBox(height: 16),
                    SizedBox(
                      width: 160,
                      height: 48,
                      child: ElevatedButton(
                        onPressed: onClose,
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          backgroundColor: const Color(0xFF7EC8FF),
                          shape: const StadiumBorder(),
                        ),
                        child: Text(
                          t.button.close,
                          style: theme.textTheme.labelMedium!.copyWith(
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: -20,
                left: -18,
                right: -18,
                child: CustomPaint(
                  painter: _RibbonPainter(),
                  child: SizedBox(
                    height: 52,
                    child: Center(
                      child: Text(
                        title,
                        style: theme.textTheme.titleMedium!.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          shadows: [
                            Shadow(
                              color: Colors.black.withValues(alpha: 0.25),
                              blurRadius: 4,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _RibbonPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final rect = Rect.fromLTWH(42, 0, size.width - 84, size.height);

    final paint = Paint()
      ..shader = const LinearGradient(
        colors: [
          Color(0xFFAEDBFF),
          Color(0xFFC6B7FF),
        ],
      ).createShader(rect);

    final rRect = RRect.fromRectAndRadius(
      rect,
      const Radius.circular(16),
    );

    canvas.drawRRect(rRect, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

// アイテム最大3種類まで表示可能
class _RewardRow extends StatelessWidget {
  const _RewardRow({required this.rewards});

  final List<RewardItem> rewards;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: rewards
          .map(
            (e) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                children: [
                  Container(
                    width: 72,
                    height: 72,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(18),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withValues(alpha: 0.12),
                          blurRadius: 10,
                          offset: const Offset(0, 6),
                        ),
                      ],
                    ),
                    child: Center(child: e.icon),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    e.amountText,
                    style: theme.textTheme.bodySmall!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          )
          .toList(),
    );
  }
}
