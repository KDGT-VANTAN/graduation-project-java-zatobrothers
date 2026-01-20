import 'package:flutter/material.dart';
import 'package:reimi_app/core/extensions/value_objects/address_extension.dart';
import 'package:reimi_app/core/extensions/value_objects/gender_extension.dart';
import 'package:reimi_app/domain/value_objects/address.dart';
import 'package:reimi_app/domain/value_objects/gender.dart';
import 'package:reimi_app/core/i18n/strings.g.dart';
import 'package:reimi_app/presentation/shared/utils/show_app_modal_bottom_sheet.dart';
import 'package:reimi_app/presentation/shared/widgets/app_modal_sheet.dart';

void showRefineSearchUserModalSheet({
  required BuildContext context,
  required void Function() onApply,
  required void Function() onClear,
}) {
  showAppModalBottomSheet(
    context: context,
    child: RefineSearchUserModalSheet(
      onApply: onApply,
      onClear: onClear,
    ),
  );
}

class RefineSearchUserModalSheet extends StatefulWidget {
  const RefineSearchUserModalSheet({
    super.key,
    required this.onApply,
    required this.onClear,
  });
  final void Function() onApply;
  final void Function() onClear;

  @override
  State<RefineSearchUserModalSheet> createState() =>
      _RefineSearchUserModalSheetState();
}

class _RefineSearchUserModalSheetState
    extends State<RefineSearchUserModalSheet> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final t = Translations.of(context);
    const initRangeValues = RangeValues(18, 100);
    RangeValues selectedRangeValues = initRangeValues;
    const addressItems = Address.values;
    const genderItems = Gender.values;
    return AppModalSheet(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            t.modalSheet.refineSearchUser.title,
            style: theme.textTheme.titleSmall!.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 16),
          const Divider(height: 1, thickness: 0.5),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _SectionTitle(t.modalSheet.refineSearchUser.section.age),
              Text(
                '${selectedRangeValues.start.round()}〜${selectedRangeValues.end.round()}歳',
                style: theme.textTheme.titleSmall!.copyWith(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Colors.black87,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          RangeSlider(
            values: selectedRangeValues,
            min: 18,
            max: 100,
            onChanged: (values) {
              setState(() {
                selectedRangeValues = values;
              });
            },
          ),
          const SizedBox(height: 20),
          _SectionTitle(t.modalSheet.refineSearchUser.section.address),
          const SizedBox(height: 8),
          Flexible(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Wrap(
                spacing: 8,
                runSpacing: 8,
                children: [
                  ...addressItems.map(
                    (e) => _Chip(label: e.displayName(context)),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          _SectionTitle(t.modalSheet.refineSearchUser.section.gender),
          const SizedBox(height: 8),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              ...genderItems.map(
                (e) => _Chip(label: e.displayName(context)),
              )
            ],
          ),
          const SizedBox(height: 20),
          _SectionTitle(
              t.modalSheet.refineSearchUser.section.weatherPersonality),
          const SizedBox(height: 8),
          const Flexible(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Wrap(
                spacing: 8,
                runSpacing: 8,
                children: [
                  // TODO: 仮実装
                  _Chip(label: '☀️ 晴れ'),
                  _Chip(label: '☁️ 曇り'),
                  _Chip(label: '🌧 雨'),
                  _Chip(label: '⚡ 雷'),
                  _Chip(label: '🌈 虹'),
                  _Chip(label: '❄️ 雪'),
                ],
              ),
            ),
          ),
          const SizedBox(height: 32),
          Row(
            children: [
              Expanded(
                child: SizedBox(
                  height: 52,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      backgroundColor: const Color(0xFFE5E7EB),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(26),
                      ),
                    ),
                    onPressed: widget.onClear,
                    child: Text(
                      t.button.clear,
                      style: theme.textTheme.labelLarge!.copyWith(
                        color: Colors.black87,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: SizedBox(
                  height: 52,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      backgroundColor: theme.colorScheme.primary,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(26),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                      widget.onApply();
                    },
                    child: Text(
                      t.button.apply,
                      style: theme.textTheme.labelLarge!.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _SectionTitle extends StatelessWidget {
  const _SectionTitle(this.text);
  final String text;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Text(
      text,
      style: theme.textTheme.titleSmall!.copyWith(
        fontSize: 12,
        color: Colors.black87,
      ),
    );
  }
}

class _Chip extends StatelessWidget {
  const _Chip({required this.label});
  final String label;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
      decoration: BoxDecoration(
        color: const Color(0xFFF4F4F5),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        label,
        style: theme.textTheme.labelSmall,
      ),
    );
  }
}
