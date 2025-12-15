///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import
// dart format off

import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:slang/generated.dart';
import 'strings.g.dart';

// Path: <root>
class TranslationsJa with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsJa({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.ja,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ja>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsJa _root = this; // ignore: unused_field

	@override 
	TranslationsJa $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsJa(meta: meta ?? this.$meta);

	// Translations
	@override late final _TranslationsSplashPageJa splashPage = _TranslationsSplashPageJa._(_root);
	@override late final _TranslationsSignUpPageJa signUpPage = _TranslationsSignUpPageJa._(_root);
	@override late final _TranslationsSignInPageJa signInPage = _TranslationsSignInPageJa._(_root);
	@override late final _TranslationsErrorPageJa errorPage = _TranslationsErrorPageJa._(_root);
	@override late final _TranslationsUserRegistrationPageJa userRegistrationPage = _TranslationsUserRegistrationPageJa._(_root);
	@override late final _TranslationsNavigationBarJa navigationBar = _TranslationsNavigationBarJa._(_root);
	@override late final _TranslationsButtonJa button = _TranslationsButtonJa._(_root);
	@override late final _TranslationsKEnumJa kEnum = _TranslationsKEnumJa._(_root);
}

// Path: splashPage
class _TranslationsSplashPageJa implements TranslationsSplashPageEn {
	_TranslationsSplashPageJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get appName => 'Reimi';
	@override String get title => '天気で繋がる、出会いのアプリ';
	@override String get loading => '読み込み中...';
}

// Path: signUpPage
class _TranslationsSignUpPageJa implements TranslationsSignUpPageEn {
	_TranslationsSignUpPageJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get appName => 'Reimi';
	@override String get title => '天気で繋がる、出会いのアプリ';
	@override String get subtitle => '同じ天気を楽しむ人と、特別な出会いを';
	@override late final _TranslationsSignUpPageButtonJa button = _TranslationsSignUpPageButtonJa._(_root);
	@override late final _TranslationsSignUpPageConsentJa consent = _TranslationsSignUpPageConsentJa._(_root);
	@override late final _TranslationsSignUpPageConfirmationJa confirmation = _TranslationsSignUpPageConfirmationJa._(_root);
}

// Path: signInPage
class _TranslationsSignInPageJa implements TranslationsSignInPageEn {
	_TranslationsSignInPageJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get appName => 'Reimi';
	@override String get title => 'おかえりなさい';
	@override String get subtitle => 'あなたの天気を共有しましょう';
	@override late final _TranslationsSignInPageButtonJa button = _TranslationsSignInPageButtonJa._(_root);
	@override late final _TranslationsSignInPageConfirmationJa confirmation = _TranslationsSignInPageConfirmationJa._(_root);
}

// Path: errorPage
class _TranslationsErrorPageJa implements TranslationsErrorPageEn {
	_TranslationsErrorPageJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get defaultMessage => 'エラーが発生しました';
	@override String get subMessage => '通信環境をご確認のうえ、\nもう一度お試しください。';
}

// Path: userRegistrationPage
class _TranslationsUserRegistrationPageJa implements TranslationsUserRegistrationPageEn {
	_TranslationsUserRegistrationPageJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsUserRegistrationPageGenderJa gender = _TranslationsUserRegistrationPageGenderJa._(_root);
	@override late final _TranslationsUserRegistrationPageBirthDateJa birthDate = _TranslationsUserRegistrationPageBirthDateJa._(_root);
	@override late final _TranslationsUserRegistrationPageAddressJa address = _TranslationsUserRegistrationPageAddressJa._(_root);
	@override late final _TranslationsUserRegistrationPageNameJa name = _TranslationsUserRegistrationPageNameJa._(_root);
	@override late final _TranslationsUserRegistrationPageIntroductionJa introduction = _TranslationsUserRegistrationPageIntroductionJa._(_root);
	@override late final _TranslationsUserRegistrationPageMainPhotoJa mainPhoto = _TranslationsUserRegistrationPageMainPhotoJa._(_root);
}

// Path: navigationBar
class _TranslationsNavigationBarJa implements TranslationsNavigationBarEn {
	_TranslationsNavigationBarJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsNavigationBarHomeJa home = _TranslationsNavigationBarHomeJa._(_root);
	@override late final _TranslationsNavigationBarLikeJa like = _TranslationsNavigationBarLikeJa._(_root);
	@override late final _TranslationsNavigationBarChatJa chat = _TranslationsNavigationBarChatJa._(_root);
	@override late final _TranslationsNavigationBarWeatherReportJa weatherReport = _TranslationsNavigationBarWeatherReportJa._(_root);
	@override late final _TranslationsNavigationBarAccountJa account = _TranslationsNavigationBarAccountJa._(_root);
}

// Path: button
class _TranslationsButtonJa implements TranslationsButtonEn {
	_TranslationsButtonJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get next => '次へ';
	@override String get confirmation => '確認';
	@override String get cancel => 'キャンセル';
	@override String get select => '選択';
	@override String get logout => 'ログアウト';
	@override String get retry => '再読み込み';
	@override String get tryRater => 'あとで試す';
}

// Path: kEnum
class _TranslationsKEnumJa implements TranslationsKEnumEn {
	_TranslationsKEnumJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsKEnumGenderJa gender = _TranslationsKEnumGenderJa._(_root);
	@override late final _TranslationsKEnumAddressJa address = _TranslationsKEnumAddressJa._(_root);
}

// Path: signUpPage.button
class _TranslationsSignUpPageButtonJa implements TranslationsSignUpPageButtonEn {
	_TranslationsSignUpPageButtonJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get apple => 'Appleでサインアップ';
	@override String get google => 'Googleでサインアップ';
}

// Path: signUpPage.consent
class _TranslationsSignUpPageConsentJa implements TranslationsSignUpPageConsentEn {
	_TranslationsSignUpPageConsentJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get consentText1 => 'サインアップすることで、';
	@override String get tos => '利用規約';
	@override String get consentText2 => 'と';
	@override String get pp => 'プライバシーポリシー';
	@override String get consentText3 => 'に同意したことになります';
}

// Path: signUpPage.confirmation
class _TranslationsSignUpPageConfirmationJa implements TranslationsSignUpPageConfirmationEn {
	_TranslationsSignUpPageConfirmationJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get account => 'すでにアカウントをお持ちですか？';
	@override String get signIn => 'サインイン';
}

// Path: signInPage.button
class _TranslationsSignInPageButtonJa implements TranslationsSignInPageButtonEn {
	_TranslationsSignInPageButtonJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get apple => 'Appleでサインイン';
	@override String get google => 'Googleでサインイン';
}

// Path: signInPage.confirmation
class _TranslationsSignInPageConfirmationJa implements TranslationsSignInPageConfirmationEn {
	_TranslationsSignInPageConfirmationJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get account => 'アカウントをお持ちでないですか？';
	@override String get signUp => 'サインアップ';
}

// Path: userRegistrationPage.gender
class _TranslationsUserRegistrationPageGenderJa implements TranslationsUserRegistrationPageGenderEn {
	_TranslationsUserRegistrationPageGenderJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get question => '性別を教えてください';
	@override late final _TranslationsUserRegistrationPageGenderDialogJa dialog = _TranslationsUserRegistrationPageGenderDialogJa._(_root);
}

// Path: userRegistrationPage.birthDate
class _TranslationsUserRegistrationPageBirthDateJa implements TranslationsUserRegistrationPageBirthDateEn {
	_TranslationsUserRegistrationPageBirthDateJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get question => '生年月日を教えてください';
	@override late final _TranslationsUserRegistrationPageBirthDateDialogJa dialog = _TranslationsUserRegistrationPageBirthDateDialogJa._(_root);
	@override late final _TranslationsUserRegistrationPageBirthDateItemsJa items = _TranslationsUserRegistrationPageBirthDateItemsJa._(_root);
}

// Path: userRegistrationPage.address
class _TranslationsUserRegistrationPageAddressJa implements TranslationsUserRegistrationPageAddressEn {
	_TranslationsUserRegistrationPageAddressJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get question => '居住地を教えてください';
	@override late final _TranslationsUserRegistrationPageAddressDialogJa dialog = _TranslationsUserRegistrationPageAddressDialogJa._(_root);
	@override late final _TranslationsUserRegistrationPageAddressItemsJa items = _TranslationsUserRegistrationPageAddressItemsJa._(_root);
}

// Path: userRegistrationPage.name
class _TranslationsUserRegistrationPageNameJa implements TranslationsUserRegistrationPageNameEn {
	_TranslationsUserRegistrationPageNameJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get question => '名前を教えてください';
	@override late final _TranslationsUserRegistrationPageNameDialogJa dialog = _TranslationsUserRegistrationPageNameDialogJa._(_root);
	@override late final _TranslationsUserRegistrationPageNameItemsJa items = _TranslationsUserRegistrationPageNameItemsJa._(_root);
}

// Path: userRegistrationPage.introduction
class _TranslationsUserRegistrationPageIntroductionJa implements TranslationsUserRegistrationPageIntroductionEn {
	_TranslationsUserRegistrationPageIntroductionJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get question => '自己紹介を教えてください';
	@override late final _TranslationsUserRegistrationPageIntroductionDialogJa dialog = _TranslationsUserRegistrationPageIntroductionDialogJa._(_root);
	@override late final _TranslationsUserRegistrationPageIntroductionItemsJa items = _TranslationsUserRegistrationPageIntroductionItemsJa._(_root);
}

// Path: userRegistrationPage.mainPhoto
class _TranslationsUserRegistrationPageMainPhotoJa implements TranslationsUserRegistrationPageMainPhotoEn {
	_TranslationsUserRegistrationPageMainPhotoJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get question => 'メイン写真を選んでください';
	@override late final _TranslationsUserRegistrationPageMainPhotoDialogJa dialog = _TranslationsUserRegistrationPageMainPhotoDialogJa._(_root);
	@override late final _TranslationsUserRegistrationPageMainPhotoItemsJa items = _TranslationsUserRegistrationPageMainPhotoItemsJa._(_root);
}

// Path: navigationBar.home
class _TranslationsNavigationBarHomeJa implements TranslationsNavigationBarHomeEn {
	_TranslationsNavigationBarHomeJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'であう';
}

// Path: navigationBar.like
class _TranslationsNavigationBarLikeJa implements TranslationsNavigationBarLikeEn {
	_TranslationsNavigationBarLikeJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'いいね';
}

// Path: navigationBar.chat
class _TranslationsNavigationBarChatJa implements TranslationsNavigationBarChatEn {
	_TranslationsNavigationBarChatJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'チャット';
}

// Path: navigationBar.weatherReport
class _TranslationsNavigationBarWeatherReportJa implements TranslationsNavigationBarWeatherReportEn {
	_TranslationsNavigationBarWeatherReportJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'リポート';
}

// Path: navigationBar.account
class _TranslationsNavigationBarAccountJa implements TranslationsNavigationBarAccountEn {
	_TranslationsNavigationBarAccountJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'アカウント';
}

// Path: kEnum.gender
class _TranslationsKEnumGenderJa implements TranslationsKEnumGenderEn {
	_TranslationsKEnumGenderJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get man => '男性';
	@override String get woman => '女性';
	@override String get other => 'その他';
}

// Path: kEnum.address
class _TranslationsKEnumAddressJa implements TranslationsKEnumAddressEn {
	_TranslationsKEnumAddressJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsKEnumAddressPrefectureJa prefecture = _TranslationsKEnumAddressPrefectureJa._(_root);
	@override String get other => 'その他';
}

// Path: userRegistrationPage.gender.dialog
class _TranslationsUserRegistrationPageGenderDialogJa implements TranslationsUserRegistrationPageGenderDialogEn {
	_TranslationsUserRegistrationPageGenderDialogJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '性別の確認';
	@override String get contentText1 => '選択した性別：';
	@override String get contentText2 => 'この内容で次に進みますか？';
}

// Path: userRegistrationPage.birthDate.dialog
class _TranslationsUserRegistrationPageBirthDateDialogJa implements TranslationsUserRegistrationPageBirthDateDialogEn {
	_TranslationsUserRegistrationPageBirthDateDialogJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '生年月日の確認';
	@override String get contentText1 => '選択した生年月日：';
	@override String get contentText2 => 'この内容で次に進みますか？';
}

// Path: userRegistrationPage.birthDate.items
class _TranslationsUserRegistrationPageBirthDateItemsJa implements TranslationsUserRegistrationPageBirthDateItemsEn {
	_TranslationsUserRegistrationPageBirthDateItemsJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get year => '年';
	@override String get month => '月';
	@override String get day => '日';
}

// Path: userRegistrationPage.address.dialog
class _TranslationsUserRegistrationPageAddressDialogJa implements TranslationsUserRegistrationPageAddressDialogEn {
	_TranslationsUserRegistrationPageAddressDialogJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '居住地の確認';
	@override String get contentText1 => '選択した居住地：';
	@override String get contentText2 => 'この内容で次に進みますか？';
}

// Path: userRegistrationPage.address.items
class _TranslationsUserRegistrationPageAddressItemsJa implements TranslationsUserRegistrationPageAddressItemsEn {
	_TranslationsUserRegistrationPageAddressItemsJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get placeholder => '都道府県を選択';
}

// Path: userRegistrationPage.name.dialog
class _TranslationsUserRegistrationPageNameDialogJa implements TranslationsUserRegistrationPageNameDialogEn {
	_TranslationsUserRegistrationPageNameDialogJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '名前の確認';
	@override String get contentText1 => '入力した名前：';
	@override String get contentText2 => 'この内容で次に進みますか？';
}

// Path: userRegistrationPage.name.items
class _TranslationsUserRegistrationPageNameItemsJa implements TranslationsUserRegistrationPageNameItemsEn {
	_TranslationsUserRegistrationPageNameItemsJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get placeholder => '名前を入力';
}

// Path: userRegistrationPage.introduction.dialog
class _TranslationsUserRegistrationPageIntroductionDialogJa implements TranslationsUserRegistrationPageIntroductionDialogEn {
	_TranslationsUserRegistrationPageIntroductionDialogJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '自己紹介の確認';
	@override String get contentText1 => '入力した自己紹介：';
	@override String get contentText2 => 'この内容で次に進みますか？';
}

// Path: userRegistrationPage.introduction.items
class _TranslationsUserRegistrationPageIntroductionItemsJa implements TranslationsUserRegistrationPageIntroductionItemsEn {
	_TranslationsUserRegistrationPageIntroductionItemsJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get placeholder => '自己紹介を入力（20文字以上）';
	@override String charCountLabelText({required Object textLength}) => '${textLength} / 20文字';
	@override String remainingCharsText({required Object remainingTextLength}) => 'あと${remainingTextLength}文字必要です';
}

// Path: userRegistrationPage.mainPhoto.dialog
class _TranslationsUserRegistrationPageMainPhotoDialogJa implements TranslationsUserRegistrationPageMainPhotoDialogEn {
	_TranslationsUserRegistrationPageMainPhotoDialogJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '写真の確認';
	@override String get contentText1 => '選択した写真：';
	@override String get contentText2 => 'この内容で登録を完了しますか？';
}

// Path: userRegistrationPage.mainPhoto.items
class _TranslationsUserRegistrationPageMainPhotoItemsJa implements TranslationsUserRegistrationPageMainPhotoItemsEn {
	_TranslationsUserRegistrationPageMainPhotoItemsJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get photoSelectInstructionText => 'クリックして写真を選択';
	@override String get photoRecommendationHint => '笑顔の顔写真がおすすめ';
}

// Path: kEnum.address.prefecture
class _TranslationsKEnumAddressPrefectureJa implements TranslationsKEnumAddressPrefectureEn {
	_TranslationsKEnumAddressPrefectureJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get hokkaido => '北海道';
	@override String get aomori => '青森県';
	@override String get iwate => '岩手県';
	@override String get miyagi => '宮城県';
	@override String get akita => '秋田県';
	@override String get yamagata => '山形県';
	@override String get fukushima => '福島県';
	@override String get ibaraki => '茨城県';
	@override String get tochigi => '栃木県';
	@override String get gunma => '群馬県';
	@override String get saitama => '埼玉県';
	@override String get chiba => '千葉県';
	@override String get tokyo => '東京都';
	@override String get kanagawa => '神奈川県';
	@override String get niigata => '新潟県';
	@override String get toyama => '富山県';
	@override String get ishikawa => '石川県';
	@override String get fukui => '福井県';
	@override String get yamanashi => '山梨県';
	@override String get nagano => '長野県';
	@override String get gifu => '岐阜県';
	@override String get shizuoka => '静岡県';
	@override String get aichi => '愛知県';
	@override String get mie => '三重県';
	@override String get shiga => '滋賀県';
	@override String get kyoto => '京都府';
	@override String get osaka => '大阪府';
	@override String get hyogo => '兵庫県';
	@override String get nara => '奈良県';
	@override String get wakayama => '和歌山県';
	@override String get tottori => '鳥取県';
	@override String get shimane => '島根県';
	@override String get okayama => '岡山県';
	@override String get hiroshima => '広島県';
	@override String get yamaguchi => '山口県';
	@override String get tokushima => '徳島県';
	@override String get kagawa => '香川県';
	@override String get ehime => '愛媛県';
	@override String get kochi => '高知県';
	@override String get fukuoka => '福岡県';
	@override String get saga => '佐賀県';
	@override String get nagasaki => '長崎県';
	@override String get kumamoto => '熊本県';
	@override String get oita => '大分県';
	@override String get miyazaki => '宮崎県';
	@override String get kagoshima => '鹿児島県';
	@override String get okinawa => '沖縄県';
}

/// The flat map containing all translations for locale <ja>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsJa {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'splashPage.appName' => 'Reimi',
			'splashPage.title' => '天気で繋がる、出会いのアプリ',
			'splashPage.loading' => '読み込み中...',
			'signUpPage.appName' => 'Reimi',
			'signUpPage.title' => '天気で繋がる、出会いのアプリ',
			'signUpPage.subtitle' => '同じ天気を楽しむ人と、特別な出会いを',
			'signUpPage.button.apple' => 'Appleでサインアップ',
			'signUpPage.button.google' => 'Googleでサインアップ',
			'signUpPage.consent.consentText1' => 'サインアップすることで、',
			'signUpPage.consent.tos' => '利用規約',
			'signUpPage.consent.consentText2' => 'と',
			'signUpPage.consent.pp' => 'プライバシーポリシー',
			'signUpPage.consent.consentText3' => 'に同意したことになります',
			'signUpPage.confirmation.account' => 'すでにアカウントをお持ちですか？',
			'signUpPage.confirmation.signIn' => 'サインイン',
			'signInPage.appName' => 'Reimi',
			'signInPage.title' => 'おかえりなさい',
			'signInPage.subtitle' => 'あなたの天気を共有しましょう',
			'signInPage.button.apple' => 'Appleでサインイン',
			'signInPage.button.google' => 'Googleでサインイン',
			'signInPage.confirmation.account' => 'アカウントをお持ちでないですか？',
			'signInPage.confirmation.signUp' => 'サインアップ',
			'errorPage.defaultMessage' => 'エラーが発生しました',
			'errorPage.subMessage' => '通信環境をご確認のうえ、\nもう一度お試しください。',
			'userRegistrationPage.gender.question' => '性別を教えてください',
			'userRegistrationPage.gender.dialog.title' => '性別の確認',
			'userRegistrationPage.gender.dialog.contentText1' => '選択した性別：',
			'userRegistrationPage.gender.dialog.contentText2' => 'この内容で次に進みますか？',
			'userRegistrationPage.birthDate.question' => '生年月日を教えてください',
			'userRegistrationPage.birthDate.dialog.title' => '生年月日の確認',
			'userRegistrationPage.birthDate.dialog.contentText1' => '選択した生年月日：',
			'userRegistrationPage.birthDate.dialog.contentText2' => 'この内容で次に進みますか？',
			'userRegistrationPage.birthDate.items.year' => '年',
			'userRegistrationPage.birthDate.items.month' => '月',
			'userRegistrationPage.birthDate.items.day' => '日',
			'userRegistrationPage.address.question' => '居住地を教えてください',
			'userRegistrationPage.address.dialog.title' => '居住地の確認',
			'userRegistrationPage.address.dialog.contentText1' => '選択した居住地：',
			'userRegistrationPage.address.dialog.contentText2' => 'この内容で次に進みますか？',
			'userRegistrationPage.address.items.placeholder' => '都道府県を選択',
			'userRegistrationPage.name.question' => '名前を教えてください',
			'userRegistrationPage.name.dialog.title' => '名前の確認',
			'userRegistrationPage.name.dialog.contentText1' => '入力した名前：',
			'userRegistrationPage.name.dialog.contentText2' => 'この内容で次に進みますか？',
			'userRegistrationPage.name.items.placeholder' => '名前を入力',
			'userRegistrationPage.introduction.question' => '自己紹介を教えてください',
			'userRegistrationPage.introduction.dialog.title' => '自己紹介の確認',
			'userRegistrationPage.introduction.dialog.contentText1' => '入力した自己紹介：',
			'userRegistrationPage.introduction.dialog.contentText2' => 'この内容で次に進みますか？',
			'userRegistrationPage.introduction.items.placeholder' => '自己紹介を入力（20文字以上）',
			'userRegistrationPage.introduction.items.charCountLabelText' => ({required Object textLength}) => '${textLength} / 20文字',
			'userRegistrationPage.introduction.items.remainingCharsText' => ({required Object remainingTextLength}) => 'あと${remainingTextLength}文字必要です',
			'userRegistrationPage.mainPhoto.question' => 'メイン写真を選んでください',
			'userRegistrationPage.mainPhoto.dialog.title' => '写真の確認',
			'userRegistrationPage.mainPhoto.dialog.contentText1' => '選択した写真：',
			'userRegistrationPage.mainPhoto.dialog.contentText2' => 'この内容で登録を完了しますか？',
			'userRegistrationPage.mainPhoto.items.photoSelectInstructionText' => 'クリックして写真を選択',
			'userRegistrationPage.mainPhoto.items.photoRecommendationHint' => '笑顔の顔写真がおすすめ',
			'navigationBar.home.title' => 'であう',
			'navigationBar.like.title' => 'いいね',
			'navigationBar.chat.title' => 'チャット',
			'navigationBar.weatherReport.title' => 'リポート',
			'navigationBar.account.title' => 'アカウント',
			'button.next' => '次へ',
			'button.confirmation' => '確認',
			'button.cancel' => 'キャンセル',
			'button.select' => '選択',
			'button.logout' => 'ログアウト',
			'button.retry' => '再読み込み',
			'button.tryRater' => 'あとで試す',
			'kEnum.gender.man' => '男性',
			'kEnum.gender.woman' => '女性',
			'kEnum.gender.other' => 'その他',
			'kEnum.address.prefecture.hokkaido' => '北海道',
			'kEnum.address.prefecture.aomori' => '青森県',
			'kEnum.address.prefecture.iwate' => '岩手県',
			'kEnum.address.prefecture.miyagi' => '宮城県',
			'kEnum.address.prefecture.akita' => '秋田県',
			'kEnum.address.prefecture.yamagata' => '山形県',
			'kEnum.address.prefecture.fukushima' => '福島県',
			'kEnum.address.prefecture.ibaraki' => '茨城県',
			'kEnum.address.prefecture.tochigi' => '栃木県',
			'kEnum.address.prefecture.gunma' => '群馬県',
			'kEnum.address.prefecture.saitama' => '埼玉県',
			'kEnum.address.prefecture.chiba' => '千葉県',
			'kEnum.address.prefecture.tokyo' => '東京都',
			'kEnum.address.prefecture.kanagawa' => '神奈川県',
			'kEnum.address.prefecture.niigata' => '新潟県',
			'kEnum.address.prefecture.toyama' => '富山県',
			'kEnum.address.prefecture.ishikawa' => '石川県',
			'kEnum.address.prefecture.fukui' => '福井県',
			'kEnum.address.prefecture.yamanashi' => '山梨県',
			'kEnum.address.prefecture.nagano' => '長野県',
			'kEnum.address.prefecture.gifu' => '岐阜県',
			'kEnum.address.prefecture.shizuoka' => '静岡県',
			'kEnum.address.prefecture.aichi' => '愛知県',
			'kEnum.address.prefecture.mie' => '三重県',
			'kEnum.address.prefecture.shiga' => '滋賀県',
			'kEnum.address.prefecture.kyoto' => '京都府',
			'kEnum.address.prefecture.osaka' => '大阪府',
			'kEnum.address.prefecture.hyogo' => '兵庫県',
			'kEnum.address.prefecture.nara' => '奈良県',
			'kEnum.address.prefecture.wakayama' => '和歌山県',
			'kEnum.address.prefecture.tottori' => '鳥取県',
			'kEnum.address.prefecture.shimane' => '島根県',
			'kEnum.address.prefecture.okayama' => '岡山県',
			'kEnum.address.prefecture.hiroshima' => '広島県',
			'kEnum.address.prefecture.yamaguchi' => '山口県',
			'kEnum.address.prefecture.tokushima' => '徳島県',
			'kEnum.address.prefecture.kagawa' => '香川県',
			'kEnum.address.prefecture.ehime' => '愛媛県',
			'kEnum.address.prefecture.kochi' => '高知県',
			'kEnum.address.prefecture.fukuoka' => '福岡県',
			'kEnum.address.prefecture.saga' => '佐賀県',
			'kEnum.address.prefecture.nagasaki' => '長崎県',
			'kEnum.address.prefecture.kumamoto' => '熊本県',
			'kEnum.address.prefecture.oita' => '大分県',
			'kEnum.address.prefecture.miyazaki' => '宮崎県',
			'kEnum.address.prefecture.kagoshima' => '鹿児島県',
			'kEnum.address.prefecture.okinawa' => '沖縄県',
			'kEnum.address.other' => 'その他',
			_ => null,
		};
	}
}
