package com.reimi.reimi_app.domain.model.profile;

public enum Occupation {

    // 学生
    UNIVERSITY_STUDENT("大学生"),
    GRADUATE_STUDENT("大学院生"),
    VOCATIONAL_STUDENT("専門学生"),
    JUNIOR_COLLEGE_STUDENT("短大生"),
    TECHNICAL_COLLEGE_STUDENT("高専生"),

    // 業界
    DISTRIBUTION("流通"),
    FOOD_INDUSTRY("食品関係"),
    PHARMACEUTICAL("製薬"),
    MEDICAL("医療関係"),
    WELFARE_CARE("福祉・介護"),

    // 医療専門職
    DOCTOR("医師"),
    NURSE("看護師"),
    PHARMACIST("薬剤師"),

    // IT・通信
    TELECOMMUNICATION("通信"),
    WEB("WEB関係"),
    IT("IT関係"),
    ENGINEER("エンジニア"),
    CREATOR("クリエイター"),
    DESIGNER("デザイナー"),

    // 建築・金融
    ARCHITECTURE_INTERIOR("建築・インテリア"),
    FINANCE("金融"),
    INSURANCE("保険"),
    CONSULTING("コンサル"),

    // メディア
    MASS_MEDIA("マスコミ"),
    ADVERTISING("広告"),
    PUBLISHING("出版"),

    // 教育・流通
    EDUCATION("教育関係"),
    RETAIL("小売"),
    TRANSPORTATION("輸送・交通"),

    // 娯楽・サービス
    ENTERTAINMENT("エンターテイメント"),
    TRAVEL("旅行関係"),
    REAL_ESTATE("不動産"),

    // ビジネス
    TRADING_COMPANY("商社"),
    MANUFACTURER("メーカー"),
    RESEARCHER("研究職"),

    // 企業属性
    MAJOR_COMPANY("大手企業"),
    FOREIGN_COMPANY("外資企業"),
    LISTED_COMPANY("上場企業"),

    // 経営・法務
    EXECUTIVE("経営者・役員"),
    LEGAL("法務関係"),
    LAWYER("弁護士"),
    CPA("公認会計士"),
    TAX_ACCOUNTANT("税理士"),

    // 公共・自由業
    FREELANCE("自由業"),
    PUBLIC_SERVANT("公務員"),
    FIREFIGHTER("消防士"),
    POLICE("警察官"),
    SELF_DEFENSE_FORCE("自衛隊"),

    // 特殊職
    ATHLETE("スポーツ選手"),
    PILOT("パイロット"),
    INVESTOR("投資家"),
    CABIN_ATTENDANT("キャビンアテンダント"),

    // 生活・接客
    APPAREL("アパレル"),
    BEAUTY("美容関係"),
    BRIDAL("ブライダル"),
    CHEF_NUTRITIONIST("調理師・栄養士"),
    CHILDCARE_WORKER("保育士"),
    SERVICE("サービス業"),
    SECRETARY("秘書"),
    ANNOUNCER("アナウンサー"),
    RECEPTIONIST("受付"),

    // 芸能・ネット
    ENTERTAINER_MODEL("芸能・モデル"),
    INFLUENCER("インフルエンサー"),
    YOUTUBER("YouTuber"),
    PRO_GAMER("プロゲーマー"),

    // その他
    COMPANY_EMPLOYEE("会社員"),
    OFFICE_WORK("事務"),
    SELF_EMPLOYED("自営業"),
    OTHER("その他");

    private final String label;

    Occupation(String label) {
        this.label = label;
    }

    public String getLabel() {
        return label;
    }
}
