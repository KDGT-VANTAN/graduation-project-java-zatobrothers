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
	@override Map<String, String> get locales => {
		'en': '英語',
		'ja': '日本語',
	};
	@override late final _TranslationsSplashPageJa splashPage = _TranslationsSplashPageJa._(_root);
	@override late final _TranslationsSignUpPageJa signUpPage = _TranslationsSignUpPageJa._(_root);
	@override late final _TranslationsSignInPageJa signInPage = _TranslationsSignInPageJa._(_root);
	@override late final _TranslationsErrorPageJa errorPage = _TranslationsErrorPageJa._(_root);
	@override late final _TranslationsUserRegistrationPageJa userRegistrationPage = _TranslationsUserRegistrationPageJa._(_root);
	@override late final _TranslationsHomePageJa homePage = _TranslationsHomePageJa._(_root);
	@override late final _TranslationsLikePageJa likePage = _TranslationsLikePageJa._(_root);
	@override late final _TranslationsMatchingCompletedPageJa matchingCompletedPage = _TranslationsMatchingCompletedPageJa._(_root);
	@override late final _TranslationsChatPageJa chatPage = _TranslationsChatPageJa._(_root);
	@override late final _TranslationsChatDetailPageJa chatDetailPage = _TranslationsChatDetailPageJa._(_root);
	@override late final _TranslationsWeatherReportPageJa weatherReportPage = _TranslationsWeatherReportPageJa._(_root);
	@override late final _TranslationsMyWeatherReportPageJa myWeatherReportPage = _TranslationsMyWeatherReportPageJa._(_root);
	@override late final _TranslationsWeatherReportPostPageJa weatherReportPostPage = _TranslationsWeatherReportPostPageJa._(_root);
	@override late final _TranslationsWeatherSelectPageJa weatherSelectPage = _TranslationsWeatherSelectPageJa._(_root);
	@override late final _TranslationsFeelingSelectPageJa feelingSelectPage = _TranslationsFeelingSelectPageJa._(_root);
	@override late final _TranslationsForecastSelectPageJa forecastSelectPage = _TranslationsForecastSelectPageJa._(_root);
	@override late final _TranslationsWeatherReportDetailPageJa weatherReportDetailPage = _TranslationsWeatherReportDetailPageJa._(_root);
	@override late final _TranslationsAccountPageJa accountPage = _TranslationsAccountPageJa._(_root);
	@override late final _TranslationsProfilePageJa profilePage = _TranslationsProfilePageJa._(_root);
	@override late final _TranslationsProfileDetailPageJa profileDetailPage = _TranslationsProfileDetailPageJa._(_root);
	@override late final _TranslationsWeatherPersonalityConceptPageJa weatherPersonalityConceptPage = _TranslationsWeatherPersonalityConceptPageJa._(_root);
	@override late final _TranslationsWeatherPersonalityDetailPageJa weatherPersonalityDetailPage = _TranslationsWeatherPersonalityDetailPageJa._(_root);
	@override late final _TranslationsWeatherPersonalityTestJudgingPageJa weatherPersonalityTestJudgingPage = _TranslationsWeatherPersonalityTestJudgingPageJa._(_root);
	@override late final _TranslationsWeatherPersonalityTestPageJa weatherPersonalityTestPage = _TranslationsWeatherPersonalityTestPageJa._(_root);
	@override late final _TranslationsWeatherPersonalityTestResultPageJa weatherPersonalityTestResultPage = _TranslationsWeatherPersonalityTestResultPageJa._(_root);
	@override late final _TranslationsSettingPageJa settingPage = _TranslationsSettingPageJa._(_root);
	@override late final _TranslationsNavigationBarJa navigationBar = _TranslationsNavigationBarJa._(_root);
	@override late final _TranslationsDialogJa dialog = _TranslationsDialogJa._(_root);
	@override late final _TranslationsModalSheetJa modalSheet = _TranslationsModalSheetJa._(_root);
	@override late final _TranslationsButtonJa button = _TranslationsButtonJa._(_root);
	@override late final _TranslationsSegmentedSwitchJa segmentedSwitch = _TranslationsSegmentedSwitchJa._(_root);
	@override late final _TranslationsSnackBarJa snackBar = _TranslationsSnackBarJa._(_root);
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

// Path: homePage
class _TranslationsHomePageJa implements TranslationsHomePageEn {
	_TranslationsHomePageJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get isEmptyCase => '現在、表示できるユーザーがいません。';
}

// Path: likePage
class _TranslationsLikePageJa implements TranslationsLikePageEn {
	_TranslationsLikePageJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get isEmptyCase => '新しい出会いをみつけましょう！';
}

// Path: matchingCompletedPage
class _TranslationsMatchingCompletedPageJa implements TranslationsMatchingCompletedPageEn {
	_TranslationsMatchingCompletedPageJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'マッチング成立！';
	@override String subTitle({required Object name}) => 'おめでとうございます！\n${name}さんとマッチングしました';
	@override String get nullCase => 'マッチング情報が取得できませんでした。';
	@override String get message => 'メッセージを送って会話を始めましょう！';
}

// Path: chatPage
class _TranslationsChatPageJa implements TranslationsChatPageEn {
	_TranslationsChatPageJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get isEmptyCase => '新しい出会いをみつけましょう！';
	@override late final _TranslationsChatPageSectionTitleJa sectionTitle = _TranslationsChatPageSectionTitleJa._(_root);
	@override late final _TranslationsChatPageSubSectionTitleJa subSectionTitle = _TranslationsChatPageSubSectionTitleJa._(_root);
}

// Path: chatDetailPage
class _TranslationsChatDetailPageJa implements TranslationsChatDetailPageEn {
	_TranslationsChatDetailPageJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get nullCase => 'プロフィール情報が取得できませんでした。';
	@override String get placeHolder => 'メッセージを入力';
}

// Path: weatherReportPage
class _TranslationsWeatherReportPageJa implements TranslationsWeatherReportPageEn {
	_TranslationsWeatherReportPageJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'ウェザーリポート';
	@override String get isEmptyCase => '現在、表示できるリポートがありません。';
}

// Path: myWeatherReportPage
class _TranslationsMyWeatherReportPageJa implements TranslationsMyWeatherReportPageEn {
	_TranslationsMyWeatherReportPageJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'マイウェザーリポート';
	@override String get isEmptyCase => 'まだ投稿したことがありません。\nウェザーリポート送信画面から投稿しましょう！';
	@override late final _TranslationsMyWeatherReportPageWeekdaysJa weekdays = _TranslationsMyWeatherReportPageWeekdaysJa._(_root);
}

// Path: weatherReportPostPage
class _TranslationsWeatherReportPostPageJa implements TranslationsWeatherReportPostPageEn {
	_TranslationsWeatherReportPostPageJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'ウェザーリポート送信';
	@override late final _TranslationsWeatherReportPostPagePlaceHolderJa placeHolder = _TranslationsWeatherReportPostPagePlaceHolderJa._(_root);
	@override late final _TranslationsWeatherReportPostPageLabelJa label = _TranslationsWeatherReportPostPageLabelJa._(_root);
}

// Path: weatherSelectPage
class _TranslationsWeatherSelectPageJa implements TranslationsWeatherSelectPageEn {
	_TranslationsWeatherSelectPageJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '天気を選択';
	@override String get sectionTitle => '今の天気は？';
}

// Path: feelingSelectPage
class _TranslationsFeelingSelectPageJa implements TranslationsFeelingSelectPageEn {
	_TranslationsFeelingSelectPageJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '体感を選択';
	@override String get sectionTitle => '今の体感は？';
}

// Path: forecastSelectPage
class _TranslationsForecastSelectPageJa implements TranslationsForecastSelectPageEn {
	_TranslationsForecastSelectPageJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '予想を選択';
	@override String get sectionTitle => '数時間後は？';
}

// Path: weatherReportDetailPage
class _TranslationsWeatherReportDetailPageJa implements TranslationsWeatherReportDetailPageEn {
	_TranslationsWeatherReportDetailPageJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '投稿詳細';
	@override String get nullCase => 'リポート情報が取得できませんでした。';
	@override late final _TranslationsWeatherReportDetailPageLabelJa label = _TranslationsWeatherReportDetailPageLabelJa._(_root);
}

// Path: accountPage
class _TranslationsAccountPageJa implements TranslationsAccountPageEn {
	_TranslationsAccountPageJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get nullCase => 'ユーザー情報が取得できませんでした。';
}

// Path: profilePage
class _TranslationsProfilePageJa implements TranslationsProfilePageEn {
	_TranslationsProfilePageJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'プロフィール編集';
	@override String get nullCase => 'プロフィール情報が取得できませんでした。';
	@override late final _TranslationsProfilePageSectionJa section = _TranslationsProfilePageSectionJa._(_root);
	@override late final _TranslationsProfilePageEditJa edit = _TranslationsProfilePageEditJa._(_root);
	@override late final _TranslationsProfilePagePlaceholderJa placeholder = _TranslationsProfilePagePlaceholderJa._(_root);
}

// Path: profileDetailPage
class _TranslationsProfileDetailPageJa implements TranslationsProfileDetailPageEn {
	_TranslationsProfileDetailPageJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'プロフィール詳細';
	@override String get nullCase => 'プロフィール情報が取得できませんでした。';
}

// Path: weatherPersonalityConceptPage
class _TranslationsWeatherPersonalityConceptPageJa implements TranslationsWeatherPersonalityConceptPageEn {
	_TranslationsWeatherPersonalityConceptPageJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'ウェザーパーソナリティ診断';
	@override late final _TranslationsWeatherPersonalityConceptPageContentTextJa contentText = _TranslationsWeatherPersonalityConceptPageContentTextJa._(_root);
}

// Path: weatherPersonalityDetailPage
class _TranslationsWeatherPersonalityDetailPageJa implements TranslationsWeatherPersonalityDetailPageEn {
	_TranslationsWeatherPersonalityDetailPageJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '診断結果';
	@override String get nullCase => '診断結果の取得に失敗しました。';
	@override late final _TranslationsWeatherPersonalityDetailPageSectionJa section = _TranslationsWeatherPersonalityDetailPageSectionJa._(_root);
}

// Path: weatherPersonalityTestJudgingPage
class _TranslationsWeatherPersonalityTestJudgingPageJa implements TranslationsWeatherPersonalityTestJudgingPageEn {
	_TranslationsWeatherPersonalityTestJudgingPageJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get loading => '診断中';
	@override late final _TranslationsWeatherPersonalityTestJudgingPageContentTextJa contentText = _TranslationsWeatherPersonalityTestJudgingPageContentTextJa._(_root);
}

// Path: weatherPersonalityTestPage
class _TranslationsWeatherPersonalityTestPageJa implements TranslationsWeatherPersonalityTestPageEn {
	_TranslationsWeatherPersonalityTestPageJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsWeatherPersonalityTestPageQ1Ja q1 = _TranslationsWeatherPersonalityTestPageQ1Ja._(_root);
	@override late final _TranslationsWeatherPersonalityTestPageQ2Ja q2 = _TranslationsWeatherPersonalityTestPageQ2Ja._(_root);
	@override late final _TranslationsWeatherPersonalityTestPageQ3Ja q3 = _TranslationsWeatherPersonalityTestPageQ3Ja._(_root);
	@override late final _TranslationsWeatherPersonalityTestPageQ4Ja q4 = _TranslationsWeatherPersonalityTestPageQ4Ja._(_root);
	@override late final _TranslationsWeatherPersonalityTestPageQ5Ja q5 = _TranslationsWeatherPersonalityTestPageQ5Ja._(_root);
	@override late final _TranslationsWeatherPersonalityTestPageQ6Ja q6 = _TranslationsWeatherPersonalityTestPageQ6Ja._(_root);
	@override late final _TranslationsWeatherPersonalityTestPageQ7Ja q7 = _TranslationsWeatherPersonalityTestPageQ7Ja._(_root);
	@override late final _TranslationsWeatherPersonalityTestPageQ8Ja q8 = _TranslationsWeatherPersonalityTestPageQ8Ja._(_root);
	@override late final _TranslationsWeatherPersonalityTestPageQ9Ja q9 = _TranslationsWeatherPersonalityTestPageQ9Ja._(_root);
	@override late final _TranslationsWeatherPersonalityTestPageQ10Ja q10 = _TranslationsWeatherPersonalityTestPageQ10Ja._(_root);
	@override late final _TranslationsWeatherPersonalityTestPageQ11Ja q11 = _TranslationsWeatherPersonalityTestPageQ11Ja._(_root);
	@override late final _TranslationsWeatherPersonalityTestPageQ12Ja q12 = _TranslationsWeatherPersonalityTestPageQ12Ja._(_root);
	@override late final _TranslationsWeatherPersonalityTestPageQ13Ja q13 = _TranslationsWeatherPersonalityTestPageQ13Ja._(_root);
	@override late final _TranslationsWeatherPersonalityTestPageQ14Ja q14 = _TranslationsWeatherPersonalityTestPageQ14Ja._(_root);
	@override late final _TranslationsWeatherPersonalityTestPageQ15Ja q15 = _TranslationsWeatherPersonalityTestPageQ15Ja._(_root);
	@override late final _TranslationsWeatherPersonalityTestPageQ16Ja q16 = _TranslationsWeatherPersonalityTestPageQ16Ja._(_root);
}

// Path: weatherPersonalityTestResultPage
class _TranslationsWeatherPersonalityTestResultPageJa implements TranslationsWeatherPersonalityTestResultPageEn {
	_TranslationsWeatherPersonalityTestResultPageJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get nullCase => '診断結果の取得に失敗しました。';
	@override late final _TranslationsWeatherPersonalityTestResultPageSectionJa section = _TranslationsWeatherPersonalityTestResultPageSectionJa._(_root);
}

// Path: settingPage
class _TranslationsSettingPageJa implements TranslationsSettingPageEn {
	_TranslationsSettingPageJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '設定';
	@override late final _TranslationsSettingPageSectionJa section = _TranslationsSettingPageSectionJa._(_root);
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

// Path: dialog
class _TranslationsDialogJa implements TranslationsDialogEn {
	_TranslationsDialogJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsDialogUserAddressJa userAddress = _TranslationsDialogUserAddressJa._(_root);
	@override late final _TranslationsDialogUserBirthDateJa userBirthDate = _TranslationsDialogUserBirthDateJa._(_root);
	@override late final _TranslationsDialogUserGenderJa userGender = _TranslationsDialogUserGenderJa._(_root);
	@override late final _TranslationsDialogUserIntroductionJa userIntroduction = _TranslationsDialogUserIntroductionJa._(_root);
	@override late final _TranslationsDialogUserMainPhotoJa userMainPhoto = _TranslationsDialogUserMainPhotoJa._(_root);
	@override late final _TranslationsDialogUserNameJa userName = _TranslationsDialogUserNameJa._(_root);
	@override late final _TranslationsDialogLogoutJa logout = _TranslationsDialogLogoutJa._(_root);
	@override late final _TranslationsDialogDeletePhotoJa deletePhoto = _TranslationsDialogDeletePhotoJa._(_root);
	@override late final _TranslationsDialogSaveChangesJa saveChanges = _TranslationsDialogSaveChangesJa._(_root);
	@override late final _TranslationsDialogWeatherReportCompleteJa weatherReportComplete = _TranslationsDialogWeatherReportCompleteJa._(_root);
	@override late final _TranslationsDialogDestructionChangesJa destructionChanges = _TranslationsDialogDestructionChangesJa._(_root);
	@override late final _TranslationsDialogInterruptTestJa interruptTest = _TranslationsDialogInterruptTestJa._(_root);
	@override late final _TranslationsDialogCompleteTestJa completeTest = _TranslationsDialogCompleteTestJa._(_root);
	@override late final _TranslationsDialogReTestJa reTest = _TranslationsDialogReTestJa._(_root);
}

// Path: modalSheet
class _TranslationsModalSheetJa implements TranslationsModalSheetEn {
	_TranslationsModalSheetJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsModalSheetSortUserJa sortUser = _TranslationsModalSheetSortUserJa._(_root);
	@override late final _TranslationsModalSheetRefineSearchUserJa refineSearchUser = _TranslationsModalSheetRefineSearchUserJa._(_root);
	@override late final _TranslationsModalSheetPickMediaJa pickMedia = _TranslationsModalSheetPickMediaJa._(_root);
	@override late final _TranslationsModalSheetCommentJa comment = _TranslationsModalSheetCommentJa._(_root);
	@override late final _TranslationsModalSheetRainbowLikeJa rainbowLike = _TranslationsModalSheetRainbowLikeJa._(_root);
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
	@override String get tryLater => 'あとで試す';
	@override String get save => '保存';
	@override String get delete => '削除';
	@override String get apply => '適用';
	@override String get clear => 'クリア';
	@override String get send => '送信';
	@override String get close => '閉じる';
	@override String get destruction => '破棄';
	@override String get interrupt => '中断';
	@override String get startTest => '診断を始める';
	@override String get seeResults => '結果を見る';
	@override String get shareResults => '結果をシェアする';
	@override String get returnToAccountPage => 'アカウント画面に戻る';
	@override String get completion => '完了';
	@override String get weatherPersonalityTest => 'ウェザーパーソナリティ診断';
	@override String get goTochatPage => 'チャット画面へ';
	@override String get rainbowLike => 'レインボーいいね！';
	@override String get retest => '再診断';
}

// Path: segmentedSwitch
class _TranslationsSegmentedSwitchJa implements TranslationsSegmentedSwitchEn {
	_TranslationsSegmentedSwitchJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsSegmentedSwitchLikeJa like = _TranslationsSegmentedSwitchLikeJa._(_root);
	@override late final _TranslationsSegmentedSwitchChatJa chat = _TranslationsSegmentedSwitchChatJa._(_root);
}

// Path: snackBar
class _TranslationsSnackBarJa implements TranslationsSnackBarEn {
	_TranslationsSnackBarJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsSnackBarProfileJa profile = _TranslationsSnackBarProfileJa._(_root);
}

// Path: kEnum
class _TranslationsKEnumJa implements TranslationsKEnumEn {
	_TranslationsKEnumJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsKEnumAddressJa address = _TranslationsKEnumAddressJa._(_root);
	@override late final _TranslationsKEnumAlcoholJa alcohol = _TranslationsKEnumAlcoholJa._(_root);
	@override late final _TranslationsKEnumAnnualIncomeJa annualIncome = _TranslationsKEnumAnnualIncomeJa._(_root);
	@override late final _TranslationsKEnumBloodTypeJa bloodType = _TranslationsKEnumBloodTypeJa._(_root);
	@override late final _TranslationsKEnumBodyShapeJa bodyShape = _TranslationsKEnumBodyShapeJa._(_root);
	@override late final _TranslationsKEnumCommunicationStyleJa communicationStyle = _TranslationsKEnumCommunicationStyleJa._(_root);
	@override late final _TranslationsKEnumEducationJa education = _TranslationsKEnumEducationJa._(_root);
	@override late final _TranslationsKEnumFeelingTypeJa feelingType = _TranslationsKEnumFeelingTypeJa._(_root);
	@override late final _TranslationsKEnumForecastTypeJa forecastType = _TranslationsKEnumForecastTypeJa._(_root);
	@override late final _TranslationsKEnumGenderJa gender = _TranslationsKEnumGenderJa._(_root);
	@override late final _TranslationsKEnumHeightJa height = _TranslationsKEnumHeightJa._(_root);
	@override late final _TranslationsKEnumHolidayJa holiday = _TranslationsKEnumHolidayJa._(_root);
	@override late final _TranslationsKEnumOccupationJa occupation = _TranslationsKEnumOccupationJa._(_root);
	@override late final _TranslationsKEnumSmokingJa smoking = _TranslationsKEnumSmokingJa._(_root);
	@override late final _TranslationsKEnumSortTypeJa sortType = _TranslationsKEnumSortTypeJa._(_root);
	@override late final _TranslationsKEnumWeatherTypeJa weatherType = _TranslationsKEnumWeatherTypeJa._(_root);
	@override late final _TranslationsKEnumWindDirectionJa windDirection = _TranslationsKEnumWindDirectionJa._(_root);
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
}

// Path: userRegistrationPage.birthDate
class _TranslationsUserRegistrationPageBirthDateJa implements TranslationsUserRegistrationPageBirthDateEn {
	_TranslationsUserRegistrationPageBirthDateJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get question => '生年月日を教えてください';
	@override late final _TranslationsUserRegistrationPageBirthDateItemsJa items = _TranslationsUserRegistrationPageBirthDateItemsJa._(_root);
}

// Path: userRegistrationPage.address
class _TranslationsUserRegistrationPageAddressJa implements TranslationsUserRegistrationPageAddressEn {
	_TranslationsUserRegistrationPageAddressJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get question => '居住地を教えてください';
	@override late final _TranslationsUserRegistrationPageAddressItemsJa items = _TranslationsUserRegistrationPageAddressItemsJa._(_root);
}

// Path: userRegistrationPage.name
class _TranslationsUserRegistrationPageNameJa implements TranslationsUserRegistrationPageNameEn {
	_TranslationsUserRegistrationPageNameJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get question => '名前を教えてください';
	@override late final _TranslationsUserRegistrationPageNameItemsJa items = _TranslationsUserRegistrationPageNameItemsJa._(_root);
}

// Path: userRegistrationPage.introduction
class _TranslationsUserRegistrationPageIntroductionJa implements TranslationsUserRegistrationPageIntroductionEn {
	_TranslationsUserRegistrationPageIntroductionJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get question => '自己紹介を教えてください';
	@override late final _TranslationsUserRegistrationPageIntroductionItemsJa items = _TranslationsUserRegistrationPageIntroductionItemsJa._(_root);
}

// Path: userRegistrationPage.mainPhoto
class _TranslationsUserRegistrationPageMainPhotoJa implements TranslationsUserRegistrationPageMainPhotoEn {
	_TranslationsUserRegistrationPageMainPhotoJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get question => 'メイン写真を選んでください';
	@override late final _TranslationsUserRegistrationPageMainPhotoItemsJa items = _TranslationsUserRegistrationPageMainPhotoItemsJa._(_root);
}

// Path: chatPage.sectionTitle
class _TranslationsChatPageSectionTitleJa implements TranslationsChatPageSectionTitleEn {
	_TranslationsChatPageSectionTitleJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get matching => 'マッチング';
	@override String get messages => 'メッセージ';
}

// Path: chatPage.subSectionTitle
class _TranslationsChatPageSubSectionTitleJa implements TranslationsChatPageSubSectionTitleEn {
	_TranslationsChatPageSubSectionTitleJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get matching => '最初のメッセージを送りましょう！';
}

// Path: myWeatherReportPage.weekdays
class _TranslationsMyWeatherReportPageWeekdaysJa implements TranslationsMyWeatherReportPageWeekdaysEn {
	_TranslationsMyWeatherReportPageWeekdaysJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get sunday => '日';
	@override String get monday => '月';
	@override String get tuesday => '火';
	@override String get wednesday => '水';
	@override String get thursday => '木';
	@override String get friday => '金';
	@override String get saturday => '土';
}

// Path: weatherReportPostPage.placeHolder
class _TranslationsWeatherReportPostPagePlaceHolderJa implements TranslationsWeatherReportPostPagePlaceHolderEn {
	_TranslationsWeatherReportPostPagePlaceHolderJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get media => '写真・動画を追加';
	@override String get comment1 => 'コメントを入力';
	@override String get comment2 => 'アルバムから写真や動画を選んだ場合は、コメント欄に撮影日時も添えてください';
}

// Path: weatherReportPostPage.label
class _TranslationsWeatherReportPostPageLabelJa implements TranslationsWeatherReportPostPageLabelEn {
	_TranslationsWeatherReportPostPageLabelJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get location => '場所';
	@override String get weatherFeelingForecast => '天気/体感/予想';
	@override String get observation => '観測値';
}

// Path: weatherReportDetailPage.label
class _TranslationsWeatherReportDetailPageLabelJa implements TranslationsWeatherReportDetailPageLabelEn {
	_TranslationsWeatherReportDetailPageLabelJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get weather => '天気';
	@override String get feeling => '体感';
	@override String get forecast => '五感予想';
}

// Path: profilePage.section
class _TranslationsProfilePageSectionJa implements TranslationsProfilePageSectionEn {
	_TranslationsProfilePageSectionJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get mainPhoto => 'メイン写真';
	@override String get subPhoto => 'サブ写真';
	@override String get weatherPersonality => 'ウェザーパーソナリティ';
	@override String get introduction => '自己紹介文';
	@override String get sunnyDayHobbies => '晴れの日にやりたいことベスト3';
	@override String get rainyDayHobbies => '雨の日にやりたいことベスト3';
	@override late final _TranslationsProfilePageSectionBasicInformationJa basicInformation = _TranslationsProfilePageSectionBasicInformationJa._(_root);
}

// Path: profilePage.edit
class _TranslationsProfilePageEditJa implements TranslationsProfilePageEditEn {
	_TranslationsProfilePageEditJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String title({required Object item}) => '${item}を編集';
	@override late final _TranslationsProfilePageEditSunnyDayHobbiesJa sunnyDayHobbies = _TranslationsProfilePageEditSunnyDayHobbiesJa._(_root);
	@override late final _TranslationsProfilePageEditRainyDayHobbiesJa rainyDayHobbies = _TranslationsProfilePageEditRainyDayHobbiesJa._(_root);
}

// Path: profilePage.placeholder
class _TranslationsProfilePagePlaceholderJa implements TranslationsProfilePagePlaceholderEn {
	_TranslationsProfilePagePlaceholderJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsProfilePagePlaceholderSubPhotoJa subPhoto = _TranslationsProfilePagePlaceholderSubPhotoJa._(_root);
	@override late final _TranslationsProfilePagePlaceholderSunnyDayHobbiesJa sunnyDayHobbies = _TranslationsProfilePagePlaceholderSunnyDayHobbiesJa._(_root);
	@override late final _TranslationsProfilePagePlaceholderRainyDayHobbiesJa rainyDayHobbies = _TranslationsProfilePagePlaceholderRainyDayHobbiesJa._(_root);
	@override late final _TranslationsProfilePagePlaceholderBasicInformationJa basicInformation = _TranslationsProfilePagePlaceholderBasicInformationJa._(_root);
}

// Path: weatherPersonalityConceptPage.contentText
class _TranslationsWeatherPersonalityConceptPageContentTextJa implements TranslationsWeatherPersonalityConceptPageContentTextEn {
	_TranslationsWeatherPersonalityConceptPageContentTextJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get contentTitle => '診断について';
	@override String get contentText1 => 'あなたが動物に生まれ変わるとして、\n\n';
	@override String get contentText2 => '前世の天気に対する行動や性格から\n';
	@override String get contentText3 => '神様が客観的に判断し、\n\n';
	@override String get contentText4 => '16タイプのキャラ';
	@override String get contentText5 => 'に分類されます\n\n';
	@override String get contentText6 => '16の質問に答えて、\nあなたのウェザーパーソナルタイプを\n診断しましょう';
}

// Path: weatherPersonalityDetailPage.section
class _TranslationsWeatherPersonalityDetailPageSectionJa implements TranslationsWeatherPersonalityDetailPageSectionEn {
	_TranslationsWeatherPersonalityDetailPageSectionJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsWeatherPersonalityDetailPageSectionMainResultJa mainResult = _TranslationsWeatherPersonalityDetailPageSectionMainResultJa._(_root);
	@override late final _TranslationsWeatherPersonalityDetailPageSectionGodsRulingJa godsRuling = _TranslationsWeatherPersonalityDetailPageSectionGodsRulingJa._(_root);
	@override late final _TranslationsWeatherPersonalityDetailPageSectionBehaviorTendencyJa behaviorTendency = _TranslationsWeatherPersonalityDetailPageSectionBehaviorTendencyJa._(_root);
	@override late final _TranslationsWeatherPersonalityDetailPageSectionAxisFeatureJa axisFeature = _TranslationsWeatherPersonalityDetailPageSectionAxisFeatureJa._(_root);
	@override late final _TranslationsWeatherPersonalityDetailPageSectionAxisScoreJa axisScore = _TranslationsWeatherPersonalityDetailPageSectionAxisScoreJa._(_root);
	@override late final _TranslationsWeatherPersonalityDetailPageSectionCompatibleTypeJa compatibleType = _TranslationsWeatherPersonalityDetailPageSectionCompatibleTypeJa._(_root);
	@override late final _TranslationsWeatherPersonalityDetailPageSectionIncompatibleTypeJa incompatibleType = _TranslationsWeatherPersonalityDetailPageSectionIncompatibleTypeJa._(_root);
	@override late final _TranslationsWeatherPersonalityDetailPageSectionGodsMessageJa godsMessage = _TranslationsWeatherPersonalityDetailPageSectionGodsMessageJa._(_root);
}

// Path: weatherPersonalityTestJudgingPage.contentText
class _TranslationsWeatherPersonalityTestJudgingPageContentTextJa implements TranslationsWeatherPersonalityTestJudgingPageContentTextEn {
	_TranslationsWeatherPersonalityTestJudgingPageContentTextJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get contentTitle => '診断完了';
	@override String get contentText1 => '神様は、前世の行動記録を\nすべて見終えました。';
}

// Path: weatherPersonalityTestPage.q1
class _TranslationsWeatherPersonalityTestPageQ1Ja implements TranslationsWeatherPersonalityTestPageQ1En {
	_TranslationsWeatherPersonalityTestPageQ1Ja._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Q1';
	@override String get question => '神様は、前世のあなたが天気が良い日の様子を見ていました。';
	@override String get answerA => '外に出て、どこかへ行こうとすることが多かった';
	@override String get answerB => '家の中で過ごすことが多かった';
}

// Path: weatherPersonalityTestPage.q2
class _TranslationsWeatherPersonalityTestPageQ2Ja implements TranslationsWeatherPersonalityTestPageQ2En {
	_TranslationsWeatherPersonalityTestPageQ2Ja._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Q2';
	@override String get question => '神様は、天気が悪い日のあなたの選択を覚えています。';
	@override String get answerA => 'それでも外に出る理由を探していた';
	@override String get answerB => '外出を控え、屋内で過ごしていた';
}

// Path: weatherPersonalityTestPage.q3
class _TranslationsWeatherPersonalityTestPageQ3Ja implements TranslationsWeatherPersonalityTestPageQ3En {
	_TranslationsWeatherPersonalityTestPageQ3Ja._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Q3';
	@override String get question => '神様は、前世のあなたが天候が不安定な日の過ごし方を観測していました。';
	@override String get answerA => '屋内外を行き来しながらも、外での行動を続けていた';
	@override String get answerB => '外出は最小限にし、屋内中心で過ごしていた';
}

// Path: weatherPersonalityTestPage.q4
class _TranslationsWeatherPersonalityTestPageQ4Ja implements TranslationsWeatherPersonalityTestPageQ4En {
	_TranslationsWeatherPersonalityTestPageQ4Ja._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Q4';
	@override String get question => '神様は、前世のあなたが特に用事のない休日をどう過ごしていたかを見ていました。';
	@override String get answerA => '気分転換に外の空気を吸いに出ていた';
	@override String get answerB => '自分の空間で静かに過ごしていた';
}

// Path: weatherPersonalityTestPage.q5
class _TranslationsWeatherPersonalityTestPageQ5Ja implements TranslationsWeatherPersonalityTestPageQ5En {
	_TranslationsWeatherPersonalityTestPageQ5Ja._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Q5';
	@override String get question => '神様は、外出前日のあなたを見ていました。';
	@override String get answerA => '天気予報を確認し、服装や持ち物を決めていた';
	@override String get answerB => '当日の様子を見てから考えていた';
}

// Path: weatherPersonalityTestPage.q6
class _TranslationsWeatherPersonalityTestPageQ6Ja implements TranslationsWeatherPersonalityTestPageQ6En {
	_TranslationsWeatherPersonalityTestPageQ6Ja._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Q6';
	@override String get question => '神様は、雨が降るか微妙な日の行動を覚えています。';
	@override String get answerA => '降る前提で準備し、濡れないように行動していた';
	@override String get answerB => '降ったらその時考えようと思っていた';
}

// Path: weatherPersonalityTestPage.q7
class _TranslationsWeatherPersonalityTestPageQ7Ja implements TranslationsWeatherPersonalityTestPageQ7En {
	_TranslationsWeatherPersonalityTestPageQ7Ja._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Q7';
	@override String get question => '神様は、予定が天気で崩れそうな時のあなたを見ていました。';
	@override String get answerA => '事前に代替案を考えて安心していた';
	@override String get answerB => '状況次第で決めればいいと思っていた\'';
}

// Path: weatherPersonalityTestPage.q8
class _TranslationsWeatherPersonalityTestPageQ8Ja implements TranslationsWeatherPersonalityTestPageQ8En {
	_TranslationsWeatherPersonalityTestPageQ8Ja._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Q8';
	@override String get question => '神様は、前世のあなたが「想定外」が起きた瞬間を観測しています。';
	@override String get answerA => '予測していなかったことに少しストレスを感じていた';
	@override String get answerB => '変化そのものを楽しむ余裕があった';
}

// Path: weatherPersonalityTestPage.q9
class _TranslationsWeatherPersonalityTestPageQ9Ja implements TranslationsWeatherPersonalityTestPageQ9En {
	_TranslationsWeatherPersonalityTestPageQ9Ja._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Q9';
	@override String get question => '神様は、前世のあなたが朝起きて空模様を見た瞬間の様子を見ていました。';
	@override String get answerA => '天気によって、その日の気分ややる気がはっきり変わっていた';
	@override String get answerB => '天気は天気として受け止め、気分はあまり左右されなかった';
}

// Path: weatherPersonalityTestPage.q10
class _TranslationsWeatherPersonalityTestPageQ10Ja implements TranslationsWeatherPersonalityTestPageQ10En {
	_TranslationsWeatherPersonalityTestPageQ10Ja._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Q10';
	@override String get question => '神様は、低気圧や雨の日のあなたの様子を覚えています。';
	@override String get answerA => 'なんとなく気分が沈んだり、身体が重く感じることが多かった';
	@override String get answerB => '特に変化はなく、いつも通り過ごしていた';
}

// Path: weatherPersonalityTestPage.q11
class _TranslationsWeatherPersonalityTestPageQ11Ja implements TranslationsWeatherPersonalityTestPageQ11En {
	_TranslationsWeatherPersonalityTestPageQ11Ja._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Q11';
	@override String get question => '神様は、前世のあなたが季節の変わり目にどう反応していたかを見ていました。';
	@override String get answerA => '空気や匂いの変化に気づき、感情が動くことが多かった';
	@override String get answerB => '季節が変わっても、あまり意識せずに過ごしていた';
}

// Path: weatherPersonalityTestPage.q12
class _TranslationsWeatherPersonalityTestPageQ12Ja implements TranslationsWeatherPersonalityTestPageQ12En {
	_TranslationsWeatherPersonalityTestPageQ12Ja._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Q12';
	@override String get question => '神様は、強い日差しや自然の音（雨や雷など）、湿度に対するあなたの反応を記録しています。';
	@override String get answerA => '刺激が強いと疲れやすく、影響を受けやすかった';
	@override String get answerB => '多少の刺激では、特に気にならなかった';
}

// Path: weatherPersonalityTestPage.q13
class _TranslationsWeatherPersonalityTestPageQ13Ja implements TranslationsWeatherPersonalityTestPageQ13En {
	_TranslationsWeatherPersonalityTestPageQ13Ja._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Q13';
	@override String get question => '神様は、前世のあなたが外出するか迷った場面で何を基準にしていたかを見ています。';
	@override String get answerA => 'その日の気分や雰囲気を大切にして決めていた';
	@override String get answerB => '目的や必要性を考えて決めていた';
}

// Path: weatherPersonalityTestPage.q14
class _TranslationsWeatherPersonalityTestPageQ14Ja implements TranslationsWeatherPersonalityTestPageQ14En {
	_TranslationsWeatherPersonalityTestPageQ14Ja._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Q14';
	@override String get question => '神様は、前世のあなたが一日の行動を終えた後に何を残していたかを観測しました。';
	@override String get answerA => 'その日の気分や余韻が、強く印象に残っていた';
	@override String get answerB => '何を達成できたかが、はっきり残っていた';
}

// Path: weatherPersonalityTestPage.q15
class _TranslationsWeatherPersonalityTestPageQ15Ja implements TranslationsWeatherPersonalityTestPageQ15En {
	_TranslationsWeatherPersonalityTestPageQ15Ja._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Q15';
	@override String get question => '神様は、前世のあなたが天気に左右される予定において何を優先して行動していたかを知っています。';
	@override String get answerA => 'その時の気分や納得感を優先して選んでいた';
	@override String get answerB => '天気の状況から効率や合理性を優先して選んでいた';
}

// Path: weatherPersonalityTestPage.q16
class _TranslationsWeatherPersonalityTestPageQ16Ja implements TranslationsWeatherPersonalityTestPageQ16En {
	_TranslationsWeatherPersonalityTestPageQ16Ja._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Q16';
	@override String get question => '神様は、前世のあなたが急ぐ必要のない帰り道で、どの道を選んでいたかを見ていました。';
	@override String get answerA => '少し遠回りでも、景色や雰囲気が心地よい道を選んでいた';
	@override String get answerB => '特に理由がなくても、自然と一番早く着く道を選んでいた';
}

// Path: weatherPersonalityTestResultPage.section
class _TranslationsWeatherPersonalityTestResultPageSectionJa implements TranslationsWeatherPersonalityTestResultPageSectionEn {
	_TranslationsWeatherPersonalityTestResultPageSectionJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '神様からの裁定';
	@override late final _TranslationsWeatherPersonalityTestResultPageSectionMainResultJa mainResult = _TranslationsWeatherPersonalityTestResultPageSectionMainResultJa._(_root);
	@override late final _TranslationsWeatherPersonalityTestResultPageSectionGodsRulingJa godsRuling = _TranslationsWeatherPersonalityTestResultPageSectionGodsRulingJa._(_root);
	@override late final _TranslationsWeatherPersonalityTestResultPageSectionBehaviorTendencyJa behaviorTendency = _TranslationsWeatherPersonalityTestResultPageSectionBehaviorTendencyJa._(_root);
	@override late final _TranslationsWeatherPersonalityTestResultPageSectionAxisFeatureJa axisFeature = _TranslationsWeatherPersonalityTestResultPageSectionAxisFeatureJa._(_root);
	@override late final _TranslationsWeatherPersonalityTestResultPageSectionAxisScoreJa axisScore = _TranslationsWeatherPersonalityTestResultPageSectionAxisScoreJa._(_root);
	@override late final _TranslationsWeatherPersonalityTestResultPageSectionGodsMessageJa godsMessage = _TranslationsWeatherPersonalityTestResultPageSectionGodsMessageJa._(_root);
}

// Path: settingPage.section
class _TranslationsSettingPageSectionJa implements TranslationsSettingPageSectionEn {
	_TranslationsSettingPageSectionJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsSettingPageSectionAccountSettingJa accountSetting = _TranslationsSettingPageSectionAccountSettingJa._(_root);
	@override late final _TranslationsSettingPageSectionHistoryJa history = _TranslationsSettingPageSectionHistoryJa._(_root);
	@override late final _TranslationsSettingPageSectionHelpJa help = _TranslationsSettingPageSectionHelpJa._(_root);
	@override late final _TranslationsSettingPageSectionAboutReimiJa aboutReimi = _TranslationsSettingPageSectionAboutReimiJa._(_root);
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

// Path: dialog.userAddress
class _TranslationsDialogUserAddressJa implements TranslationsDialogUserAddressEn {
	_TranslationsDialogUserAddressJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '居住地の確認';
	@override String get contentText1 => '選択した居住地：';
	@override String get contentText2 => 'この内容で次に進みますか？';
}

// Path: dialog.userBirthDate
class _TranslationsDialogUserBirthDateJa implements TranslationsDialogUserBirthDateEn {
	_TranslationsDialogUserBirthDateJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '生年月日の確認';
	@override String get contentText1 => '選択した生年月日：';
	@override String get contentText2 => 'この内容で次に進みますか？';
}

// Path: dialog.userGender
class _TranslationsDialogUserGenderJa implements TranslationsDialogUserGenderEn {
	_TranslationsDialogUserGenderJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '性別の確認';
	@override String get contentText1 => '選択した性別：';
	@override String get contentText2 => 'この内容で次に進みますか？';
}

// Path: dialog.userIntroduction
class _TranslationsDialogUserIntroductionJa implements TranslationsDialogUserIntroductionEn {
	_TranslationsDialogUserIntroductionJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '自己紹介の確認';
	@override String get contentText1 => '入力した自己紹介：';
	@override String get contentText2 => 'この内容で次に進みますか？';
}

// Path: dialog.userMainPhoto
class _TranslationsDialogUserMainPhotoJa implements TranslationsDialogUserMainPhotoEn {
	_TranslationsDialogUserMainPhotoJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '写真の確認';
	@override String get contentText1 => '選択した写真：';
	@override String get contentText2 => 'この内容で登録を完了しますか？';
}

// Path: dialog.userName
class _TranslationsDialogUserNameJa implements TranslationsDialogUserNameEn {
	_TranslationsDialogUserNameJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '名前の確認';
	@override String get contentText1 => '入力した名前：';
	@override String get contentText2 => 'この内容で次に進みますか？';
}

// Path: dialog.logout
class _TranslationsDialogLogoutJa implements TranslationsDialogLogoutEn {
	_TranslationsDialogLogoutJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'ログアウトの確認';
	@override String get contentText => '本当にログアウトしますか？';
}

// Path: dialog.deletePhoto
class _TranslationsDialogDeletePhotoJa implements TranslationsDialogDeletePhotoEn {
	_TranslationsDialogDeletePhotoJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '写真削除の確認';
	@override String get contentText => '本当にこの写真を削除しますか？';
}

// Path: dialog.saveChanges
class _TranslationsDialogSaveChangesJa implements TranslationsDialogSaveChangesEn {
	_TranslationsDialogSaveChangesJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '変更保存の確認';
	@override String get contentText => '変更した内容を保存しますか？';
}

// Path: dialog.weatherReportComplete
class _TranslationsDialogWeatherReportCompleteJa implements TranslationsDialogWeatherReportCompleteEn {
	_TranslationsDialogWeatherReportCompleteJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'ウェザーリポート完了';
}

// Path: dialog.destructionChanges
class _TranslationsDialogDestructionChangesJa implements TranslationsDialogDestructionChangesEn {
	_TranslationsDialogDestructionChangesJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '変更破棄の確認';
	@override String get contentText => '変更した内容を破棄しますか？';
}

// Path: dialog.interruptTest
class _TranslationsDialogInterruptTestJa implements TranslationsDialogInterruptTestEn {
	_TranslationsDialogInterruptTestJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '診断中断の確認';
	@override String get contentText => '回答内容は保存されません。\n本当に診断を中断しますか？';
}

// Path: dialog.completeTest
class _TranslationsDialogCompleteTestJa implements TranslationsDialogCompleteTestEn {
	_TranslationsDialogCompleteTestJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '診断完了の確認';
	@override String get contentText => '回答した内容を送信し、診断を完了しますか？';
}

// Path: dialog.reTest
class _TranslationsDialogReTestJa implements TranslationsDialogReTestEn {
	_TranslationsDialogReTestJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '再診断の確認';
	@override String get contentText => '診断をやり直すと、現在の診断結果は削除されます。\n本当に再診断しますか？';
}

// Path: modalSheet.sortUser
class _TranslationsModalSheetSortUserJa implements TranslationsModalSheetSortUserEn {
	_TranslationsModalSheetSortUserJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '並び替え';
}

// Path: modalSheet.refineSearchUser
class _TranslationsModalSheetRefineSearchUserJa implements TranslationsModalSheetRefineSearchUserEn {
	_TranslationsModalSheetRefineSearchUserJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '絞り込み条件';
	@override late final _TranslationsModalSheetRefineSearchUserSectionJa section = _TranslationsModalSheetRefineSearchUserSectionJa._(_root);
}

// Path: modalSheet.pickMedia
class _TranslationsModalSheetPickMediaJa implements TranslationsModalSheetPickMediaEn {
	_TranslationsModalSheetPickMediaJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsModalSheetPickMediaLabelJa label = _TranslationsModalSheetPickMediaLabelJa._(_root);
}

// Path: modalSheet.comment
class _TranslationsModalSheetCommentJa implements TranslationsModalSheetCommentEn {
	_TranslationsModalSheetCommentJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'コメント';
	@override String get placeHolder => 'コメントを追加';
}

// Path: modalSheet.rainbowLike
class _TranslationsModalSheetRainbowLikeJa implements TranslationsModalSheetRainbowLikeEn {
	_TranslationsModalSheetRainbowLikeJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'レインボーいいねを送る';
	@override late final _TranslationsModalSheetRainbowLikeMessageTipsJa messageTips = _TranslationsModalSheetRainbowLikeMessageTipsJa._(_root);
	@override late final _TranslationsModalSheetRainbowLikeTextFieldJa textField = _TranslationsModalSheetRainbowLikeTextFieldJa._(_root);
	@override late final _TranslationsModalSheetRainbowLikeNoticeTextsJa noticeTexts = _TranslationsModalSheetRainbowLikeNoticeTextsJa._(_root);
}

// Path: segmentedSwitch.like
class _TranslationsSegmentedSwitchLikeJa implements TranslationsSegmentedSwitchLikeEn {
	_TranslationsSegmentedSwitchLikeJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get fromUser => '相手から';
	@override String get toUser => '自分から';
}

// Path: segmentedSwitch.chat
class _TranslationsSegmentedSwitchChatJa implements TranslationsSegmentedSwitchChatEn {
	_TranslationsSegmentedSwitchChatJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get message => 'メッセージ';
	@override String get profile => 'プロフィール';
}

// Path: snackBar.profile
class _TranslationsSnackBarProfileJa implements TranslationsSnackBarProfileEn {
	_TranslationsSnackBarProfileJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get success => 'プロフィール更新が完了しました！';
}

// Path: kEnum.address
class _TranslationsKEnumAddressJa implements TranslationsKEnumAddressEn {
	_TranslationsKEnumAddressJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsKEnumAddressPrefectureJa prefecture = _TranslationsKEnumAddressPrefectureJa._(_root);
	@override String get other => 'その他';
}

// Path: kEnum.alcohol
class _TranslationsKEnumAlcoholJa implements TranslationsKEnumAlcoholEn {
	_TranslationsKEnumAlcoholJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get no => '飲まない';
	@override String get sometimes => 'たまに飲む';
	@override String get yes => '飲む';
}

// Path: kEnum.annualIncome
class _TranslationsKEnumAnnualIncomeJa implements TranslationsKEnumAnnualIncomeEn {
	_TranslationsKEnumAnnualIncomeJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get under2M => '200万円未満';
	@override String get between2And4M => '200万〜400万円';
	@override String get between4And6M => '400万〜600万円';
	@override String get between6And8M => '600万〜800万円';
	@override String get between8And10M => '800万〜1000万円';
	@override String get between10And15M => '1000万〜1500万円';
	@override String get between15And20M => '1500万〜2000万円';
	@override String get between20And30M => '2000万〜3000万円';
	@override String get over30M => '3000万円以上';
}

// Path: kEnum.bloodType
class _TranslationsKEnumBloodTypeJa implements TranslationsKEnumBloodTypeEn {
	_TranslationsKEnumBloodTypeJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get a => 'A型';
	@override String get b => 'B型';
	@override String get o => 'O型';
	@override String get ab => 'AB型';
	@override String get unknown => 'わからない';
}

// Path: kEnum.bodyShape
class _TranslationsKEnumBodyShapeJa implements TranslationsKEnumBodyShapeEn {
	_TranslationsKEnumBodyShapeJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get slim => 'スリム';
	@override String get slender => 'やや細め';
	@override String get normal => '普通';
	@override String get muscular => '筋肉質';
	@override String get chubby => 'ややぽっちゃり';
	@override String get overweight => '太め';
}

// Path: kEnum.communicationStyle
class _TranslationsKEnumCommunicationStyleJa implements TranslationsKEnumCommunicationStyleEn {
	_TranslationsKEnumCommunicationStyleJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get call => '電話派';
	@override String get message => 'メッセージ派';
	@override String get inPerson => '対面派';
}

// Path: kEnum.education
class _TranslationsKEnumEducationJa implements TranslationsKEnumEducationEn {
	_TranslationsKEnumEducationJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get highSchoolGraduate => '高校卒';
	@override String get juniorCollegeGraduate => '短大卒';
	@override String get vocationalSchoolGraduate => '専門卒';
	@override String get technicalCollegeGraduate => '高専卒';
	@override String get universityGraduate => '大学卒';
	@override String get graduateSchoolGraduate => '大学院卒';
	@override String get other => 'その他';
}

// Path: kEnum.feelingType
class _TranslationsKEnumFeelingTypeJa implements TranslationsKEnumFeelingTypeEn {
	_TranslationsKEnumFeelingTypeJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get freezing => '極寒';
	@override String get cold => '寒い';
	@override String get comfortable => 'ちょうどいい';
	@override String get warm => '暖かい';
	@override String get notApplicable => 'あてはまらない';
}

// Path: kEnum.forecastType
class _TranslationsKEnumForecastTypeJa implements TranslationsKEnumForecastTypeEn {
	_TranslationsKEnumForecastTypeJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get noChange => '今と変化なさそう';
	@override String get improving => '回復しそう';
	@override String get worsening => '下り坂になりそう';
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

// Path: kEnum.height
class _TranslationsKEnumHeightJa implements TranslationsKEnumHeightEn {
	_TranslationsKEnumHeightJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get under130cm => '130cm以下';
	@override String get just131cm => '131cm';
	@override String get just132cm => '132cm';
	@override String get just133cm => '133cm';
	@override String get just134cm => '134cm';
	@override String get just135cm => '135cm';
	@override String get just136cm => '136cm';
	@override String get just137cm => '137cm';
	@override String get just138cm => '138cm';
	@override String get just139cm => '139cm';
	@override String get just140cm => '140cm';
	@override String get just141cm => '141cm';
	@override String get just142cm => '142cm';
	@override String get just143cm => '143cm';
	@override String get just144cm => '144cm';
	@override String get just145cm => '145cm';
	@override String get just146cm => '146cm';
	@override String get just147cm => '147cm';
	@override String get just148cm => '148cm';
	@override String get just149cm => '149cm';
	@override String get just150cm => '150cm';
	@override String get just151cm => '151cm';
	@override String get just152cm => '152cm';
	@override String get just153cm => '153cm';
	@override String get just154cm => '154cm';
	@override String get just155cm => '155cm';
	@override String get just156cm => '156cm';
	@override String get just157cm => '157cm';
	@override String get just158cm => '158cm';
	@override String get just159cm => '159cm';
	@override String get just160cm => '160cm';
	@override String get just161cm => '161cm';
	@override String get just162cm => '162cm';
	@override String get just163cm => '163cm';
	@override String get just164cm => '164cm';
	@override String get just165cm => '165cm';
	@override String get just166cm => '166cm';
	@override String get just167cm => '167cm';
	@override String get just168cm => '168cm';
	@override String get just169cm => '169cm';
	@override String get just170cm => '170cm';
	@override String get just171cm => '171cm';
	@override String get just172cm => '172cm';
	@override String get just173cm => '173cm';
	@override String get just174cm => '174cm';
	@override String get just175cm => '175cm';
	@override String get just176cm => '176cm';
	@override String get just177cm => '177cm';
	@override String get just178cm => '178cm';
	@override String get just179cm => '179cm';
	@override String get just180cm => '180cm';
	@override String get just181cm => '181cm';
	@override String get just182cm => '182cm';
	@override String get just183cm => '183cm';
	@override String get just184cm => '184cm';
	@override String get just185cm => '185cm';
	@override String get just186cm => '186cm';
	@override String get just187cm => '187cm';
	@override String get just188cm => '188cm';
	@override String get just189cm => '189cm';
	@override String get just190cm => '190cm';
	@override String get just191cm => '191cm';
	@override String get just192cm => '192cm';
	@override String get just193cm => '193cm';
	@override String get just194cm => '194cm';
	@override String get just195cm => '195cm';
	@override String get just196cm => '196cm';
	@override String get just197cm => '197cm';
	@override String get just198cm => '198cm';
	@override String get just199cm => '199cm';
	@override String get over200cm => '200cm以上';
}

// Path: kEnum.holiday
class _TranslationsKEnumHolidayJa implements TranslationsKEnumHolidayEn {
	_TranslationsKEnumHolidayJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get weekend => '土日';
	@override String get weekday => '平日';
	@override String get irregular => '不定休';
}

// Path: kEnum.occupation
class _TranslationsKEnumOccupationJa implements TranslationsKEnumOccupationEn {
	_TranslationsKEnumOccupationJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get universityStudent => '大学生';
	@override String get graduateStudent => '大学院生';
	@override String get vocationalStudent => '専門学生';
	@override String get juniorCollegeStudent => '短大生';
	@override String get technicalCollegeStudent => '高専生';
	@override String get distribution => '流通';
	@override String get foodIndustry => '食品関係';
	@override String get pharmaceutical => '製薬';
	@override String get medical => '医療関係';
	@override String get welfareCare => '福祉・介護';
	@override String get doctor => '医師';
	@override String get nurse => '看護師';
	@override String get pharmacist => '薬剤師';
	@override String get telecommunication => '通信';
	@override String get web => 'WEB関係';
	@override String get it => 'IT関係';
	@override String get engineer => 'エンジニア';
	@override String get creator => 'クリエイター';
	@override String get designer => 'デザイナー';
	@override String get architectureInterior => '建築・インテリア';
	@override String get finance => '金融';
	@override String get insurance => '保険';
	@override String get consulting => 'コンサル';
	@override String get massMedia => 'マスコミ';
	@override String get advertising => '広告';
	@override String get publishing => '出版';
	@override String get education => '教育関係';
	@override String get retail => '小売';
	@override String get transportation => '輸送・交通';
	@override String get entertainment => 'エンターテイメント';
	@override String get travel => '旅行関係';
	@override String get realEstate => '不動産';
	@override String get tradingCompany => '商社';
	@override String get manufacturer => 'メーカー';
	@override String get researcher => '研究職';
	@override String get majorCompany => '大手企業';
	@override String get foreignCompany => '外資企業';
	@override String get listedCompany => '上場企業';
	@override String get executive => '経営者・役員';
	@override String get legal => '法務関係';
	@override String get lawyer => '弁護士';
	@override String get certifiedPublicAccountant => '公認会計士';
	@override String get taxAccountant => '税理士';
	@override String get freelance => '自由業';
	@override String get publicServant => '公務員';
	@override String get firefighter => '消防士';
	@override String get police => '警察官';
	@override String get selfDefenseForce => '自衛隊';
	@override String get athlete => 'スポーツ選手';
	@override String get pilot => 'パイロット';
	@override String get investor => '投資家';
	@override String get cabinAttendant => 'キャビンアテンダント';
	@override String get apparel => 'アパレル';
	@override String get beauty => '美容関係';
	@override String get bridal => 'ブライダル';
	@override String get chefNutritionist => '調理師・栄養士';
	@override String get childcareWorker => '保育士';
	@override String get service => 'サービス業';
	@override String get secretary => '秘書';
	@override String get announcer => 'アナウンサー';
	@override String get receptionist => '受付';
	@override String get entertainerModel => '芸能・モデル';
	@override String get influencer => 'インフルエンサー';
	@override String get youtuber => 'YouTuber';
	@override String get proGamer => 'プロゲーマー';
	@override String get companyEmployee => '会社員';
	@override String get officeWork => '事務';
	@override String get selfEmployed => '自営業';
	@override String get other => 'その他';
}

// Path: kEnum.smoking
class _TranslationsKEnumSmokingJa implements TranslationsKEnumSmokingEn {
	_TranslationsKEnumSmokingJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get no => '吸わない';
	@override String get sometimes => 'たまに吸う';
	@override String get yes => '吸う';
}

// Path: kEnum.sortType
class _TranslationsKEnumSortTypeJa implements TranslationsKEnumSortTypeEn {
	_TranslationsKEnumSortTypeJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get login => 'ログイン順';
	@override String get compatibility => '相性順';
}

// Path: kEnum.weatherType
class _TranslationsKEnumWeatherTypeJa implements TranslationsKEnumWeatherTypeEn {
	_TranslationsKEnumWeatherTypeJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get clearStar => '星がはっきり';
	@override String get faintStar => '星がうっすら';
	@override String get noStar => '星が見えない';
	@override String get drizzle => 'ポツポツ';
	@override String get lightRain => 'パラパラ';
	@override String get rain => 'サー';
	@override String get heavyRain => 'サーサー';
}

// Path: kEnum.windDirection
class _TranslationsKEnumWindDirectionJa implements TranslationsKEnumWindDirectionEn {
	_TranslationsKEnumWindDirectionJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get north => '北';
	@override String get northEast => '北東';
	@override String get east => '東';
	@override String get southEast => '南東';
	@override String get south => '南';
	@override String get southWest => '南西';
	@override String get west => '西';
	@override String get northWest => '北西';
	@override String get unknown => '分からない';
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

// Path: userRegistrationPage.address.items
class _TranslationsUserRegistrationPageAddressItemsJa implements TranslationsUserRegistrationPageAddressItemsEn {
	_TranslationsUserRegistrationPageAddressItemsJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get placeholder => '都道府県を選択';
}

// Path: userRegistrationPage.name.items
class _TranslationsUserRegistrationPageNameItemsJa implements TranslationsUserRegistrationPageNameItemsEn {
	_TranslationsUserRegistrationPageNameItemsJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get placeholder => '名前を入力';
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

// Path: userRegistrationPage.mainPhoto.items
class _TranslationsUserRegistrationPageMainPhotoItemsJa implements TranslationsUserRegistrationPageMainPhotoItemsEn {
	_TranslationsUserRegistrationPageMainPhotoItemsJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get photoSelectInstructionText => 'クリックして写真を選択';
	@override String get photoRecommendationHint => '笑顔の顔写真がおすすめ';
}

// Path: profilePage.section.basicInformation
class _TranslationsProfilePageSectionBasicInformationJa implements TranslationsProfilePageSectionBasicInformationEn {
	_TranslationsProfilePageSectionBasicInformationJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '基本情報';
	@override late final _TranslationsProfilePageSectionBasicInformationItemsJa items = _TranslationsProfilePageSectionBasicInformationItemsJa._(_root);
}

// Path: profilePage.edit.sunnyDayHobbies
class _TranslationsProfilePageEditSunnyDayHobbiesJa implements TranslationsProfilePageEditSunnyDayHobbiesEn {
	_TranslationsProfilePageEditSunnyDayHobbiesJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get top1 => '晴れの日ベスト1';
	@override String get top2 => '晴れの日ベスト2';
	@override String get top3 => '晴れの日ベスト3';
}

// Path: profilePage.edit.rainyDayHobbies
class _TranslationsProfilePageEditRainyDayHobbiesJa implements TranslationsProfilePageEditRainyDayHobbiesEn {
	_TranslationsProfilePageEditRainyDayHobbiesJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get top1 => '雨の日ベスト1';
	@override String get top2 => '雨の日ベスト2';
	@override String get top3 => '雨の日ベスト3';
}

// Path: profilePage.placeholder.subPhoto
class _TranslationsProfilePagePlaceholderSubPhotoJa implements TranslationsProfilePagePlaceholderSubPhotoEn {
	_TranslationsProfilePagePlaceholderSubPhotoJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsProfilePagePlaceholderSubPhotoLabelsJa labels = _TranslationsProfilePagePlaceholderSubPhotoLabelsJa._(_root);
}

// Path: profilePage.placeholder.sunnyDayHobbies
class _TranslationsProfilePagePlaceholderSunnyDayHobbiesJa implements TranslationsProfilePagePlaceholderSunnyDayHobbiesEn {
	_TranslationsProfilePagePlaceholderSunnyDayHobbiesJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get top1 => '晴れの日ベスト1を入力';
	@override String get top2 => '晴れの日ベスト2を入力';
	@override String get top3 => '晴れの日ベスト3を入力';
}

// Path: profilePage.placeholder.rainyDayHobbies
class _TranslationsProfilePagePlaceholderRainyDayHobbiesJa implements TranslationsProfilePagePlaceholderRainyDayHobbiesEn {
	_TranslationsProfilePagePlaceholderRainyDayHobbiesJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get top1 => '雨の日ベスト1を入力';
	@override String get top2 => '雨の日ベスト2を入力';
	@override String get top3 => '雨の日ベスト3を入力';
}

// Path: profilePage.placeholder.basicInformation
class _TranslationsProfilePagePlaceholderBasicInformationJa implements TranslationsProfilePagePlaceholderBasicInformationEn {
	_TranslationsProfilePagePlaceholderBasicInformationJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get notSet => '未設定';
	@override String get toolTip => 'この項目は変更できません。';
}

// Path: weatherPersonalityDetailPage.section.mainResult
class _TranslationsWeatherPersonalityDetailPageSectionMainResultJa implements TranslationsWeatherPersonalityDetailPageSectionMainResultEn {
	_TranslationsWeatherPersonalityDetailPageSectionMainResultJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get typeCode => ' 診断タイプコード';
	@override String get you => 'あなたは';
}

// Path: weatherPersonalityDetailPage.section.godsRuling
class _TranslationsWeatherPersonalityDetailPageSectionGodsRulingJa implements TranslationsWeatherPersonalityDetailPageSectionGodsRulingEn {
	_TranslationsWeatherPersonalityDetailPageSectionGodsRulingJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '神様の裁定文';
}

// Path: weatherPersonalityDetailPage.section.behaviorTendency
class _TranslationsWeatherPersonalityDetailPageSectionBehaviorTendencyJa implements TranslationsWeatherPersonalityDetailPageSectionBehaviorTendencyEn {
	_TranslationsWeatherPersonalityDetailPageSectionBehaviorTendencyJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '行動傾向';
}

// Path: weatherPersonalityDetailPage.section.axisFeature
class _TranslationsWeatherPersonalityDetailPageSectionAxisFeatureJa implements TranslationsWeatherPersonalityDetailPageSectionAxisFeatureEn {
	_TranslationsWeatherPersonalityDetailPageSectionAxisFeatureJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '4軸の特徴';
}

// Path: weatherPersonalityDetailPage.section.axisScore
class _TranslationsWeatherPersonalityDetailPageSectionAxisScoreJa implements TranslationsWeatherPersonalityDetailPageSectionAxisScoreEn {
	_TranslationsWeatherPersonalityDetailPageSectionAxisScoreJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '4軸スコア';
	@override late final _TranslationsWeatherPersonalityDetailPageSectionAxisScoreAxisJa axis = _TranslationsWeatherPersonalityDetailPageSectionAxisScoreAxisJa._(_root);
}

// Path: weatherPersonalityDetailPage.section.compatibleType
class _TranslationsWeatherPersonalityDetailPageSectionCompatibleTypeJa implements TranslationsWeatherPersonalityDetailPageSectionCompatibleTypeEn {
	_TranslationsWeatherPersonalityDetailPageSectionCompatibleTypeJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'あなたと相性の良いタイプ';
}

// Path: weatherPersonalityDetailPage.section.incompatibleType
class _TranslationsWeatherPersonalityDetailPageSectionIncompatibleTypeJa implements TranslationsWeatherPersonalityDetailPageSectionIncompatibleTypeEn {
	_TranslationsWeatherPersonalityDetailPageSectionIncompatibleTypeJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '注意が必要なタイプ';
}

// Path: weatherPersonalityDetailPage.section.godsMessage
class _TranslationsWeatherPersonalityDetailPageSectionGodsMessageJa implements TranslationsWeatherPersonalityDetailPageSectionGodsMessageEn {
	_TranslationsWeatherPersonalityDetailPageSectionGodsMessageJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '神様からの一言';
}

// Path: weatherPersonalityTestResultPage.section.mainResult
class _TranslationsWeatherPersonalityTestResultPageSectionMainResultJa implements TranslationsWeatherPersonalityTestResultPageSectionMainResultEn {
	_TranslationsWeatherPersonalityTestResultPageSectionMainResultJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get typeCode => ' 診断タイプコード';
	@override String get you => 'あなたは';
}

// Path: weatherPersonalityTestResultPage.section.godsRuling
class _TranslationsWeatherPersonalityTestResultPageSectionGodsRulingJa implements TranslationsWeatherPersonalityTestResultPageSectionGodsRulingEn {
	_TranslationsWeatherPersonalityTestResultPageSectionGodsRulingJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '神様の裁定文';
}

// Path: weatherPersonalityTestResultPage.section.behaviorTendency
class _TranslationsWeatherPersonalityTestResultPageSectionBehaviorTendencyJa implements TranslationsWeatherPersonalityTestResultPageSectionBehaviorTendencyEn {
	_TranslationsWeatherPersonalityTestResultPageSectionBehaviorTendencyJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '行動傾向';
}

// Path: weatherPersonalityTestResultPage.section.axisFeature
class _TranslationsWeatherPersonalityTestResultPageSectionAxisFeatureJa implements TranslationsWeatherPersonalityTestResultPageSectionAxisFeatureEn {
	_TranslationsWeatherPersonalityTestResultPageSectionAxisFeatureJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '4軸の特徴';
}

// Path: weatherPersonalityTestResultPage.section.axisScore
class _TranslationsWeatherPersonalityTestResultPageSectionAxisScoreJa implements TranslationsWeatherPersonalityTestResultPageSectionAxisScoreEn {
	_TranslationsWeatherPersonalityTestResultPageSectionAxisScoreJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '4軸スコア';
	@override late final _TranslationsWeatherPersonalityTestResultPageSectionAxisScoreAxisJa axis = _TranslationsWeatherPersonalityTestResultPageSectionAxisScoreAxisJa._(_root);
}

// Path: weatherPersonalityTestResultPage.section.godsMessage
class _TranslationsWeatherPersonalityTestResultPageSectionGodsMessageJa implements TranslationsWeatherPersonalityTestResultPageSectionGodsMessageEn {
	_TranslationsWeatherPersonalityTestResultPageSectionGodsMessageJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '神様からの一言';
}

// Path: settingPage.section.accountSetting
class _TranslationsSettingPageSectionAccountSettingJa implements TranslationsSettingPageSectionAccountSettingEn {
	_TranslationsSettingPageSectionAccountSettingJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'アカウント設定';
	@override String get identityVerification => '本人確認';
	@override String get pushNotification => 'プッシュ通知';
	@override String get locale => '言語';
	@override String get logout => 'ログアウト';
	@override String get withdrawal => '退会';
}

// Path: settingPage.section.history
class _TranslationsSettingPageSectionHistoryJa implements TranslationsSettingPageSectionHistoryEn {
	_TranslationsSettingPageSectionHistoryJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '履歴';
	@override String get matching => 'マッチング';
	@override String get hidden => '非表示';
}

// Path: settingPage.section.help
class _TranslationsSettingPageSectionHelpJa implements TranslationsSettingPageSectionHelpEn {
	_TranslationsSettingPageSectionHelpJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'ヘルプ';
	@override String get faq => 'よくある質問';
	@override String get inquiry => 'お問い合わせ';
}

// Path: settingPage.section.aboutReimi
class _TranslationsSettingPageSectionAboutReimiJa implements TranslationsSettingPageSectionAboutReimiEn {
	_TranslationsSettingPageSectionAboutReimiJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Reimiについて';
	@override String get tos => '利用規約';
	@override String get pp => 'プライバシーポリシー';
	@override String get applicationInformation => 'アプリケーション情報';
}

// Path: modalSheet.refineSearchUser.section
class _TranslationsModalSheetRefineSearchUserSectionJa implements TranslationsModalSheetRefineSearchUserSectionEn {
	_TranslationsModalSheetRefineSearchUserSectionJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get age => '年齢';
	@override String get address => '居住地';
	@override String get gender => '性別';
	@override String get weatherPersonality => 'ウェザーパーソナリティ';
}

// Path: modalSheet.pickMedia.label
class _TranslationsModalSheetPickMediaLabelJa implements TranslationsModalSheetPickMediaLabelEn {
	_TranslationsModalSheetPickMediaLabelJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get takePhoto => '写真を撮る';
	@override String get recordVideo => '動画を撮る';
	@override String get selectExistingPhoto => '既存の写真を選択';
	@override String get selectExistingVideo => '既存の動画を選択';
}

// Path: modalSheet.rainbowLike.messageTips
class _TranslationsModalSheetRainbowLikeMessageTipsJa implements TranslationsModalSheetRainbowLikeMessageTipsEn {
	_TranslationsModalSheetRainbowLikeMessageTipsJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get label => 'メッセージのコツ';
	@override String get contentText => '相手の写真や自己紹介文に触れつつ、共感した点を伝えることで、自然な会話につながりやすくなります。';
}

// Path: modalSheet.rainbowLike.textField
class _TranslationsModalSheetRainbowLikeTextFieldJa implements TranslationsModalSheetRainbowLikeTextFieldEn {
	_TranslationsModalSheetRainbowLikeTextFieldJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get placeHolder => 'はじめまして！\n写真の雰囲気がとても素敵で、思わずいいねしました。\n\n〇〇がお好きなんですね。\nよかったらお話しできたら嬉しいです！';
}

// Path: modalSheet.rainbowLike.noticeTexts
class _TranslationsModalSheetRainbowLikeNoticeTextsJa implements TranslationsModalSheetRainbowLikeNoticeTextsEn {
	_TranslationsModalSheetRainbowLikeNoticeTextsJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get contentText1 => '・「レインボーいいね」を1つ消費して送信します。';
	@override String get contentText2 => '・メールアドレス、SNSアカウント、電話番号などの個人情報は送信できません。';
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

// Path: profilePage.section.basicInformation.items
class _TranslationsProfilePageSectionBasicInformationItemsJa implements TranslationsProfilePageSectionBasicInformationItemsEn {
	_TranslationsProfilePageSectionBasicInformationItemsJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get name => '名前';
	@override String get gender => '性別';
	@override String get birthDate => '生年月日';
	@override String get address => '居住地';
	@override String get hometown => '出身地';
	@override String get bloodType => '血液型';
	@override String get height => '身長';
	@override String get bodyShape => '体型';
	@override String get education => '学歴';
	@override String get occupation => '職業';
	@override String get annualIncome => '年収';
	@override String get smoking => 'タバコ';
	@override String get alcohol => 'お酒';
	@override String get holiday => '休日';
	@override String get communicationStyle => 'コミュニケーション';
}

// Path: profilePage.placeholder.subPhoto.labels
class _TranslationsProfilePagePlaceholderSubPhotoLabelsJa implements TranslationsProfilePagePlaceholderSubPhotoLabelsEn {
	_TranslationsProfilePagePlaceholderSubPhotoLabelsJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get smile => '笑顔';
	@override String get fullLength => '全身';
	@override String get hobby => '趣味';
	@override String get food => '食べ物';
	@override String get travel => '旅行';
	@override String get holiday => '休日';
}

// Path: weatherPersonalityDetailPage.section.axisScore.axis
class _TranslationsWeatherPersonalityDetailPageSectionAxisScoreAxisJa implements TranslationsWeatherPersonalityDetailPageSectionAxisScoreAxisEn {
	_TranslationsWeatherPersonalityDetailPageSectionAxisScoreAxisJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsWeatherPersonalityDetailPageSectionAxisScoreAxisSensitivityJa sensitivity = _TranslationsWeatherPersonalityDetailPageSectionAxisScoreAxisSensitivityJa._(_root);
	@override late final _TranslationsWeatherPersonalityDetailPageSectionAxisScoreAxisPreparednessJa preparedness = _TranslationsWeatherPersonalityDetailPageSectionAxisScoreAxisPreparednessJa._(_root);
	@override late final _TranslationsWeatherPersonalityDetailPageSectionAxisScoreAxisActivityJa activity = _TranslationsWeatherPersonalityDetailPageSectionAxisScoreAxisActivityJa._(_root);
	@override late final _TranslationsWeatherPersonalityDetailPageSectionAxisScoreAxisMotivationJa motivation = _TranslationsWeatherPersonalityDetailPageSectionAxisScoreAxisMotivationJa._(_root);
}

// Path: weatherPersonalityTestResultPage.section.axisScore.axis
class _TranslationsWeatherPersonalityTestResultPageSectionAxisScoreAxisJa implements TranslationsWeatherPersonalityTestResultPageSectionAxisScoreAxisEn {
	_TranslationsWeatherPersonalityTestResultPageSectionAxisScoreAxisJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsWeatherPersonalityTestResultPageSectionAxisScoreAxisSensitivityJa sensitivity = _TranslationsWeatherPersonalityTestResultPageSectionAxisScoreAxisSensitivityJa._(_root);
	@override late final _TranslationsWeatherPersonalityTestResultPageSectionAxisScoreAxisPreparednessJa preparedness = _TranslationsWeatherPersonalityTestResultPageSectionAxisScoreAxisPreparednessJa._(_root);
	@override late final _TranslationsWeatherPersonalityTestResultPageSectionAxisScoreAxisActivityJa activity = _TranslationsWeatherPersonalityTestResultPageSectionAxisScoreAxisActivityJa._(_root);
	@override late final _TranslationsWeatherPersonalityTestResultPageSectionAxisScoreAxisMotivationJa motivation = _TranslationsWeatherPersonalityTestResultPageSectionAxisScoreAxisMotivationJa._(_root);
}

// Path: weatherPersonalityDetailPage.section.axisScore.axis.sensitivity
class _TranslationsWeatherPersonalityDetailPageSectionAxisScoreAxisSensitivityJa implements TranslationsWeatherPersonalityDetailPageSectionAxisScoreAxisSensitivityEn {
	_TranslationsWeatherPersonalityDetailPageSectionAxisScoreAxisSensitivityJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get sensitive => 'S（高感受）';
	@override String get neutral => 'N（低感受）';
}

// Path: weatherPersonalityDetailPage.section.axisScore.axis.preparedness
class _TranslationsWeatherPersonalityDetailPageSectionAxisScoreAxisPreparednessJa implements TranslationsWeatherPersonalityDetailPageSectionAxisScoreAxisPreparednessEn {
	_TranslationsWeatherPersonalityDetailPageSectionAxisScoreAxisPreparednessJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get planned => 'P（計画）';
	@override String get flexible => 'F（柔軟）';
}

// Path: weatherPersonalityDetailPage.section.axisScore.axis.activity
class _TranslationsWeatherPersonalityDetailPageSectionAxisScoreAxisActivityJa implements TranslationsWeatherPersonalityDetailPageSectionAxisScoreAxisActivityEn {
	_TranslationsWeatherPersonalityDetailPageSectionAxisScoreAxisActivityJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get outdoor => 'O（外向）';
	@override String get indoor => 'I（内向）';
}

// Path: weatherPersonalityDetailPage.section.axisScore.axis.motivation
class _TranslationsWeatherPersonalityDetailPageSectionAxisScoreAxisMotivationJa implements TranslationsWeatherPersonalityDetailPageSectionAxisScoreAxisMotivationEn {
	_TranslationsWeatherPersonalityDetailPageSectionAxisScoreAxisMotivationJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get emotional => 'E（情緒）';
	@override String get rational => 'R（実用）';
}

// Path: weatherPersonalityTestResultPage.section.axisScore.axis.sensitivity
class _TranslationsWeatherPersonalityTestResultPageSectionAxisScoreAxisSensitivityJa implements TranslationsWeatherPersonalityTestResultPageSectionAxisScoreAxisSensitivityEn {
	_TranslationsWeatherPersonalityTestResultPageSectionAxisScoreAxisSensitivityJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get sensitive => 'S（高感受）';
	@override String get neutral => 'N（低感受）';
}

// Path: weatherPersonalityTestResultPage.section.axisScore.axis.preparedness
class _TranslationsWeatherPersonalityTestResultPageSectionAxisScoreAxisPreparednessJa implements TranslationsWeatherPersonalityTestResultPageSectionAxisScoreAxisPreparednessEn {
	_TranslationsWeatherPersonalityTestResultPageSectionAxisScoreAxisPreparednessJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get planned => 'P（計画）';
	@override String get flexible => 'F（柔軟）';
}

// Path: weatherPersonalityTestResultPage.section.axisScore.axis.activity
class _TranslationsWeatherPersonalityTestResultPageSectionAxisScoreAxisActivityJa implements TranslationsWeatherPersonalityTestResultPageSectionAxisScoreAxisActivityEn {
	_TranslationsWeatherPersonalityTestResultPageSectionAxisScoreAxisActivityJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get outdoor => 'O（外向）';
	@override String get indoor => 'I（内向）';
}

// Path: weatherPersonalityTestResultPage.section.axisScore.axis.motivation
class _TranslationsWeatherPersonalityTestResultPageSectionAxisScoreAxisMotivationJa implements TranslationsWeatherPersonalityTestResultPageSectionAxisScoreAxisMotivationEn {
	_TranslationsWeatherPersonalityTestResultPageSectionAxisScoreAxisMotivationJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get emotional => 'E（情緒）';
	@override String get rational => 'R（実用）';
}

/// The flat map containing all translations for locale <ja>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsJa {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'locales.en' => '英語',
			'locales.ja' => '日本語',
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
			'userRegistrationPage.birthDate.question' => '生年月日を教えてください',
			'userRegistrationPage.birthDate.items.year' => '年',
			'userRegistrationPage.birthDate.items.month' => '月',
			'userRegistrationPage.birthDate.items.day' => '日',
			'userRegistrationPage.address.question' => '居住地を教えてください',
			'userRegistrationPage.address.items.placeholder' => '都道府県を選択',
			'userRegistrationPage.name.question' => '名前を教えてください',
			'userRegistrationPage.name.items.placeholder' => '名前を入力',
			'userRegistrationPage.introduction.question' => '自己紹介を教えてください',
			'userRegistrationPage.introduction.items.placeholder' => '自己紹介を入力（20文字以上）',
			'userRegistrationPage.introduction.items.charCountLabelText' => ({required Object textLength}) => '${textLength} / 20文字',
			'userRegistrationPage.introduction.items.remainingCharsText' => ({required Object remainingTextLength}) => 'あと${remainingTextLength}文字必要です',
			'userRegistrationPage.mainPhoto.question' => 'メイン写真を選んでください',
			'userRegistrationPage.mainPhoto.items.photoSelectInstructionText' => 'クリックして写真を選択',
			'userRegistrationPage.mainPhoto.items.photoRecommendationHint' => '笑顔の顔写真がおすすめ',
			'homePage.isEmptyCase' => '現在、表示できるユーザーがいません。',
			'likePage.isEmptyCase' => '新しい出会いをみつけましょう！',
			'matchingCompletedPage.title' => 'マッチング成立！',
			'matchingCompletedPage.subTitle' => ({required Object name}) => 'おめでとうございます！\n${name}さんとマッチングしました',
			'matchingCompletedPage.nullCase' => 'マッチング情報が取得できませんでした。',
			'matchingCompletedPage.message' => 'メッセージを送って会話を始めましょう！',
			'chatPage.isEmptyCase' => '新しい出会いをみつけましょう！',
			'chatPage.sectionTitle.matching' => 'マッチング',
			'chatPage.sectionTitle.messages' => 'メッセージ',
			'chatPage.subSectionTitle.matching' => '最初のメッセージを送りましょう！',
			'chatDetailPage.nullCase' => 'プロフィール情報が取得できませんでした。',
			'chatDetailPage.placeHolder' => 'メッセージを入力',
			'weatherReportPage.title' => 'ウェザーリポート',
			'weatherReportPage.isEmptyCase' => '現在、表示できるリポートがありません。',
			'myWeatherReportPage.title' => 'マイウェザーリポート',
			'myWeatherReportPage.isEmptyCase' => 'まだ投稿したことがありません。\nウェザーリポート送信画面から投稿しましょう！',
			'myWeatherReportPage.weekdays.sunday' => '日',
			'myWeatherReportPage.weekdays.monday' => '月',
			'myWeatherReportPage.weekdays.tuesday' => '火',
			'myWeatherReportPage.weekdays.wednesday' => '水',
			'myWeatherReportPage.weekdays.thursday' => '木',
			'myWeatherReportPage.weekdays.friday' => '金',
			'myWeatherReportPage.weekdays.saturday' => '土',
			'weatherReportPostPage.title' => 'ウェザーリポート送信',
			'weatherReportPostPage.placeHolder.media' => '写真・動画を追加',
			'weatherReportPostPage.placeHolder.comment1' => 'コメントを入力',
			'weatherReportPostPage.placeHolder.comment2' => 'アルバムから写真や動画を選んだ場合は、コメント欄に撮影日時も添えてください',
			'weatherReportPostPage.label.location' => '場所',
			'weatherReportPostPage.label.weatherFeelingForecast' => '天気/体感/予想',
			'weatherReportPostPage.label.observation' => '観測値',
			'weatherSelectPage.title' => '天気を選択',
			'weatherSelectPage.sectionTitle' => '今の天気は？',
			'feelingSelectPage.title' => '体感を選択',
			'feelingSelectPage.sectionTitle' => '今の体感は？',
			'forecastSelectPage.title' => '予想を選択',
			'forecastSelectPage.sectionTitle' => '数時間後は？',
			'weatherReportDetailPage.title' => '投稿詳細',
			'weatherReportDetailPage.nullCase' => 'リポート情報が取得できませんでした。',
			'weatherReportDetailPage.label.weather' => '天気',
			'weatherReportDetailPage.label.feeling' => '体感',
			'weatherReportDetailPage.label.forecast' => '五感予想',
			'accountPage.nullCase' => 'ユーザー情報が取得できませんでした。',
			'profilePage.title' => 'プロフィール編集',
			'profilePage.nullCase' => 'プロフィール情報が取得できませんでした。',
			'profilePage.section.mainPhoto' => 'メイン写真',
			'profilePage.section.subPhoto' => 'サブ写真',
			'profilePage.section.weatherPersonality' => 'ウェザーパーソナリティ',
			'profilePage.section.introduction' => '自己紹介文',
			'profilePage.section.sunnyDayHobbies' => '晴れの日にやりたいことベスト3',
			'profilePage.section.rainyDayHobbies' => '雨の日にやりたいことベスト3',
			'profilePage.section.basicInformation.title' => '基本情報',
			'profilePage.section.basicInformation.items.name' => '名前',
			'profilePage.section.basicInformation.items.gender' => '性別',
			'profilePage.section.basicInformation.items.birthDate' => '生年月日',
			'profilePage.section.basicInformation.items.address' => '居住地',
			'profilePage.section.basicInformation.items.hometown' => '出身地',
			'profilePage.section.basicInformation.items.bloodType' => '血液型',
			'profilePage.section.basicInformation.items.height' => '身長',
			'profilePage.section.basicInformation.items.bodyShape' => '体型',
			'profilePage.section.basicInformation.items.education' => '学歴',
			'profilePage.section.basicInformation.items.occupation' => '職業',
			'profilePage.section.basicInformation.items.annualIncome' => '年収',
			'profilePage.section.basicInformation.items.smoking' => 'タバコ',
			'profilePage.section.basicInformation.items.alcohol' => 'お酒',
			'profilePage.section.basicInformation.items.holiday' => '休日',
			'profilePage.section.basicInformation.items.communicationStyle' => 'コミュニケーション',
			'profilePage.edit.title' => ({required Object item}) => '${item}を編集',
			'profilePage.edit.sunnyDayHobbies.top1' => '晴れの日ベスト1',
			'profilePage.edit.sunnyDayHobbies.top2' => '晴れの日ベスト2',
			'profilePage.edit.sunnyDayHobbies.top3' => '晴れの日ベスト3',
			'profilePage.edit.rainyDayHobbies.top1' => '雨の日ベスト1',
			'profilePage.edit.rainyDayHobbies.top2' => '雨の日ベスト2',
			'profilePage.edit.rainyDayHobbies.top3' => '雨の日ベスト3',
			'profilePage.placeholder.subPhoto.labels.smile' => '笑顔',
			'profilePage.placeholder.subPhoto.labels.fullLength' => '全身',
			'profilePage.placeholder.subPhoto.labels.hobby' => '趣味',
			'profilePage.placeholder.subPhoto.labels.food' => '食べ物',
			'profilePage.placeholder.subPhoto.labels.travel' => '旅行',
			'profilePage.placeholder.subPhoto.labels.holiday' => '休日',
			'profilePage.placeholder.sunnyDayHobbies.top1' => '晴れの日ベスト1を入力',
			'profilePage.placeholder.sunnyDayHobbies.top2' => '晴れの日ベスト2を入力',
			'profilePage.placeholder.sunnyDayHobbies.top3' => '晴れの日ベスト3を入力',
			'profilePage.placeholder.rainyDayHobbies.top1' => '雨の日ベスト1を入力',
			'profilePage.placeholder.rainyDayHobbies.top2' => '雨の日ベスト2を入力',
			'profilePage.placeholder.rainyDayHobbies.top3' => '雨の日ベスト3を入力',
			'profilePage.placeholder.basicInformation.notSet' => '未設定',
			'profilePage.placeholder.basicInformation.toolTip' => 'この項目は変更できません。',
			'profileDetailPage.title' => 'プロフィール詳細',
			'profileDetailPage.nullCase' => 'プロフィール情報が取得できませんでした。',
			'weatherPersonalityConceptPage.title' => 'ウェザーパーソナリティ診断',
			'weatherPersonalityConceptPage.contentText.contentTitle' => '診断について',
			'weatherPersonalityConceptPage.contentText.contentText1' => 'あなたが動物に生まれ変わるとして、\n\n',
			'weatherPersonalityConceptPage.contentText.contentText2' => '前世の天気に対する行動や性格から\n',
			'weatherPersonalityConceptPage.contentText.contentText3' => '神様が客観的に判断し、\n\n',
			'weatherPersonalityConceptPage.contentText.contentText4' => '16タイプのキャラ',
			'weatherPersonalityConceptPage.contentText.contentText5' => 'に分類されます\n\n',
			'weatherPersonalityConceptPage.contentText.contentText6' => '16の質問に答えて、\nあなたのウェザーパーソナルタイプを\n診断しましょう',
			'weatherPersonalityDetailPage.title' => '診断結果',
			'weatherPersonalityDetailPage.nullCase' => '診断結果の取得に失敗しました。',
			'weatherPersonalityDetailPage.section.mainResult.typeCode' => ' 診断タイプコード',
			'weatherPersonalityDetailPage.section.mainResult.you' => 'あなたは',
			'weatherPersonalityDetailPage.section.godsRuling.title' => '神様の裁定文',
			'weatherPersonalityDetailPage.section.behaviorTendency.title' => '行動傾向',
			'weatherPersonalityDetailPage.section.axisFeature.title' => '4軸の特徴',
			'weatherPersonalityDetailPage.section.axisScore.title' => '4軸スコア',
			'weatherPersonalityDetailPage.section.axisScore.axis.sensitivity.sensitive' => 'S（高感受）',
			'weatherPersonalityDetailPage.section.axisScore.axis.sensitivity.neutral' => 'N（低感受）',
			'weatherPersonalityDetailPage.section.axisScore.axis.preparedness.planned' => 'P（計画）',
			'weatherPersonalityDetailPage.section.axisScore.axis.preparedness.flexible' => 'F（柔軟）',
			'weatherPersonalityDetailPage.section.axisScore.axis.activity.outdoor' => 'O（外向）',
			'weatherPersonalityDetailPage.section.axisScore.axis.activity.indoor' => 'I（内向）',
			'weatherPersonalityDetailPage.section.axisScore.axis.motivation.emotional' => 'E（情緒）',
			'weatherPersonalityDetailPage.section.axisScore.axis.motivation.rational' => 'R（実用）',
			'weatherPersonalityDetailPage.section.compatibleType.title' => 'あなたと相性の良いタイプ',
			'weatherPersonalityDetailPage.section.incompatibleType.title' => '注意が必要なタイプ',
			'weatherPersonalityDetailPage.section.godsMessage.title' => '神様からの一言',
			'weatherPersonalityTestJudgingPage.loading' => '診断中',
			'weatherPersonalityTestJudgingPage.contentText.contentTitle' => '診断完了',
			'weatherPersonalityTestJudgingPage.contentText.contentText1' => '神様は、前世の行動記録を\nすべて見終えました。',
			'weatherPersonalityTestPage.q1.title' => 'Q1',
			'weatherPersonalityTestPage.q1.question' => '神様は、前世のあなたが天気が良い日の様子を見ていました。',
			'weatherPersonalityTestPage.q1.answerA' => '外に出て、どこかへ行こうとすることが多かった',
			'weatherPersonalityTestPage.q1.answerB' => '家の中で過ごすことが多かった',
			'weatherPersonalityTestPage.q2.title' => 'Q2',
			'weatherPersonalityTestPage.q2.question' => '神様は、天気が悪い日のあなたの選択を覚えています。',
			'weatherPersonalityTestPage.q2.answerA' => 'それでも外に出る理由を探していた',
			'weatherPersonalityTestPage.q2.answerB' => '外出を控え、屋内で過ごしていた',
			'weatherPersonalityTestPage.q3.title' => 'Q3',
			'weatherPersonalityTestPage.q3.question' => '神様は、前世のあなたが天候が不安定な日の過ごし方を観測していました。',
			'weatherPersonalityTestPage.q3.answerA' => '屋内外を行き来しながらも、外での行動を続けていた',
			'weatherPersonalityTestPage.q3.answerB' => '外出は最小限にし、屋内中心で過ごしていた',
			'weatherPersonalityTestPage.q4.title' => 'Q4',
			'weatherPersonalityTestPage.q4.question' => '神様は、前世のあなたが特に用事のない休日をどう過ごしていたかを見ていました。',
			'weatherPersonalityTestPage.q4.answerA' => '気分転換に外の空気を吸いに出ていた',
			'weatherPersonalityTestPage.q4.answerB' => '自分の空間で静かに過ごしていた',
			'weatherPersonalityTestPage.q5.title' => 'Q5',
			'weatherPersonalityTestPage.q5.question' => '神様は、外出前日のあなたを見ていました。',
			'weatherPersonalityTestPage.q5.answerA' => '天気予報を確認し、服装や持ち物を決めていた',
			'weatherPersonalityTestPage.q5.answerB' => '当日の様子を見てから考えていた',
			'weatherPersonalityTestPage.q6.title' => 'Q6',
			'weatherPersonalityTestPage.q6.question' => '神様は、雨が降るか微妙な日の行動を覚えています。',
			'weatherPersonalityTestPage.q6.answerA' => '降る前提で準備し、濡れないように行動していた',
			'weatherPersonalityTestPage.q6.answerB' => '降ったらその時考えようと思っていた',
			'weatherPersonalityTestPage.q7.title' => 'Q7',
			'weatherPersonalityTestPage.q7.question' => '神様は、予定が天気で崩れそうな時のあなたを見ていました。',
			'weatherPersonalityTestPage.q7.answerA' => '事前に代替案を考えて安心していた',
			'weatherPersonalityTestPage.q7.answerB' => '状況次第で決めればいいと思っていた\'',
			'weatherPersonalityTestPage.q8.title' => 'Q8',
			'weatherPersonalityTestPage.q8.question' => '神様は、前世のあなたが「想定外」が起きた瞬間を観測しています。',
			'weatherPersonalityTestPage.q8.answerA' => '予測していなかったことに少しストレスを感じていた',
			'weatherPersonalityTestPage.q8.answerB' => '変化そのものを楽しむ余裕があった',
			'weatherPersonalityTestPage.q9.title' => 'Q9',
			'weatherPersonalityTestPage.q9.question' => '神様は、前世のあなたが朝起きて空模様を見た瞬間の様子を見ていました。',
			'weatherPersonalityTestPage.q9.answerA' => '天気によって、その日の気分ややる気がはっきり変わっていた',
			'weatherPersonalityTestPage.q9.answerB' => '天気は天気として受け止め、気分はあまり左右されなかった',
			'weatherPersonalityTestPage.q10.title' => 'Q10',
			'weatherPersonalityTestPage.q10.question' => '神様は、低気圧や雨の日のあなたの様子を覚えています。',
			'weatherPersonalityTestPage.q10.answerA' => 'なんとなく気分が沈んだり、身体が重く感じることが多かった',
			'weatherPersonalityTestPage.q10.answerB' => '特に変化はなく、いつも通り過ごしていた',
			'weatherPersonalityTestPage.q11.title' => 'Q11',
			'weatherPersonalityTestPage.q11.question' => '神様は、前世のあなたが季節の変わり目にどう反応していたかを見ていました。',
			'weatherPersonalityTestPage.q11.answerA' => '空気や匂いの変化に気づき、感情が動くことが多かった',
			'weatherPersonalityTestPage.q11.answerB' => '季節が変わっても、あまり意識せずに過ごしていた',
			'weatherPersonalityTestPage.q12.title' => 'Q12',
			'weatherPersonalityTestPage.q12.question' => '神様は、強い日差しや自然の音（雨や雷など）、湿度に対するあなたの反応を記録しています。',
			'weatherPersonalityTestPage.q12.answerA' => '刺激が強いと疲れやすく、影響を受けやすかった',
			'weatherPersonalityTestPage.q12.answerB' => '多少の刺激では、特に気にならなかった',
			'weatherPersonalityTestPage.q13.title' => 'Q13',
			'weatherPersonalityTestPage.q13.question' => '神様は、前世のあなたが外出するか迷った場面で何を基準にしていたかを見ています。',
			'weatherPersonalityTestPage.q13.answerA' => 'その日の気分や雰囲気を大切にして決めていた',
			'weatherPersonalityTestPage.q13.answerB' => '目的や必要性を考えて決めていた',
			'weatherPersonalityTestPage.q14.title' => 'Q14',
			'weatherPersonalityTestPage.q14.question' => '神様は、前世のあなたが一日の行動を終えた後に何を残していたかを観測しました。',
			'weatherPersonalityTestPage.q14.answerA' => 'その日の気分や余韻が、強く印象に残っていた',
			'weatherPersonalityTestPage.q14.answerB' => '何を達成できたかが、はっきり残っていた',
			'weatherPersonalityTestPage.q15.title' => 'Q15',
			'weatherPersonalityTestPage.q15.question' => '神様は、前世のあなたが天気に左右される予定において何を優先して行動していたかを知っています。',
			'weatherPersonalityTestPage.q15.answerA' => 'その時の気分や納得感を優先して選んでいた',
			'weatherPersonalityTestPage.q15.answerB' => '天気の状況から効率や合理性を優先して選んでいた',
			'weatherPersonalityTestPage.q16.title' => 'Q16',
			'weatherPersonalityTestPage.q16.question' => '神様は、前世のあなたが急ぐ必要のない帰り道で、どの道を選んでいたかを見ていました。',
			'weatherPersonalityTestPage.q16.answerA' => '少し遠回りでも、景色や雰囲気が心地よい道を選んでいた',
			'weatherPersonalityTestPage.q16.answerB' => '特に理由がなくても、自然と一番早く着く道を選んでいた',
			'weatherPersonalityTestResultPage.nullCase' => '診断結果の取得に失敗しました。',
			'weatherPersonalityTestResultPage.section.title' => '神様からの裁定',
			'weatherPersonalityTestResultPage.section.mainResult.typeCode' => ' 診断タイプコード',
			'weatherPersonalityTestResultPage.section.mainResult.you' => 'あなたは',
			'weatherPersonalityTestResultPage.section.godsRuling.title' => '神様の裁定文',
			'weatherPersonalityTestResultPage.section.behaviorTendency.title' => '行動傾向',
			'weatherPersonalityTestResultPage.section.axisFeature.title' => '4軸の特徴',
			'weatherPersonalityTestResultPage.section.axisScore.title' => '4軸スコア',
			'weatherPersonalityTestResultPage.section.axisScore.axis.sensitivity.sensitive' => 'S（高感受）',
			'weatherPersonalityTestResultPage.section.axisScore.axis.sensitivity.neutral' => 'N（低感受）',
			'weatherPersonalityTestResultPage.section.axisScore.axis.preparedness.planned' => 'P（計画）',
			'weatherPersonalityTestResultPage.section.axisScore.axis.preparedness.flexible' => 'F（柔軟）',
			'weatherPersonalityTestResultPage.section.axisScore.axis.activity.outdoor' => 'O（外向）',
			'weatherPersonalityTestResultPage.section.axisScore.axis.activity.indoor' => 'I（内向）',
			'weatherPersonalityTestResultPage.section.axisScore.axis.motivation.emotional' => 'E（情緒）',
			'weatherPersonalityTestResultPage.section.axisScore.axis.motivation.rational' => 'R（実用）',
			'weatherPersonalityTestResultPage.section.godsMessage.title' => '神様からの一言',
			'settingPage.title' => '設定',
			'settingPage.section.accountSetting.title' => 'アカウント設定',
			'settingPage.section.accountSetting.identityVerification' => '本人確認',
			'settingPage.section.accountSetting.pushNotification' => 'プッシュ通知',
			'settingPage.section.accountSetting.locale' => '言語',
			'settingPage.section.accountSetting.logout' => 'ログアウト',
			'settingPage.section.accountSetting.withdrawal' => '退会',
			'settingPage.section.history.title' => '履歴',
			'settingPage.section.history.matching' => 'マッチング',
			'settingPage.section.history.hidden' => '非表示',
			'settingPage.section.help.title' => 'ヘルプ',
			'settingPage.section.help.faq' => 'よくある質問',
			'settingPage.section.help.inquiry' => 'お問い合わせ',
			'settingPage.section.aboutReimi.title' => 'Reimiについて',
			'settingPage.section.aboutReimi.tos' => '利用規約',
			'settingPage.section.aboutReimi.pp' => 'プライバシーポリシー',
			'settingPage.section.aboutReimi.applicationInformation' => 'アプリケーション情報',
			'navigationBar.home.title' => 'であう',
			'navigationBar.like.title' => 'いいね',
			'navigationBar.chat.title' => 'チャット',
			'navigationBar.weatherReport.title' => 'リポート',
			'navigationBar.account.title' => 'アカウント',
			'dialog.userAddress.title' => '居住地の確認',
			'dialog.userAddress.contentText1' => '選択した居住地：',
			'dialog.userAddress.contentText2' => 'この内容で次に進みますか？',
			'dialog.userBirthDate.title' => '生年月日の確認',
			'dialog.userBirthDate.contentText1' => '選択した生年月日：',
			'dialog.userBirthDate.contentText2' => 'この内容で次に進みますか？',
			'dialog.userGender.title' => '性別の確認',
			'dialog.userGender.contentText1' => '選択した性別：',
			'dialog.userGender.contentText2' => 'この内容で次に進みますか？',
			'dialog.userIntroduction.title' => '自己紹介の確認',
			'dialog.userIntroduction.contentText1' => '入力した自己紹介：',
			'dialog.userIntroduction.contentText2' => 'この内容で次に進みますか？',
			'dialog.userMainPhoto.title' => '写真の確認',
			'dialog.userMainPhoto.contentText1' => '選択した写真：',
			'dialog.userMainPhoto.contentText2' => 'この内容で登録を完了しますか？',
			'dialog.userName.title' => '名前の確認',
			'dialog.userName.contentText1' => '入力した名前：',
			'dialog.userName.contentText2' => 'この内容で次に進みますか？',
			'dialog.logout.title' => 'ログアウトの確認',
			'dialog.logout.contentText' => '本当にログアウトしますか？',
			'dialog.deletePhoto.title' => '写真削除の確認',
			'dialog.deletePhoto.contentText' => '本当にこの写真を削除しますか？',
			'dialog.saveChanges.title' => '変更保存の確認',
			'dialog.saveChanges.contentText' => '変更した内容を保存しますか？',
			'dialog.weatherReportComplete.title' => 'ウェザーリポート完了',
			'dialog.destructionChanges.title' => '変更破棄の確認',
			'dialog.destructionChanges.contentText' => '変更した内容を破棄しますか？',
			'dialog.interruptTest.title' => '診断中断の確認',
			'dialog.interruptTest.contentText' => '回答内容は保存されません。\n本当に診断を中断しますか？',
			'dialog.completeTest.title' => '診断完了の確認',
			'dialog.completeTest.contentText' => '回答した内容を送信し、診断を完了しますか？',
			'dialog.reTest.title' => '再診断の確認',
			'dialog.reTest.contentText' => '診断をやり直すと、現在の診断結果は削除されます。\n本当に再診断しますか？',
			'modalSheet.sortUser.title' => '並び替え',
			'modalSheet.refineSearchUser.title' => '絞り込み条件',
			'modalSheet.refineSearchUser.section.age' => '年齢',
			'modalSheet.refineSearchUser.section.address' => '居住地',
			'modalSheet.refineSearchUser.section.gender' => '性別',
			'modalSheet.refineSearchUser.section.weatherPersonality' => 'ウェザーパーソナリティ',
			'modalSheet.pickMedia.label.takePhoto' => '写真を撮る',
			'modalSheet.pickMedia.label.recordVideo' => '動画を撮る',
			'modalSheet.pickMedia.label.selectExistingPhoto' => '既存の写真を選択',
			'modalSheet.pickMedia.label.selectExistingVideo' => '既存の動画を選択',
			'modalSheet.comment.title' => 'コメント',
			'modalSheet.comment.placeHolder' => 'コメントを追加',
			'modalSheet.rainbowLike.title' => 'レインボーいいねを送る',
			'modalSheet.rainbowLike.messageTips.label' => 'メッセージのコツ',
			'modalSheet.rainbowLike.messageTips.contentText' => '相手の写真や自己紹介文に触れつつ、共感した点を伝えることで、自然な会話につながりやすくなります。',
			'modalSheet.rainbowLike.textField.placeHolder' => 'はじめまして！\n写真の雰囲気がとても素敵で、思わずいいねしました。\n\n〇〇がお好きなんですね。\nよかったらお話しできたら嬉しいです！',
			'modalSheet.rainbowLike.noticeTexts.contentText1' => '・「レインボーいいね」を1つ消費して送信します。',
			'modalSheet.rainbowLike.noticeTexts.contentText2' => '・メールアドレス、SNSアカウント、電話番号などの個人情報は送信できません。',
			'button.next' => '次へ',
			'button.confirmation' => '確認',
			'button.cancel' => 'キャンセル',
			'button.select' => '選択',
			'button.logout' => 'ログアウト',
			'button.retry' => '再読み込み',
			'button.tryLater' => 'あとで試す',
			'button.save' => '保存',
			'button.delete' => '削除',
			'button.apply' => '適用',
			'button.clear' => 'クリア',
			'button.send' => '送信',
			'button.close' => '閉じる',
			'button.destruction' => '破棄',
			'button.interrupt' => '中断',
			'button.startTest' => '診断を始める',
			'button.seeResults' => '結果を見る',
			'button.shareResults' => '結果をシェアする',
			'button.returnToAccountPage' => 'アカウント画面に戻る',
			'button.completion' => '完了',
			'button.weatherPersonalityTest' => 'ウェザーパーソナリティ診断',
			'button.goTochatPage' => 'チャット画面へ',
			'button.rainbowLike' => 'レインボーいいね！',
			'button.retest' => '再診断',
			'segmentedSwitch.like.fromUser' => '相手から',
			'segmentedSwitch.like.toUser' => '自分から',
			'segmentedSwitch.chat.message' => 'メッセージ',
			'segmentedSwitch.chat.profile' => 'プロフィール',
			'snackBar.profile.success' => 'プロフィール更新が完了しました！',
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
			'kEnum.alcohol.no' => '飲まない',
			'kEnum.alcohol.sometimes' => 'たまに飲む',
			'kEnum.alcohol.yes' => '飲む',
			'kEnum.annualIncome.under2M' => '200万円未満',
			'kEnum.annualIncome.between2And4M' => '200万〜400万円',
			'kEnum.annualIncome.between4And6M' => '400万〜600万円',
			'kEnum.annualIncome.between6And8M' => '600万〜800万円',
			'kEnum.annualIncome.between8And10M' => '800万〜1000万円',
			'kEnum.annualIncome.between10And15M' => '1000万〜1500万円',
			'kEnum.annualIncome.between15And20M' => '1500万〜2000万円',
			'kEnum.annualIncome.between20And30M' => '2000万〜3000万円',
			'kEnum.annualIncome.over30M' => '3000万円以上',
			'kEnum.bloodType.a' => 'A型',
			'kEnum.bloodType.b' => 'B型',
			'kEnum.bloodType.o' => 'O型',
			'kEnum.bloodType.ab' => 'AB型',
			'kEnum.bloodType.unknown' => 'わからない',
			'kEnum.bodyShape.slim' => 'スリム',
			'kEnum.bodyShape.slender' => 'やや細め',
			'kEnum.bodyShape.normal' => '普通',
			'kEnum.bodyShape.muscular' => '筋肉質',
			'kEnum.bodyShape.chubby' => 'ややぽっちゃり',
			'kEnum.bodyShape.overweight' => '太め',
			'kEnum.communicationStyle.call' => '電話派',
			'kEnum.communicationStyle.message' => 'メッセージ派',
			'kEnum.communicationStyle.inPerson' => '対面派',
			'kEnum.education.highSchoolGraduate' => '高校卒',
			'kEnum.education.juniorCollegeGraduate' => '短大卒',
			'kEnum.education.vocationalSchoolGraduate' => '専門卒',
			'kEnum.education.technicalCollegeGraduate' => '高専卒',
			'kEnum.education.universityGraduate' => '大学卒',
			'kEnum.education.graduateSchoolGraduate' => '大学院卒',
			'kEnum.education.other' => 'その他',
			'kEnum.feelingType.freezing' => '極寒',
			'kEnum.feelingType.cold' => '寒い',
			'kEnum.feelingType.comfortable' => 'ちょうどいい',
			'kEnum.feelingType.warm' => '暖かい',
			'kEnum.feelingType.notApplicable' => 'あてはまらない',
			'kEnum.forecastType.noChange' => '今と変化なさそう',
			'kEnum.forecastType.improving' => '回復しそう',
			'kEnum.forecastType.worsening' => '下り坂になりそう',
			'kEnum.gender.man' => '男性',
			'kEnum.gender.woman' => '女性',
			'kEnum.gender.other' => 'その他',
			'kEnum.height.under130cm' => '130cm以下',
			'kEnum.height.just131cm' => '131cm',
			'kEnum.height.just132cm' => '132cm',
			'kEnum.height.just133cm' => '133cm',
			'kEnum.height.just134cm' => '134cm',
			'kEnum.height.just135cm' => '135cm',
			'kEnum.height.just136cm' => '136cm',
			'kEnum.height.just137cm' => '137cm',
			'kEnum.height.just138cm' => '138cm',
			'kEnum.height.just139cm' => '139cm',
			'kEnum.height.just140cm' => '140cm',
			'kEnum.height.just141cm' => '141cm',
			'kEnum.height.just142cm' => '142cm',
			'kEnum.height.just143cm' => '143cm',
			'kEnum.height.just144cm' => '144cm',
			'kEnum.height.just145cm' => '145cm',
			'kEnum.height.just146cm' => '146cm',
			'kEnum.height.just147cm' => '147cm',
			'kEnum.height.just148cm' => '148cm',
			'kEnum.height.just149cm' => '149cm',
			'kEnum.height.just150cm' => '150cm',
			'kEnum.height.just151cm' => '151cm',
			'kEnum.height.just152cm' => '152cm',
			'kEnum.height.just153cm' => '153cm',
			'kEnum.height.just154cm' => '154cm',
			'kEnum.height.just155cm' => '155cm',
			'kEnum.height.just156cm' => '156cm',
			'kEnum.height.just157cm' => '157cm',
			'kEnum.height.just158cm' => '158cm',
			'kEnum.height.just159cm' => '159cm',
			'kEnum.height.just160cm' => '160cm',
			'kEnum.height.just161cm' => '161cm',
			'kEnum.height.just162cm' => '162cm',
			'kEnum.height.just163cm' => '163cm',
			'kEnum.height.just164cm' => '164cm',
			'kEnum.height.just165cm' => '165cm',
			'kEnum.height.just166cm' => '166cm',
			'kEnum.height.just167cm' => '167cm',
			'kEnum.height.just168cm' => '168cm',
			'kEnum.height.just169cm' => '169cm',
			'kEnum.height.just170cm' => '170cm',
			'kEnum.height.just171cm' => '171cm',
			'kEnum.height.just172cm' => '172cm',
			'kEnum.height.just173cm' => '173cm',
			'kEnum.height.just174cm' => '174cm',
			'kEnum.height.just175cm' => '175cm',
			'kEnum.height.just176cm' => '176cm',
			'kEnum.height.just177cm' => '177cm',
			'kEnum.height.just178cm' => '178cm',
			'kEnum.height.just179cm' => '179cm',
			'kEnum.height.just180cm' => '180cm',
			'kEnum.height.just181cm' => '181cm',
			'kEnum.height.just182cm' => '182cm',
			'kEnum.height.just183cm' => '183cm',
			'kEnum.height.just184cm' => '184cm',
			'kEnum.height.just185cm' => '185cm',
			'kEnum.height.just186cm' => '186cm',
			'kEnum.height.just187cm' => '187cm',
			'kEnum.height.just188cm' => '188cm',
			'kEnum.height.just189cm' => '189cm',
			'kEnum.height.just190cm' => '190cm',
			'kEnum.height.just191cm' => '191cm',
			'kEnum.height.just192cm' => '192cm',
			'kEnum.height.just193cm' => '193cm',
			'kEnum.height.just194cm' => '194cm',
			'kEnum.height.just195cm' => '195cm',
			'kEnum.height.just196cm' => '196cm',
			'kEnum.height.just197cm' => '197cm',
			'kEnum.height.just198cm' => '198cm',
			'kEnum.height.just199cm' => '199cm',
			'kEnum.height.over200cm' => '200cm以上',
			'kEnum.holiday.weekend' => '土日',
			'kEnum.holiday.weekday' => '平日',
			'kEnum.holiday.irregular' => '不定休',
			'kEnum.occupation.universityStudent' => '大学生',
			'kEnum.occupation.graduateStudent' => '大学院生',
			_ => null,
		} ?? switch (path) {
			'kEnum.occupation.vocationalStudent' => '専門学生',
			'kEnum.occupation.juniorCollegeStudent' => '短大生',
			'kEnum.occupation.technicalCollegeStudent' => '高専生',
			'kEnum.occupation.distribution' => '流通',
			'kEnum.occupation.foodIndustry' => '食品関係',
			'kEnum.occupation.pharmaceutical' => '製薬',
			'kEnum.occupation.medical' => '医療関係',
			'kEnum.occupation.welfareCare' => '福祉・介護',
			'kEnum.occupation.doctor' => '医師',
			'kEnum.occupation.nurse' => '看護師',
			'kEnum.occupation.pharmacist' => '薬剤師',
			'kEnum.occupation.telecommunication' => '通信',
			'kEnum.occupation.web' => 'WEB関係',
			'kEnum.occupation.it' => 'IT関係',
			'kEnum.occupation.engineer' => 'エンジニア',
			'kEnum.occupation.creator' => 'クリエイター',
			'kEnum.occupation.designer' => 'デザイナー',
			'kEnum.occupation.architectureInterior' => '建築・インテリア',
			'kEnum.occupation.finance' => '金融',
			'kEnum.occupation.insurance' => '保険',
			'kEnum.occupation.consulting' => 'コンサル',
			'kEnum.occupation.massMedia' => 'マスコミ',
			'kEnum.occupation.advertising' => '広告',
			'kEnum.occupation.publishing' => '出版',
			'kEnum.occupation.education' => '教育関係',
			'kEnum.occupation.retail' => '小売',
			'kEnum.occupation.transportation' => '輸送・交通',
			'kEnum.occupation.entertainment' => 'エンターテイメント',
			'kEnum.occupation.travel' => '旅行関係',
			'kEnum.occupation.realEstate' => '不動産',
			'kEnum.occupation.tradingCompany' => '商社',
			'kEnum.occupation.manufacturer' => 'メーカー',
			'kEnum.occupation.researcher' => '研究職',
			'kEnum.occupation.majorCompany' => '大手企業',
			'kEnum.occupation.foreignCompany' => '外資企業',
			'kEnum.occupation.listedCompany' => '上場企業',
			'kEnum.occupation.executive' => '経営者・役員',
			'kEnum.occupation.legal' => '法務関係',
			'kEnum.occupation.lawyer' => '弁護士',
			'kEnum.occupation.certifiedPublicAccountant' => '公認会計士',
			'kEnum.occupation.taxAccountant' => '税理士',
			'kEnum.occupation.freelance' => '自由業',
			'kEnum.occupation.publicServant' => '公務員',
			'kEnum.occupation.firefighter' => '消防士',
			'kEnum.occupation.police' => '警察官',
			'kEnum.occupation.selfDefenseForce' => '自衛隊',
			'kEnum.occupation.athlete' => 'スポーツ選手',
			'kEnum.occupation.pilot' => 'パイロット',
			'kEnum.occupation.investor' => '投資家',
			'kEnum.occupation.cabinAttendant' => 'キャビンアテンダント',
			'kEnum.occupation.apparel' => 'アパレル',
			'kEnum.occupation.beauty' => '美容関係',
			'kEnum.occupation.bridal' => 'ブライダル',
			'kEnum.occupation.chefNutritionist' => '調理師・栄養士',
			'kEnum.occupation.childcareWorker' => '保育士',
			'kEnum.occupation.service' => 'サービス業',
			'kEnum.occupation.secretary' => '秘書',
			'kEnum.occupation.announcer' => 'アナウンサー',
			'kEnum.occupation.receptionist' => '受付',
			'kEnum.occupation.entertainerModel' => '芸能・モデル',
			'kEnum.occupation.influencer' => 'インフルエンサー',
			'kEnum.occupation.youtuber' => 'YouTuber',
			'kEnum.occupation.proGamer' => 'プロゲーマー',
			'kEnum.occupation.companyEmployee' => '会社員',
			'kEnum.occupation.officeWork' => '事務',
			'kEnum.occupation.selfEmployed' => '自営業',
			'kEnum.occupation.other' => 'その他',
			'kEnum.smoking.no' => '吸わない',
			'kEnum.smoking.sometimes' => 'たまに吸う',
			'kEnum.smoking.yes' => '吸う',
			'kEnum.sortType.login' => 'ログイン順',
			'kEnum.sortType.compatibility' => '相性順',
			'kEnum.weatherType.clearStar' => '星がはっきり',
			'kEnum.weatherType.faintStar' => '星がうっすら',
			'kEnum.weatherType.noStar' => '星が見えない',
			'kEnum.weatherType.drizzle' => 'ポツポツ',
			'kEnum.weatherType.lightRain' => 'パラパラ',
			'kEnum.weatherType.rain' => 'サー',
			'kEnum.weatherType.heavyRain' => 'サーサー',
			'kEnum.windDirection.north' => '北',
			'kEnum.windDirection.northEast' => '北東',
			'kEnum.windDirection.east' => '東',
			'kEnum.windDirection.southEast' => '南東',
			'kEnum.windDirection.south' => '南',
			'kEnum.windDirection.southWest' => '南西',
			'kEnum.windDirection.west' => '西',
			'kEnum.windDirection.northWest' => '北西',
			'kEnum.windDirection.unknown' => '分からない',
			_ => null,
		};
	}
}
