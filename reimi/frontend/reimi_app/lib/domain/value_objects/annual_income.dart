import 'package:freezed_annotation/freezed_annotation.dart';

enum AnnualIncome {
  @JsonValue('UNDER_2M')
  under2M,
  @JsonValue('2M_TO_4M')
  between2And4M,
  @JsonValue('4M_TO_6M')
  between4And6M,
  @JsonValue('6M_TO_8M')
  between6And8M,
  @JsonValue('8M_TO_10M')
  between8And10M,
  @JsonValue('10M_TO_15M')
  between10And15M,
  @JsonValue('15M_TO_20M')
  between15And20M,
  @JsonValue('20M_TO_30M')
  between20And30M,
  @JsonValue('OVER_30M')
  over30M,
}
