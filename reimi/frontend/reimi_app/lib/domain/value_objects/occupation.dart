import 'package:freezed_annotation/freezed_annotation.dart';

enum Occupation {
  // 学生
  @JsonValue('UNIVERSITY_STUDENT')
  universityStudent,
  @JsonValue('GRADUATE_STUDENT')
  graduateStudent,
  @JsonValue('VOCATIONAL_STUDENT')
  vocationalStudent,
  @JsonValue('JUNIOR_COLLEGE_STUDENT')
  juniorCollegeStudent,
  @JsonValue('TECHNICAL_COLLEGE_STUDENT')
  technicalCollegeStudent,

  // 業界
  @JsonValue('DISTRIBUTION')
  distribution,
  @JsonValue('FOOD_INDUSTRY')
  foodIndustry,
  @JsonValue('PHARMACEUTICAL')
  pharmaceutical,
  @JsonValue('MEDICAL')
  medical,
  @JsonValue('WELFARE_CARE')
  welfareCare,

  // 医療専門職
  @JsonValue('DOCTOR')
  doctor,
  @JsonValue('NURSE')
  nurse,
  @JsonValue('PHARMACIST')
  pharmacist,

  // IT・通信
  @JsonValue('TELECOMMUNICATION')
  telecommunication,
  @JsonValue('WEB')
  web,
  @JsonValue('IT')
  it,
  @JsonValue('ENGINEER')
  engineer,
  @JsonValue('CREATOR')
  creator,
  @JsonValue('DESIGNER')
  designer,

  // 建築・金融
  @JsonValue('ARCHITECTURE_INTERIOR')
  architectureInterior,
  @JsonValue('FINANCE')
  finance,
  @JsonValue('INSURANCE')
  insurance,
  @JsonValue('CONSULTING')
  consulting,

  // メディア
  @JsonValue('MEDIA')
  media,
  @JsonValue('ADVERTISING')
  advertising,
  @JsonValue('PUBLISHING')
  publishing,

  // 教育・流通
  @JsonValue('EDUCATION')
  education,
  @JsonValue('RETAIL')
  retail,
  @JsonValue('TRANSPORTATION')
  transportation,

  // 娯楽・サービス
  @JsonValue('ENTERTAINMENT')
  entertainment,
  @JsonValue('TRAVEL')
  travel,
  @JsonValue('REAL_ESTATE')
  realEstate,

  // ビジネス
  @JsonValue('TRADING_COMPANY')
  tradingCompany,
  @JsonValue('MANUFACTURER')
  manufacturer,
  @JsonValue('RESEARCHER')
  researcher,

  // 企業属性
  @JsonValue('MAJOR_COMPANY')
  majorCompany,
  @JsonValue('FOREIGN_COMPANY')
  foreignCompany,
  @JsonValue('LISTED_COMPANY')
  listedCompany,

  // 経営・法務
  @JsonValue('EXECUTIVE')
  executive,
  @JsonValue('LEGAL')
  legal,
  @JsonValue('LAWYER')
  lawyer,
  @JsonValue('CPA')
  certifiedPublicAccountant,
  @JsonValue('TAX_ACCOUNTANT')
  taxAccountant,

  // 公共・自由業
  @JsonValue('FREELANCE')
  freelance,
  @JsonValue('PUBLIC_SERVANT')
  publicServant,
  @JsonValue('FIREFIGHTER')
  firefighter,
  @JsonValue('POLICE')
  police,
  @JsonValue('SELF_DEFENSE_FORCE')
  selfDefenseForce,

  // 特殊職
  @JsonValue('ATHLETE')
  athlete,
  @JsonValue('PILOT')
  pilot,
  @JsonValue('INVESTOR')
  investor,
  @JsonValue('CABIN_ATTENDANT')
  cabinAttendant,

  // 生活・接客
  @JsonValue('APPAREL')
  apparel,
  @JsonValue('BEAUTY')
  beauty,
  @JsonValue('BRIDAL')
  bridal,
  @JsonValue('CHEF_NUTRITIONIST')
  chefNutritionist,
  @JsonValue('CHILDCARE_WORKER')
  childcareWorker,
  @JsonValue('SERVICE')
  service,
  @JsonValue('SECRETARY')
  secretary,
  @JsonValue('ANNOUNCER')
  announcer,
  @JsonValue('RECEPTIONIST')
  receptionist,

  // 芸能・ネット
  @JsonValue('ENTERTAINER_MODEL')
  entertainerModel,
  @JsonValue('INFLUENCER')
  influencer,
  @JsonValue('YOUTUBER')
  youtuber,
  @JsonValue('PRO_GAMER')
  proGamer,

  // その他
  @JsonValue('COMPANY_EMPLOYEE')
  companyEmployee,
  @JsonValue('OFFICE_WORK')
  officeWork,
  @JsonValue('SELF_EMPLOYED')
  selfEmployed,
  @JsonValue('OTHER')
  other,
}
