import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reimi_app/i18n/strings.g.dart';
import 'package:reimi_app/presentation/shared/widgets/background_container_noon.dart';

class ProfileEditPage extends HookConsumerWidget {
  static String get routeName => 'profile_edit';
  static String get routeLocation => '/$routeName';
  const ProfileEditPage({
    super.key,
    required this.title,
    required this.initValue,
    required this.onSave,
    required this.isMultiline,
  });
  final String title;
  final String? initValue;
  final void Function(String value) onSave;
  final bool isMultiline;

  static const int maxLength = 500;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final t = Translations.of(context);
    final controller = useTextEditingController(text: initValue);
    final textLength = useState(0);

    useEffect(() {
      controller.addListener(() {
        textLength.value = controller.text.length;
      });
      return null;
    }, []);

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(
          title,
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: Colors.black87,
              ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: BackgroundContainerNoon(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                const SizedBox(height: 16),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                  decoration: BoxDecoration(
                    color: Colors.white.withValues(alpha: 0.7),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: TextField(
                    controller: controller,
                    maxLines: isMultiline ? null : 1,
                    keyboardType: isMultiline
                        ? TextInputType.multiline
                        : TextInputType.text,
                    style: theme.textTheme.bodyLarge!.copyWith(
                      color: Colors.black87,
                      height: 1.6,
                    ),
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                isMultiline
                    ? Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          '${controller.text.length} / $maxLength',
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall
                              ?.copyWith(color: Colors.black54),
                        ),
                      )
                    : const SizedBox.shrink(),
                const Spacer(),
                SizedBox(
                  width: double.infinity,
                  height: 56,
                  child: ElevatedButton(
                    onPressed: controller.text.isNotEmpty
                        ? () {
                            onSave(controller.text);
                            context.pop();
                          }
                        : null,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: theme.colorScheme.primary,
                      disabledBackgroundColor:
                          theme.colorScheme.primary.withValues(alpha: 0.4),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(28),
                      ),
                      elevation: 0,
                    ),
                    child: Text(
                      t.button.save,
                      style: theme.textTheme.labelLarge!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 32),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
