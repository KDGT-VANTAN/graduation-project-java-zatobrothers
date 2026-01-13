import 'package:freezed_annotation/freezed_annotation.dart';

enum AnnualIncome {
  @JsonValue('UNDER_2M')
  under2M,
  @JsonValue('BETWEEN_2M_TO_4M')
  between2And4M,
  @JsonValue('BETWEEN_4M_TO_6M')
  between4And6M,
  @JsonValue('BETWEEN_6M_TO_8M')
  between6And8M,
  @JsonValue('BETWEEN_8M_TO_10M')
  between8And10M,
  @JsonValue('BETWEEN_10M_TO_15M')
  between10And15M,
  @JsonValue('BETWEEN_15M_TO_20M')
  between15And20M,
  @JsonValue('BETWEEN_20M_TO_30M')
  between20And30M,
  @JsonValue('OVER_30M')
  over30M,
}
