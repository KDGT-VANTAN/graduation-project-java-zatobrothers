import 'package:flutter/material.dart';
import 'package:reimi_app/domain/value_objects/communication_style.dart';
import 'package:reimi_app/core/i18n/strings.g.dart';

extension CommunicationStyleExtension on CommunicationStyle {
  String displayName(BuildContext context) {
    final t = Translations.of(context).kEnum.communicationStyle;
    switch (this) {
      case CommunicationStyle.call:
        return t.call;
      case CommunicationStyle.message:
        return t.message;
      case CommunicationStyle.inPerson:
        return t.inPerson;
    }
  }
}
