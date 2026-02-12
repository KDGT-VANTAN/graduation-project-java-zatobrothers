import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:line_icons/line_icons.dart';
import 'package:reimi_app/core/i18n/strings.g.dart';
import 'package:reimi_app/presentation/features/weather_report/notifiers/weather_report_detail_notifier.dart';
import 'package:reimi_app/presentation/shared/utils/show_app_modal_bottom_sheet.dart';
import 'package:reimi_app/presentation/shared/widgets/app_modal_sheet.dart';

void showCommentModalSheet({
  required BuildContext context,
  required WeatherReportDetailNotifier notifier,
}) {
  showAppModalBottomSheet(
    context: context,
    child: CommentModalSheet(notifier: notifier),
  );
}

class CommentModalSheet extends HookConsumerWidget {
  const CommentModalSheet({
    super.key,
    required this.notifier,
  });
  final WeatherReportDetailNotifier notifier;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final t = Translations.of(context);
    final controller = useTextEditingController();
    final comment = ref.watch(
        weatherReportDetailNotifierProvider.select((state) => state.comment));

    return AppModalSheet(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            t.modalSheet.comment.title,
            style: theme.textTheme.titleSmall!.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 16),
          const Divider(height: 1, thickness: 0.5),
          const SizedBox(height: 16),
          Flexible(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxHeight: MediaQuery.of(context).size.height * 0.5,
              ),
              child: const _CommentList(),
            ),
          ),
          const Divider(height: 1, thickness: 0.5),
          _InputField(
            comment: comment,
            controller: controller,
            onChanged: (value) {
              notifier.inputComment(value);
            },
            onSendButton: notifier.sendMessage,
          ),
        ],
      ),
    );
  }
}

class _CommentList extends StatelessWidget {
  const _CommentList();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return const _CommentTile();
      },
    );
  }
}

class _CommentTile extends StatelessWidget {
  const _CommentTile();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CircleAvatar(
            radius: 18,
            backgroundImage: NetworkImage(
              'https://odm-shop.talkingheads.biz/cdn/shop/files/ODM___0926c___2048x2048_bb7644ab-436e-408f-adda-cecfdf09e2ac_2048x.jpg?v=1697105317',
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'username ・16時間',
                  style: theme.textTheme.bodySmall!.copyWith(
                    fontSize: 12,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  '今後の人生、年一回近場でもいいから一緒に旅行することを目標にしたい',
                  style: theme.textTheme.bodySmall!.copyWith(
                    fontSize: 13,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 8),
          Column(
            children: [
              const SizedBox(height: 16),
              const Icon(Icons.favorite_border, size: 18),
              const SizedBox(height: 2),
              Text(
                '189',
                style: theme.textTheme.labelSmall!.copyWith(fontSize: 10),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _InputField extends StatelessWidget {
  const _InputField({
    required this.comment,
    required this.controller,
    required this.onChanged,
    required this.onSendButton,
  });
  final String? comment;
  final TextEditingController controller;
  final void Function(String)? onChanged;
  final void Function()? onSendButton;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      children: [
        const CircleAvatar(
          radius: 18,
          backgroundImage: NetworkImage(
            'https://odm-shop.talkingheads.biz/cdn/shop/files/ODM___0926c___2048x2048_bb7644ab-436e-408f-adda-cecfdf09e2ac_2048x.jpg?v=1697105317',
          ),
        ),
        const SizedBox(width: 8),
        Flexible(
          child: Container(
            height: 48,
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(24),
              border: comment == null || comment!.isEmpty
                  ? Border.all(
                      color: Colors.black38,
                      width: 1.4,
                    )
                  : Border.all(
                      color: theme.colorScheme.primary,
                      width: 1.4,
                    ),
            ),
            child: TextField(
              controller: controller,
              minLines: 1,
              maxLines: 3,
              cursorColor: comment == null || comment!.isEmpty
                  ? Colors.black38
                  : theme.colorScheme.primary,
              keyboardType: TextInputType.text,
              style: theme.textTheme.bodySmall!.copyWith(
                color: Colors.black87,
              ),
              decoration: InputDecoration(
                hintText: t.modalSheet.comment.placeHolder,
                hintStyle: theme.textTheme.bodySmall!.copyWith(
                  color: Colors.black38,
                ),
                border: InputBorder.none,
              ),
              onChanged: onChanged,
            ),
          ),
        ),
        const SizedBox(width: 8),
        GestureDetector(
          child: Transform.rotate(
            angle: -0.785,
            child: Icon(
              LineIcons.paperPlane,
              color: comment == null || comment!.isEmpty
                  ? Colors.black38
                  : theme.colorScheme.primary,
              size: 26,
            ),
          ),
          onTap: () {
            onSendButton;
            controller.clear();
          },
        )
      ],
    );
  }
}
