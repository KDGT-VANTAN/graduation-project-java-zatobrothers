import 'package:flutter/material.dart';
import 'package:reimi_app/domain/value_objects/annual_income.dart';
import 'package:reimi_app/i18n/strings.g.dart';

extension AnnualIncomeExtension on AnnualIncome {
  String displayName(BuildContext context) {
    final t = Translations.of(context).kEnum.annualIncome;
    switch (this) {
      case AnnualIncome.under2M:
        return t.under2M;
      case AnnualIncome.between2And4M:
        return t.between2And4M;
      case AnnualIncome.between4And6M:
        return t.between4And6M;
      case AnnualIncome.between6And8M:
        return t.between6And8M;
      case AnnualIncome.between8And10M:
        return t.between8And10M;
      case AnnualIncome.between10And15M:
        return t.between10And15M;
      case AnnualIncome.between15And20M:
        return t.between15And20M;
      case AnnualIncome.between20And30M:
        return t.between20And30M;
      case AnnualIncome.over30M:
        return t.over30M;
    }
  }
}
