import 'package:json_annotation/json_annotation.dart';

enum AnswerChoice {
  @JsonValue('STRONGLY_A')
  stronglyA(2),

  @JsonValue('SLIGHTLY_A')
  slightlyA(1),

  @JsonValue('SLIGHTLY_B')
  slightlyB(-1),

  @JsonValue('STRONGLY_B')
  stronglyB(-2);

  const AnswerChoice(this.score);

  final int score;
}
