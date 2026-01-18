import 'package:flutter/material.dart';
import 'package:reimi_app/domain/value_objects/education.dart';
import 'package:reimi_app/core/i18n/strings.g.dart';

extension EducationExtension on Education {
  String displayName(BuildContext context) {
    final t = Translations.of(context).kEnum.education;
    switch (this) {
      case Education.highSchoolGraduate:
        return t.highSchoolGraduate;
      case Education.juniorCollegeGraduate:
        return t.juniorCollegeGraduate;
      case Education.vocationalSchoolGraduate:
        return t.vocationalSchoolGraduate;
      case Education.technicalCollegeGraduate:
        return t.technicalCollegeGraduate;
      case Education.universityGraduate:
        return t.universityGraduate;
      case Education.graduateSchoolGraduate:
        return t.graduateSchoolGraduate;
      case Education.other:
        return t.other;
    }
  }
}
