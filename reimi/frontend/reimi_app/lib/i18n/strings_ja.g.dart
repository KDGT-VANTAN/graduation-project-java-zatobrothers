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
	@override late final _TranslationsSplashJa splash = _TranslationsSplashJa._(_root);
	@override late final _TranslationsSignUpJa signUp = _TranslationsSignUpJa._(_root);
	@override late final _TranslationsSignInJa signIn = _TranslationsSignInJa._(_root);
	@override late final _TranslationsUserRegistrationJa userRegistration = _TranslationsUserRegistrationJa._(_root);
	@override late final _TranslationsNavigationBarJa navigationBar = _TranslationsNavigationBarJa._(_root);
}

// Path: splash
class _TranslationsSplashJa implements TranslationsSplashEn {
	_TranslationsSplashJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get appName => 'Reimi';
	@override String get title => '天気で繋がる、出会いのアプリ';
	@override String get loading => '読み込み中...';
}

// Path: signUp
class _TranslationsSignUpJa implements TranslationsSignUpEn {
	_TranslationsSignUpJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get appName => 'Reimi';
	@override String get title => '天気で繋がる、出会いのアプリ';
	@override String get subtitle => '同じ天気を楽しむ人と、特別な出会いを';
	@override late final _TranslationsSignUpButtonJa button = _TranslationsSignUpButtonJa._(_root);
	@override late final _TranslationsSignUpConsentJa consent = _TranslationsSignUpConsentJa._(_root);
	@override late final _TranslationsSignUpConfirmationJa confirmation = _TranslationsSignUpConfirmationJa._(_root);
}

// Path: signIn
class _TranslationsSignInJa implements TranslationsSignInEn {
	_TranslationsSignInJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get appName => 'Reimi';
	@override String get title => 'おかえりなさい';
	@override String get subtitle => 'あなたの天気を共有しましょう';
	@override late final _TranslationsSignInButtonJa button = _TranslationsSignInButtonJa._(_root);
	@override late final _TranslationsSignInConfirmationJa confirmation = _TranslationsSignInConfirmationJa._(_root);
}

// Path: userRegistration
class _TranslationsUserRegistrationJa implements TranslationsUserRegistrationEn {
	_TranslationsUserRegistrationJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsUserRegistrationCommonJa common = _TranslationsUserRegistrationCommonJa._(_root);
	@override late final _TranslationsUserRegistrationGenderJa gender = _TranslationsUserRegistrationGenderJa._(_root);
	@override late final _TranslationsUserRegistrationBirthDateJa birthDate = _TranslationsUserRegistrationBirthDateJa._(_root);
	@override late final _TranslationsUserRegistrationAddressJa address = _TranslationsUserRegistrationAddressJa._(_root);
	@override late final _TranslationsUserRegistrationNameJa name = _TranslationsUserRegistrationNameJa._(_root);
	@override late final _TranslationsUserRegistrationIntroductionJa introduction = _TranslationsUserRegistrationIntroductionJa._(_root);
	@override late final _TranslationsUserRegistrationMainPhotoJa mainPhoto = _TranslationsUserRegistrationMainPhotoJa._(_root);
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

// Path: signUp.button
class _TranslationsSignUpButtonJa implements TranslationsSignUpButtonEn {
	_TranslationsSignUpButtonJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get apple => 'Appleでサインアップ';
	@override String get google => 'Googleでサインアップ';
}

// Path: signUp.consent
class _TranslationsSignUpConsentJa implements TranslationsSignUpConsentEn {
	_TranslationsSignUpConsentJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get consentText1 => 'サインアップすることで、';
	@override String get tos => '利用規約';
	@override String get consentText2 => 'と';
	@override String get pp => 'プライバシーポリシー';
	@override String get consentText3 => 'に同意したことになります';
}

// Path: signUp.confirmation
class _TranslationsSignUpConfirmationJa implements TranslationsSignUpConfirmationEn {
	_TranslationsSignUpConfirmationJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get account => 'すでにアカウントをお持ちですか？';
	@override String get signIn => 'サインイン';
}

// Path: signIn.button
class _TranslationsSignInButtonJa implements TranslationsSignInButtonEn {
	_TranslationsSignInButtonJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get apple => 'Appleでサインイン';
	@override String get google => 'Googleでサインイン';
}

// Path: signIn.confirmation
class _TranslationsSignInConfirmationJa implements TranslationsSignInConfirmationEn {
	_TranslationsSignInConfirmationJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get account => 'アカウントをお持ちでないですか？';
	@override String get signUp => 'サインアップ';
}

// Path: userRegistration.common
class _TranslationsUserRegistrationCommonJa implements TranslationsUserRegistrationCommonEn {
	_TranslationsUserRegistrationCommonJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsUserRegistrationCommonButtonJa button = _TranslationsUserRegistrationCommonButtonJa._(_root);
	@override late final _TranslationsUserRegistrationCommonDialogJa dialog = _TranslationsUserRegistrationCommonDialogJa._(_root);
	@override late final _TranslationsUserRegistrationCommonModalBottomSheetJa modalBottomSheet = _TranslationsUserRegistrationCommonModalBottomSheetJa._(_root);
}

// Path: userRegistration.gender
class _TranslationsUserRegistrationGenderJa implements TranslationsUserRegistrationGenderEn {
	_TranslationsUserRegistrationGenderJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get question => '性別を教えてください';
	@override late final _TranslationsUserRegistrationGenderDialogJa dialog = _TranslationsUserRegistrationGenderDialogJa._(_root);
	@override late final _TranslationsUserRegistrationGenderItemsJa items = _TranslationsUserRegistrationGenderItemsJa._(_root);
}

// Path: userRegistration.birthDate
class _TranslationsUserRegistrationBirthDateJa implements TranslationsUserRegistrationBirthDateEn {
	_TranslationsUserRegistrationBirthDateJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get question => '生年月日を教えてください';
	@override late final _TranslationsUserRegistrationBirthDateDialogJa dialog = _TranslationsUserRegistrationBirthDateDialogJa._(_root);
	@override late final _TranslationsUserRegistrationBirthDateItemsJa items = _TranslationsUserRegistrationBirthDateItemsJa._(_root);
}

// Path: userRegistration.address
class _TranslationsUserRegistrationAddressJa implements TranslationsUserRegistrationAddressEn {
	_TranslationsUserRegistrationAddressJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get question => '居住地を教えてください';
	@override late final _TranslationsUserRegistrationAddressDialogJa dialog = _TranslationsUserRegistrationAddressDialogJa._(_root);
	@override late final _TranslationsUserRegistrationAddressItemsJa items = _TranslationsUserRegistrationAddressItemsJa._(_root);
}

// Path: userRegistration.name
class _TranslationsUserRegistrationNameJa implements TranslationsUserRegistrationNameEn {
	_TranslationsUserRegistrationNameJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get question => '名前を教えてください';
	@override late final _TranslationsUserRegistrationNameDialogJa dialog = _TranslationsUserRegistrationNameDialogJa._(_root);
	@override late final _TranslationsUserRegistrationNameItemsJa items = _TranslationsUserRegistrationNameItemsJa._(_root);
}

// Path: userRegistration.introduction
class _TranslationsUserRegistrationIntroductionJa implements TranslationsUserRegistrationIntroductionEn {
	_TranslationsUserRegistrationIntroductionJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get question => '自己紹介を教えてください';
	@override late final _TranslationsUserRegistrationIntroductionDialogJa dialog = _TranslationsUserRegistrationIntroductionDialogJa._(_root);
	@override late final _TranslationsUserRegistrationIntroductionItemsJa items = _TranslationsUserRegistrationIntroductionItemsJa._(_root);
}

// Path: userRegistration.mainPhoto
class _TranslationsUserRegistrationMainPhotoJa implements TranslationsUserRegistrationMainPhotoEn {
	_TranslationsUserRegistrationMainPhotoJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get question => 'メイン写真を選んでください';
	@override late final _TranslationsUserRegistrationMainPhotoDialogJa dialog = _TranslationsUserRegistrationMainPhotoDialogJa._(_root);
	@override late final _TranslationsUserRegistrationMainPhotoItemsJa items = _TranslationsUserRegistrationMainPhotoItemsJa._(_root);
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

// Path: userRegistration.common.button
class _TranslationsUserRegistrationCommonButtonJa implements TranslationsUserRegistrationCommonButtonEn {
	_TranslationsUserRegistrationCommonButtonJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get next => '次へ';
}

// Path: userRegistration.common.dialog
class _TranslationsUserRegistrationCommonDialogJa implements TranslationsUserRegistrationCommonDialogEn {
	_TranslationsUserRegistrationCommonDialogJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsUserRegistrationCommonDialogButtonJa button = _TranslationsUserRegistrationCommonDialogButtonJa._(_root);
}

// Path: userRegistration.common.modalBottomSheet
class _TranslationsUserRegistrationCommonModalBottomSheetJa implements TranslationsUserRegistrationCommonModalBottomSheetEn {
	_TranslationsUserRegistrationCommonModalBottomSheetJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsUserRegistrationCommonModalBottomSheetButtonJa button = _TranslationsUserRegistrationCommonModalBottomSheetButtonJa._(_root);
}

// Path: userRegistration.gender.dialog
class _TranslationsUserRegistrationGenderDialogJa implements TranslationsUserRegistrationGenderDialogEn {
	_TranslationsUserRegistrationGenderDialogJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '性別の確認';
	@override String get contentText1 => '選択した性別：';
	@override String get contentText2 => 'この内容で次に進みますか？';
}

// Path: userRegistration.gender.items
class _TranslationsUserRegistrationGenderItemsJa implements TranslationsUserRegistrationGenderItemsEn {
	_TranslationsUserRegistrationGenderItemsJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get man => '男性';
	@override String get woman => '女性';
	@override String get others => 'その他';
}

// Path: userRegistration.birthDate.dialog
class _TranslationsUserRegistrationBirthDateDialogJa implements TranslationsUserRegistrationBirthDateDialogEn {
	_TranslationsUserRegistrationBirthDateDialogJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '生年月日の確認';
	@override String get contentText1 => '選択した生年月日：';
	@override String get contentText2 => 'この内容で次に進みますか？';
}

// Path: userRegistration.birthDate.items
class _TranslationsUserRegistrationBirthDateItemsJa implements TranslationsUserRegistrationBirthDateItemsEn {
	_TranslationsUserRegistrationBirthDateItemsJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get year => '年';
	@override String get month => '月';
	@override String get day => '日';
}

// Path: userRegistration.address.dialog
class _TranslationsUserRegistrationAddressDialogJa implements TranslationsUserRegistrationAddressDialogEn {
	_TranslationsUserRegistrationAddressDialogJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '居住地の確認';
	@override String get contentText1 => '選択した居住地：';
	@override String get contentText2 => 'この内容で次に進みますか？';
}

// Path: userRegistration.address.items
class _TranslationsUserRegistrationAddressItemsJa implements TranslationsUserRegistrationAddressItemsEn {
	_TranslationsUserRegistrationAddressItemsJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get placeholder => '都道府県を選択';
	@override late final _TranslationsUserRegistrationAddressItemsPrefectureJa prefecture = _TranslationsUserRegistrationAddressItemsPrefectureJa._(_root);
	@override String get others => 'その他';
}

// Path: userRegistration.name.dialog
class _TranslationsUserRegistrationNameDialogJa implements TranslationsUserRegistrationNameDialogEn {
	_TranslationsUserRegistrationNameDialogJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '名前の確認';
	@override String get contentText1 => '入力した名前：';
	@override String get contentText2 => 'この内容で次に進みますか？';
}

// Path: userRegistration.name.items
class _TranslationsUserRegistrationNameItemsJa implements TranslationsUserRegistrationNameItemsEn {
	_TranslationsUserRegistrationNameItemsJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get placeholder => '名前を入力';
}

// Path: userRegistration.introduction.dialog
class _TranslationsUserRegistrationIntroductionDialogJa implements TranslationsUserRegistrationIntroductionDialogEn {
	_TranslationsUserRegistrationIntroductionDialogJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '自己紹介の確認';
	@override String get contentText1 => '入力した自己紹介：';
	@override String get contentText2 => 'この内容で次に進みますか？';
}

// Path: userRegistration.introduction.items
class _TranslationsUserRegistrationIntroductionItemsJa implements TranslationsUserRegistrationIntroductionItemsEn {
	_TranslationsUserRegistrationIntroductionItemsJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get placeholder => '自己紹介を入力（20文字以上）';
	@override String charCountLabelText({required Object textLength}) => '${textLength} / 20文字';
	@override String remainingCharsText({required Object remainingTextLength}) => 'あと${remainingTextLength}文字必要です';
}

// Path: userRegistration.mainPhoto.dialog
class _TranslationsUserRegistrationMainPhotoDialogJa implements TranslationsUserRegistrationMainPhotoDialogEn {
	_TranslationsUserRegistrationMainPhotoDialogJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '写真の確認';
	@override String get contentText1 => '選択した写真：';
	@override String get contentText2 => 'この内容で登録を完了しますか？';
}

// Path: userRegistration.mainPhoto.items
class _TranslationsUserRegistrationMainPhotoItemsJa implements TranslationsUserRegistrationMainPhotoItemsEn {
	_TranslationsUserRegistrationMainPhotoItemsJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get photoSelectInstructionText => 'クリックして写真を選択';
	@override String get photoRecommendationHint => '笑顔の顔写真がおすすめ';
}

// Path: userRegistration.common.dialog.button
class _TranslationsUserRegistrationCommonDialogButtonJa implements TranslationsUserRegistrationCommonDialogButtonEn {
	_TranslationsUserRegistrationCommonDialogButtonJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get confirmation => '確認';
	@override String get cancel => 'キャンセル';
}

// Path: userRegistration.common.modalBottomSheet.button
class _TranslationsUserRegistrationCommonModalBottomSheetButtonJa implements TranslationsUserRegistrationCommonModalBottomSheetButtonEn {
	_TranslationsUserRegistrationCommonModalBottomSheetButtonJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get selected => '選択';
}

// Path: userRegistration.address.items.prefecture
class _TranslationsUserRegistrationAddressItemsPrefectureJa implements TranslationsUserRegistrationAddressItemsPrefectureEn {
	_TranslationsUserRegistrationAddressItemsPrefectureJa._(this._root);

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
			'splash.appName' => 'Reimi',
			'splash.title' => '天気で繋がる、出会いのアプリ',
			'splash.loading' => '読み込み中...',
			'signUp.appName' => 'Reimi',
			'signUp.title' => '天気で繋がる、出会いのアプリ',
			'signUp.subtitle' => '同じ天気を楽しむ人と、特別な出会いを',
			'signUp.button.apple' => 'Appleでサインアップ',
			'signUp.button.google' => 'Googleでサインアップ',
			'signUp.consent.consentText1' => 'サインアップすることで、',
			'signUp.consent.tos' => '利用規約',
			'signUp.consent.consentText2' => 'と',
			'signUp.consent.pp' => 'プライバシーポリシー',
			'signUp.consent.consentText3' => 'に同意したことになります',
			'signUp.confirmation.account' => 'すでにアカウントをお持ちですか？',
			'signUp.confirmation.signIn' => 'サインイン',
			'signIn.appName' => 'Reimi',
			'signIn.title' => 'おかえりなさい',
			'signIn.subtitle' => 'あなたの天気を共有しましょう',
			'signIn.button.apple' => 'Appleでサインイン',
			'signIn.button.google' => 'Googleでサインイン',
			'signIn.confirmation.account' => 'アカウントをお持ちでないですか？',
			'signIn.confirmation.signUp' => 'サインアップ',
			'userRegistration.common.button.next' => '次へ',
			'userRegistration.common.dialog.button.confirmation' => '確認',
			'userRegistration.common.dialog.button.cancel' => 'キャンセル',
			'userRegistration.common.modalBottomSheet.button.selected' => '選択',
			'userRegistration.gender.question' => '性別を教えてください',
			'userRegistration.gender.dialog.title' => '性別の確認',
			'userRegistration.gender.dialog.contentText1' => '選択した性別：',
			'userRegistration.gender.dialog.contentText2' => 'この内容で次に進みますか？',
			'userRegistration.gender.items.man' => '男性',
			'userRegistration.gender.items.woman' => '女性',
			'userRegistration.gender.items.others' => 'その他',
			'userRegistration.birthDate.question' => '生年月日を教えてください',
			'userRegistration.birthDate.dialog.title' => '生年月日の確認',
			'userRegistration.birthDate.dialog.contentText1' => '選択した生年月日：',
			'userRegistration.birthDate.dialog.contentText2' => 'この内容で次に進みますか？',
			'userRegistration.birthDate.items.year' => '年',
			'userRegistration.birthDate.items.month' => '月',
			'userRegistration.birthDate.items.day' => '日',
			'userRegistration.address.question' => '居住地を教えてください',
			'userRegistration.address.dialog.title' => '居住地の確認',
			'userRegistration.address.dialog.contentText1' => '選択した居住地：',
			'userRegistration.address.dialog.contentText2' => 'この内容で次に進みますか？',
			'userRegistration.address.items.placeholder' => '都道府県を選択',
			'userRegistration.address.items.prefecture.hokkaido' => '北海道',
			'userRegistration.address.items.prefecture.aomori' => '青森県',
			'userRegistration.address.items.prefecture.iwate' => '岩手県',
			'userRegistration.address.items.prefecture.miyagi' => '宮城県',
			'userRegistration.address.items.prefecture.akita' => '秋田県',
			'userRegistration.address.items.prefecture.yamagata' => '山形県',
			'userRegistration.address.items.prefecture.fukushima' => '福島県',
			'userRegistration.address.items.prefecture.ibaraki' => '茨城県',
			'userRegistration.address.items.prefecture.tochigi' => '栃木県',
			'userRegistration.address.items.prefecture.gunma' => '群馬県',
			'userRegistration.address.items.prefecture.saitama' => '埼玉県',
			'userRegistration.address.items.prefecture.chiba' => '千葉県',
			'userRegistration.address.items.prefecture.tokyo' => '東京都',
			'userRegistration.address.items.prefecture.kanagawa' => '神奈川県',
			'userRegistration.address.items.prefecture.niigata' => '新潟県',
			'userRegistration.address.items.prefecture.toyama' => '富山県',
			'userRegistration.address.items.prefecture.ishikawa' => '石川県',
			'userRegistration.address.items.prefecture.fukui' => '福井県',
			'userRegistration.address.items.prefecture.yamanashi' => '山梨県',
			'userRegistration.address.items.prefecture.nagano' => '長野県',
			'userRegistration.address.items.prefecture.gifu' => '岐阜県',
			'userRegistration.address.items.prefecture.shizuoka' => '静岡県',
			'userRegistration.address.items.prefecture.aichi' => '愛知県',
			'userRegistration.address.items.prefecture.mie' => '三重県',
			'userRegistration.address.items.prefecture.shiga' => '滋賀県',
			'userRegistration.address.items.prefecture.kyoto' => '京都府',
			'userRegistration.address.items.prefecture.osaka' => '大阪府',
			'userRegistration.address.items.prefecture.hyogo' => '兵庫県',
			'userRegistration.address.items.prefecture.nara' => '奈良県',
			'userRegistration.address.items.prefecture.wakayama' => '和歌山県',
			'userRegistration.address.items.prefecture.tottori' => '鳥取県',
			'userRegistration.address.items.prefecture.shimane' => '島根県',
			'userRegistration.address.items.prefecture.okayama' => '岡山県',
			'userRegistration.address.items.prefecture.hiroshima' => '広島県',
			'userRegistration.address.items.prefecture.yamaguchi' => '山口県',
			'userRegistration.address.items.prefecture.tokushima' => '徳島県',
			'userRegistration.address.items.prefecture.kagawa' => '香川県',
			'userRegistration.address.items.prefecture.ehime' => '愛媛県',
			'userRegistration.address.items.prefecture.kochi' => '高知県',
			'userRegistration.address.items.prefecture.fukuoka' => '福岡県',
			'userRegistration.address.items.prefecture.saga' => '佐賀県',
			'userRegistration.address.items.prefecture.nagasaki' => '長崎県',
			'userRegistration.address.items.prefecture.kumamoto' => '熊本県',
			'userRegistration.address.items.prefecture.oita' => '大分県',
			'userRegistration.address.items.prefecture.miyazaki' => '宮崎県',
			'userRegistration.address.items.prefecture.kagoshima' => '鹿児島県',
			'userRegistration.address.items.prefecture.okinawa' => '沖縄県',
			'userRegistration.address.items.others' => 'その他',
			'userRegistration.name.question' => '名前を教えてください',
			'userRegistration.name.dialog.title' => '名前の確認',
			'userRegistration.name.dialog.contentText1' => '入力した名前：',
			'userRegistration.name.dialog.contentText2' => 'この内容で次に進みますか？',
			'userRegistration.name.items.placeholder' => '名前を入力',
			'userRegistration.introduction.question' => '自己紹介を教えてください',
			'userRegistration.introduction.dialog.title' => '自己紹介の確認',
			'userRegistration.introduction.dialog.contentText1' => '入力した自己紹介：',
			'userRegistration.introduction.dialog.contentText2' => 'この内容で次に進みますか？',
			'userRegistration.introduction.items.placeholder' => '自己紹介を入力（20文字以上）',
			'userRegistration.introduction.items.charCountLabelText' => ({required Object textLength}) => '${textLength} / 20文字',
			'userRegistration.introduction.items.remainingCharsText' => ({required Object remainingTextLength}) => 'あと${remainingTextLength}文字必要です',
			'userRegistration.mainPhoto.question' => 'メイン写真を選んでください',
			'userRegistration.mainPhoto.dialog.title' => '写真の確認',
			'userRegistration.mainPhoto.dialog.contentText1' => '選択した写真：',
			'userRegistration.mainPhoto.dialog.contentText2' => 'この内容で登録を完了しますか？',
			'userRegistration.mainPhoto.items.photoSelectInstructionText' => 'クリックして写真を選択',
			'userRegistration.mainPhoto.items.photoRecommendationHint' => '笑顔の顔写真がおすすめ',
			'navigationBar.home.title' => 'であう',
			'navigationBar.like.title' => 'いいね',
			'navigationBar.chat.title' => 'チャット',
			'navigationBar.weatherReport.title' => 'リポート',
			'navigationBar.account.title' => 'アカウント',
			_ => null,
		};
	}
}
