import 'package:flutter/material.dart';
import 'package:reimi_app/domain/value_objects/occupation.dart';
import 'package:reimi_app/i18n/strings.g.dart';

extension OccupationExtension on Occupation {
  String displayName(BuildContext context) {
    final t = Translations.of(context).kEnum.occupation;

    switch (this) {
      // 学生
      case Occupation.universityStudent:
        return t.universityStudent;
      case Occupation.graduateStudent:
        return t.graduateStudent;
      case Occupation.vocationalStudent:
        return t.vocationalStudent;
      case Occupation.juniorCollegeStudent:
        return t.juniorCollegeStudent;
      case Occupation.technicalCollegeStudent:
        return t.technicalCollegeStudent;

      // 業界
      case Occupation.distribution:
        return t.distribution;
      case Occupation.foodIndustry:
        return t.foodIndustry;
      case Occupation.pharmaceutical:
        return t.pharmaceutical;
      case Occupation.medical:
        return t.medical;
      case Occupation.welfareCare:
        return t.welfareCare;

      // 医療専門職
      case Occupation.doctor:
        return t.doctor;
      case Occupation.nurse:
        return t.nurse;
      case Occupation.pharmacist:
        return t.pharmacist;

      // IT・通信
      case Occupation.telecommunication:
        return t.telecommunication;
      case Occupation.web:
        return t.web;
      case Occupation.it:
        return t.it;
      case Occupation.engineer:
        return t.engineer;
      case Occupation.creator:
        return t.creator;
      case Occupation.designer:
        return t.designer;

      // 建築・金融
      case Occupation.architectureInterior:
        return t.architectureInterior;
      case Occupation.finance:
        return t.finance;
      case Occupation.insurance:
        return t.insurance;
      case Occupation.consulting:
        return t.consulting;

      // メディア
      case Occupation.media:
        return t.media;
      case Occupation.advertising:
        return t.advertising;
      case Occupation.publishing:
        return t.publishing;

      // 教育・流通
      case Occupation.education:
        return t.education;
      case Occupation.retail:
        return t.retail;
      case Occupation.transportation:
        return t.transportation;

      // 娯楽・サービス
      case Occupation.entertainment:
        return t.entertainment;
      case Occupation.travel:
        return t.travel;
      case Occupation.realEstate:
        return t.realEstate;

      // ビジネス
      case Occupation.tradingCompany:
        return t.tradingCompany;
      case Occupation.manufacturer:
        return t.manufacturer;
      case Occupation.researcher:
        return t.researcher;

      // 企業属性
      case Occupation.majorCompany:
        return t.majorCompany;
      case Occupation.foreignCompany:
        return t.foreignCompany;
      case Occupation.listedCompany:
        return t.listedCompany;

      // 経営・法務
      case Occupation.executive:
        return t.executive;
      case Occupation.legal:
        return t.legal;
      case Occupation.lawyer:
        return t.lawyer;
      case Occupation.certifiedPublicAccountant:
        return t.certifiedPublicAccountant;
      case Occupation.taxAccountant:
        return t.taxAccountant;

      // 公共・自由業
      case Occupation.freelance:
        return t.freelance;
      case Occupation.publicServant:
        return t.publicServant;
      case Occupation.firefighter:
        return t.firefighter;
      case Occupation.police:
        return t.police;
      case Occupation.selfDefenseForce:
        return t.selfDefenseForce;

      // 特殊職
      case Occupation.athlete:
        return t.athlete;
      case Occupation.pilot:
        return t.pilot;
      case Occupation.investor:
        return t.investor;
      case Occupation.cabinAttendant:
        return t.cabinAttendant;

      // 生活・接客
      case Occupation.apparel:
        return t.apparel;
      case Occupation.beauty:
        return t.beauty;
      case Occupation.bridal:
        return t.bridal;
      case Occupation.chefNutritionist:
        return t.chefNutritionist;
      case Occupation.childcareWorker:
        return t.childcareWorker;
      case Occupation.service:
        return t.service;
      case Occupation.secretary:
        return t.secretary;
      case Occupation.announcer:
        return t.announcer;
      case Occupation.receptionist:
        return t.receptionist;

      // 芸能・ネット
      case Occupation.entertainerModel:
        return t.entertainerModel;
      case Occupation.influencer:
        return t.influencer;
      case Occupation.youtuber:
        return t.youtuber;
      case Occupation.proGamer:
        return t.proGamer;

      // その他
      case Occupation.companyEmployee:
        return t.companyEmployee;
      case Occupation.officeWork:
        return t.officeWork;
      case Occupation.selfEmployed:
        return t.selfEmployed;

      case Occupation.other:
        return t.other;
    }
  }
}
