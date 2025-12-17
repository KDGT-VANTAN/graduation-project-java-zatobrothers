import 'package:freezed_annotation/freezed_annotation.dart';

enum Education {
  @JsonValue('HIGH_SCHOOL_GRADUATE')
  highSchoolGraduate,
  @JsonValue('JUNIOR_COLLEGE_GRADUATE')
  juniorCollegeGraduate,
  @JsonValue('VOCATIONAL_SCHOOL_GRADUATE')
  vocationalSchoolGraduate,
  @JsonValue('TECHNICAL_COLLEGE_GRADUATE')
  technicalCollegeGraduate,
  @JsonValue('UNIVERSITY_GRADUATE')
  universityGraduate,
  @JsonValue('GRADUATE_SCHOOL_GRADUATE')
  graduateSchoolGraduate,
  @JsonValue('OTHER')
  other,
}