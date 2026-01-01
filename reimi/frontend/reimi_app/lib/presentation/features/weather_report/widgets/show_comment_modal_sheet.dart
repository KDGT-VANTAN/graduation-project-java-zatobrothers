import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:reimi_app/i18n/strings.g.dart';
import 'package:reimi_app/presentation/shared/utils/show_app_modal_bottom_sheet.dart';
import 'package:reimi_app/presentation/shared/widgets/app_modal_sheet.dart';

void showCommentModalSheet(BuildContext context) {
  showAppModalBottomSheet(
    context: context,
    child: const CommentModalSheet(),
  );
}

class CommentModalSheet extends StatelessWidget {
  const CommentModalSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final t = Translations.of(context);
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
          ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height * 0.5,
            ),
            child: const _CommentList(),
          ),
          const Divider(height: 1, thickness: 0.5),
          const _InputField(),
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
  const _InputField();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom + 8,
        top: 8,
      ),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 18,
            backgroundImage: NetworkImage(
              'https://odm-shop.talkingheads.biz/cdn/shop/files/ODM___0926c___2048x2048_bb7644ab-436e-408f-adda-cecfdf09e2ac_2048x.jpg?v=1697105317',
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(24),
                border: Border.all(
                  color: theme.colorScheme.primary,
                  width: 1.4,
                ),

                // border: inputText.isNotEmpty
                //     ? Border.all(
                //         color: theme.colorScheme.primary,
                //         width: 1.4,
                //       )
                //     : null,
              ),
              child: TextField(
                // controller: controller,
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
                onChanged: (value) {
                  // notifier.updateInput(value);
                },
              ),
            ),
          ),
          const SizedBox(width: 8),
          GestureDetector(
            child: Transform.rotate(
              angle: -0.785,
              child: Icon(
                LineIcons.paperPlane,
                // color: inputText.isEmpty ? Colors.black38 : Colors.white,
                color: theme.colorScheme.primary,
                size: 26,
              ),
            ),
            onTap: () async {
              // await notifier.sendMessage();
              // controller.clear();
            },
          )
        ],
      ),
    );
  }
}
