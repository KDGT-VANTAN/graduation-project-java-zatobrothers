///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import
// dart format off

part of 'strings.g.dart';

// Path: <root>
typedef TranslationsEn = Translations; // ignore: unused_element
class Translations with BaseTranslations<AppLocale, Translations> {
	/// Returns the current translations of the given [context].
	///
	/// Usage:
	/// final t = Translations.of(context);
	static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	Translations({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final Translations _root = this; // ignore: unused_field

	Translations $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => Translations(meta: meta ?? this.$meta);

	// Translations
	late final TranslationsSplashPageEn splashPage = TranslationsSplashPageEn._(_root);
	late final TranslationsSignUpPageEn signUpPage = TranslationsSignUpPageEn._(_root);
	late final TranslationsSignInPageEn signInPage = TranslationsSignInPageEn._(_root);
	late final TranslationsErrorPageEn errorPage = TranslationsErrorPageEn._(_root);
	late final TranslationsUserRegistrationPageEn userRegistrationPage = TranslationsUserRegistrationPageEn._(_root);
	late final TranslationsNavigationBarEn navigationBar = TranslationsNavigationBarEn._(_root);
	late final TranslationsButtonEn button = TranslationsButtonEn._(_root);
	late final TranslationsKEnumEn kEnum = TranslationsKEnumEn._(_root);
}

// Path: splashPage
class TranslationsSplashPageEn {
	TranslationsSplashPageEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Reimi'
	String get appName => 'Reimi';

	/// en: 'Connect through weather, a dating app'
	String get title => 'Connect through weather, a dating app';

	/// en: 'Loading...'
	String get loading => 'Loading...';
}

// Path: signUpPage
class TranslationsSignUpPageEn {
	TranslationsSignUpPageEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Reimi'
	String get appName => 'Reimi';

	/// en: 'Connect through weather, a dating app'
	String get title => 'Connect through weather, a dating app';

	/// en: 'Find special connections with people who enjoy the same weather'
	String get subtitle => 'Find special connections with people who enjoy the same weather';

	late final TranslationsSignUpPageButtonEn button = TranslationsSignUpPageButtonEn._(_root);
	late final TranslationsSignUpPageConsentEn consent = TranslationsSignUpPageConsentEn._(_root);
	late final TranslationsSignUpPageConfirmationEn confirmation = TranslationsSignUpPageConfirmationEn._(_root);
}

// Path: signInPage
class TranslationsSignInPageEn {
	TranslationsSignInPageEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Reimi'
	String get appName => 'Reimi';

	/// en: 'Welcome back'
	String get title => 'Welcome back';

	/// en: 'Let's share your weather'
	String get subtitle => 'Let\'s share your weather';

	late final TranslationsSignInPageButtonEn button = TranslationsSignInPageButtonEn._(_root);
	late final TranslationsSignInPageConfirmationEn confirmation = TranslationsSignInPageConfirmationEn._(_root);
}

// Path: errorPage
class TranslationsErrorPageEn {
	TranslationsErrorPageEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'An error has occurred'
	String get defaultMessage => 'An error has occurred';

	/// en: 'Please check your communication environment and try again.'
	String get subMessage => 'Please check your communication environment and try again.';
}

// Path: userRegistrationPage
class TranslationsUserRegistrationPageEn {
	TranslationsUserRegistrationPageEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsUserRegistrationPageGenderEn gender = TranslationsUserRegistrationPageGenderEn._(_root);
	late final TranslationsUserRegistrationPageBirthDateEn birthDate = TranslationsUserRegistrationPageBirthDateEn._(_root);
	late final TranslationsUserRegistrationPageAddressEn address = TranslationsUserRegistrationPageAddressEn._(_root);
	late final TranslationsUserRegistrationPageNameEn name = TranslationsUserRegistrationPageNameEn._(_root);
	late final TranslationsUserRegistrationPageIntroductionEn introduction = TranslationsUserRegistrationPageIntroductionEn._(_root);
	late final TranslationsUserRegistrationPageMainPhotoEn mainPhoto = TranslationsUserRegistrationPageMainPhotoEn._(_root);
}

// Path: navigationBar
class TranslationsNavigationBarEn {
	TranslationsNavigationBarEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsNavigationBarHomeEn home = TranslationsNavigationBarHomeEn._(_root);
	late final TranslationsNavigationBarLikeEn like = TranslationsNavigationBarLikeEn._(_root);
	late final TranslationsNavigationBarChatEn chat = TranslationsNavigationBarChatEn._(_root);
	late final TranslationsNavigationBarWeatherReportEn weatherReport = TranslationsNavigationBarWeatherReportEn._(_root);
	late final TranslationsNavigationBarAccountEn account = TranslationsNavigationBarAccountEn._(_root);
}

// Path: button
class TranslationsButtonEn {
	TranslationsButtonEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Next'
	String get next => 'Next';

	/// en: 'Confirm'
	String get confirmation => 'Confirm';

	/// en: 'Cancel'
	String get cancel => 'Cancel';

	/// en: 'Select'
	String get select => 'Select';

	/// en: 'Logout'
	String get logout => 'Logout';

	/// en: 'Retry'
	String get retry => 'Retry';

	/// en: 'Try Rater'
	String get tryRater => 'Try Rater';
}

// Path: kEnum
class TranslationsKEnumEn {
	TranslationsKEnumEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsKEnumGenderEn gender = TranslationsKEnumGenderEn._(_root);
	late final TranslationsKEnumAddressEn address = TranslationsKEnumAddressEn._(_root);
}

// Path: signUpPage.button
class TranslationsSignUpPageButtonEn {
	TranslationsSignUpPageButtonEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Sign up with Apple'
	String get apple => 'Sign up with Apple';

	/// en: 'Sign up with Google'
	String get google => 'Sign up with Google';
}

// Path: signUpPage.consent
class TranslationsSignUpPageConsentEn {
	TranslationsSignUpPageConsentEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'By signing up, you agree to our '
	String get consentText1 => 'By signing up, you agree to our ';

	/// en: 'Terms of Service'
	String get tos => 'Terms of Service';

	/// en: ' and '
	String get consentText2 => ' and ';

	/// en: 'Privacy Policy'
	String get pp => 'Privacy Policy';

	/// en: ''
	String get consentText3 => '';
}

// Path: signUpPage.confirmation
class TranslationsSignUpPageConfirmationEn {
	TranslationsSignUpPageConfirmationEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Already have an account?'
	String get account => 'Already have an account?';

	/// en: 'Sign in'
	String get signIn => 'Sign in';
}

// Path: signInPage.button
class TranslationsSignInPageButtonEn {
	TranslationsSignInPageButtonEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Sign in with Apple'
	String get apple => 'Sign in with Apple';

	/// en: 'Sign in with Google'
	String get google => 'Sign in with Google';
}

// Path: signInPage.confirmation
class TranslationsSignInPageConfirmationEn {
	TranslationsSignInPageConfirmationEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Don't have an account?'
	String get account => 'Don\'t have an account?';

	/// en: 'Sign up'
	String get signUp => 'Sign up';
}

// Path: userRegistrationPage.gender
class TranslationsUserRegistrationPageGenderEn {
	TranslationsUserRegistrationPageGenderEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'What is your gender?'
	String get question => 'What is your gender?';

	late final TranslationsUserRegistrationPageGenderDialogEn dialog = TranslationsUserRegistrationPageGenderDialogEn._(_root);
}

// Path: userRegistrationPage.birthDate
class TranslationsUserRegistrationPageBirthDateEn {
	TranslationsUserRegistrationPageBirthDateEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'What is your date of birth?'
	String get question => 'What is your date of birth?';

	late final TranslationsUserRegistrationPageBirthDateDialogEn dialog = TranslationsUserRegistrationPageBirthDateDialogEn._(_root);
	late final TranslationsUserRegistrationPageBirthDateItemsEn items = TranslationsUserRegistrationPageBirthDateItemsEn._(_root);
}

// Path: userRegistrationPage.address
class TranslationsUserRegistrationPageAddressEn {
	TranslationsUserRegistrationPageAddressEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Where do you live?'
	String get question => 'Where do you live?';

	late final TranslationsUserRegistrationPageAddressDialogEn dialog = TranslationsUserRegistrationPageAddressDialogEn._(_root);
	late final TranslationsUserRegistrationPageAddressItemsEn items = TranslationsUserRegistrationPageAddressItemsEn._(_root);
}

// Path: userRegistrationPage.name
class TranslationsUserRegistrationPageNameEn {
	TranslationsUserRegistrationPageNameEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'What is your name?'
	String get question => 'What is your name?';

	late final TranslationsUserRegistrationPageNameDialogEn dialog = TranslationsUserRegistrationPageNameDialogEn._(_root);
	late final TranslationsUserRegistrationPageNameItemsEn items = TranslationsUserRegistrationPageNameItemsEn._(_root);
}

// Path: userRegistrationPage.introduction
class TranslationsUserRegistrationPageIntroductionEn {
	TranslationsUserRegistrationPageIntroductionEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Tell us about yourself'
	String get question => 'Tell us about yourself';

	late final TranslationsUserRegistrationPageIntroductionDialogEn dialog = TranslationsUserRegistrationPageIntroductionDialogEn._(_root);
	late final TranslationsUserRegistrationPageIntroductionItemsEn items = TranslationsUserRegistrationPageIntroductionItemsEn._(_root);
}

// Path: userRegistrationPage.mainPhoto
class TranslationsUserRegistrationPageMainPhotoEn {
	TranslationsUserRegistrationPageMainPhotoEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Select your main photo'
	String get question => 'Select your main photo';

	late final TranslationsUserRegistrationPageMainPhotoDialogEn dialog = TranslationsUserRegistrationPageMainPhotoDialogEn._(_root);
	late final TranslationsUserRegistrationPageMainPhotoItemsEn items = TranslationsUserRegistrationPageMainPhotoItemsEn._(_root);
}

// Path: navigationBar.home
class TranslationsNavigationBarHomeEn {
	TranslationsNavigationBarHomeEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Meet'
	String get title => 'Meet';
}

// Path: navigationBar.like
class TranslationsNavigationBarLikeEn {
	TranslationsNavigationBarLikeEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Likes'
	String get title => 'Likes';
}

// Path: navigationBar.chat
class TranslationsNavigationBarChatEn {
	TranslationsNavigationBarChatEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Chat'
	String get title => 'Chat';
}

// Path: navigationBar.weatherReport
class TranslationsNavigationBarWeatherReportEn {
	TranslationsNavigationBarWeatherReportEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Report'
	String get title => 'Report';
}

// Path: navigationBar.account
class TranslationsNavigationBarAccountEn {
	TranslationsNavigationBarAccountEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Account'
	String get title => 'Account';
}

// Path: kEnum.gender
class TranslationsKEnumGenderEn {
	TranslationsKEnumGenderEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Male'
	String get man => 'Male';

	/// en: 'Female'
	String get woman => 'Female';

	/// en: 'Other'
	String get other => 'Other';
}

// Path: kEnum.address
class TranslationsKEnumAddressEn {
	TranslationsKEnumAddressEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsKEnumAddressPrefectureEn prefecture = TranslationsKEnumAddressPrefectureEn._(_root);

	/// en: 'Other'
	String get other => 'Other';
}

// Path: userRegistrationPage.gender.dialog
class TranslationsUserRegistrationPageGenderDialogEn {
	TranslationsUserRegistrationPageGenderDialogEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Confirm Gender'
	String get title => 'Confirm Gender';

	/// en: 'Selected gender: '
	String get contentText1 => 'Selected gender: ';

	/// en: 'Proceed with this selection?'
	String get contentText2 => 'Proceed with this selection?';
}

// Path: userRegistrationPage.birthDate.dialog
class TranslationsUserRegistrationPageBirthDateDialogEn {
	TranslationsUserRegistrationPageBirthDateDialogEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Confirm Date of Birth'
	String get title => 'Confirm Date of Birth';

	/// en: 'Selected date of birth: '
	String get contentText1 => 'Selected date of birth: ';

	/// en: 'Proceed with this selection?'
	String get contentText2 => 'Proceed with this selection?';
}

// Path: userRegistrationPage.birthDate.items
class TranslationsUserRegistrationPageBirthDateItemsEn {
	TranslationsUserRegistrationPageBirthDateItemsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Year'
	String get year => 'Year';

	/// en: 'Month'
	String get month => 'Month';

	/// en: 'Day'
	String get day => 'Day';
}

// Path: userRegistrationPage.address.dialog
class TranslationsUserRegistrationPageAddressDialogEn {
	TranslationsUserRegistrationPageAddressDialogEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Confirm Address'
	String get title => 'Confirm Address';

	/// en: 'Selected address: '
	String get contentText1 => 'Selected address: ';

	/// en: 'Proceed with this selection?'
	String get contentText2 => 'Proceed with this selection?';
}

// Path: userRegistrationPage.address.items
class TranslationsUserRegistrationPageAddressItemsEn {
	TranslationsUserRegistrationPageAddressItemsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Select prefecture'
	String get placeholder => 'Select prefecture';
}

// Path: userRegistrationPage.name.dialog
class TranslationsUserRegistrationPageNameDialogEn {
	TranslationsUserRegistrationPageNameDialogEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Confirm Name'
	String get title => 'Confirm Name';

	/// en: 'Entered name: '
	String get contentText1 => 'Entered name: ';

	/// en: 'Proceed with this entry?'
	String get contentText2 => 'Proceed with this entry?';
}

// Path: userRegistrationPage.name.items
class TranslationsUserRegistrationPageNameItemsEn {
	TranslationsUserRegistrationPageNameItemsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Enter your name'
	String get placeholder => 'Enter your name';
}

// Path: userRegistrationPage.introduction.dialog
class TranslationsUserRegistrationPageIntroductionDialogEn {
	TranslationsUserRegistrationPageIntroductionDialogEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Confirm Introduction'
	String get title => 'Confirm Introduction';

	/// en: 'Your introduction: '
	String get contentText1 => 'Your introduction: ';

	/// en: 'Proceed with this entry?'
	String get contentText2 => 'Proceed with this entry?';
}

// Path: userRegistrationPage.introduction.items
class TranslationsUserRegistrationPageIntroductionItemsEn {
	TranslationsUserRegistrationPageIntroductionItemsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Enter your introduction (20 characters minimum)'
	String get placeholder => 'Enter your introduction (20 characters minimum)';

	/// en: '$textLength / 20 characters'
	String charCountLabelText({required Object textLength}) => '${textLength} / 20 characters';

	/// en: '$remainingTextLength more characters needed'
	String remainingCharsText({required Object remainingTextLength}) => '${remainingTextLength} more characters needed';
}

// Path: userRegistrationPage.mainPhoto.dialog
class TranslationsUserRegistrationPageMainPhotoDialogEn {
	TranslationsUserRegistrationPageMainPhotoDialogEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Confirm Photo'
	String get title => 'Confirm Photo';

	/// en: 'Selected photo: '
	String get contentText1 => 'Selected photo: ';

	/// en: 'Complete registration with this photo?'
	String get contentText2 => 'Complete registration with this photo?';
}

// Path: userRegistrationPage.mainPhoto.items
class TranslationsUserRegistrationPageMainPhotoItemsEn {
	TranslationsUserRegistrationPageMainPhotoItemsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Click to select photo'
	String get photoSelectInstructionText => 'Click to select photo';

	/// en: 'A smiling face photo is recommended'
	String get photoRecommendationHint => 'A smiling face photo is recommended';
}

// Path: kEnum.address.prefecture
class TranslationsKEnumAddressPrefectureEn {
	TranslationsKEnumAddressPrefectureEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Hokkaido'
	String get hokkaido => 'Hokkaido';

	/// en: 'Aomori'
	String get aomori => 'Aomori';

	/// en: 'Iwate'
	String get iwate => 'Iwate';

	/// en: 'Miyagi'
	String get miyagi => 'Miyagi';

	/// en: 'Akita'
	String get akita => 'Akita';

	/// en: 'Yamagata'
	String get yamagata => 'Yamagata';

	/// en: 'Fukushima'
	String get fukushima => 'Fukushima';

	/// en: 'Ibaraki'
	String get ibaraki => 'Ibaraki';

	/// en: 'Tochigi'
	String get tochigi => 'Tochigi';

	/// en: 'Gunma'
	String get gunma => 'Gunma';

	/// en: 'Saitama'
	String get saitama => 'Saitama';

	/// en: 'Chiba'
	String get chiba => 'Chiba';

	/// en: 'Tokyo'
	String get tokyo => 'Tokyo';

	/// en: 'Kanagawa'
	String get kanagawa => 'Kanagawa';

	/// en: 'Niigata'
	String get niigata => 'Niigata';

	/// en: 'Toyama'
	String get toyama => 'Toyama';

	/// en: 'Ishikawa'
	String get ishikawa => 'Ishikawa';

	/// en: 'Fukui'
	String get fukui => 'Fukui';

	/// en: 'Yamanashi'
	String get yamanashi => 'Yamanashi';

	/// en: 'Nagano'
	String get nagano => 'Nagano';

	/// en: 'Gifu'
	String get gifu => 'Gifu';

	/// en: 'Shizuoka'
	String get shizuoka => 'Shizuoka';

	/// en: 'Aichi'
	String get aichi => 'Aichi';

	/// en: 'Mie'
	String get mie => 'Mie';

	/// en: 'Shiga'
	String get shiga => 'Shiga';

	/// en: 'Kyoto'
	String get kyoto => 'Kyoto';

	/// en: 'Osaka'
	String get osaka => 'Osaka';

	/// en: 'Hyogo'
	String get hyogo => 'Hyogo';

	/// en: 'Nara'
	String get nara => 'Nara';

	/// en: 'Wakayama'
	String get wakayama => 'Wakayama';

	/// en: 'Tottori'
	String get tottori => 'Tottori';

	/// en: 'Shimane'
	String get shimane => 'Shimane';

	/// en: 'Okayama'
	String get okayama => 'Okayama';

	/// en: 'Hiroshima'
	String get hiroshima => 'Hiroshima';

	/// en: 'Yamaguchi'
	String get yamaguchi => 'Yamaguchi';

	/// en: 'Tokushima'
	String get tokushima => 'Tokushima';

	/// en: 'Kagawa'
	String get kagawa => 'Kagawa';

	/// en: 'Ehime'
	String get ehime => 'Ehime';

	/// en: 'Kochi'
	String get kochi => 'Kochi';

	/// en: 'Fukuoka'
	String get fukuoka => 'Fukuoka';

	/// en: 'Saga'
	String get saga => 'Saga';

	/// en: 'Nagasaki'
	String get nagasaki => 'Nagasaki';

	/// en: 'Kumamoto'
	String get kumamoto => 'Kumamoto';

	/// en: 'Oita'
	String get oita => 'Oita';

	/// en: 'Miyazaki'
	String get miyazaki => 'Miyazaki';

	/// en: 'Kagoshima'
	String get kagoshima => 'Kagoshima';

	/// en: 'Okinawa'
	String get okinawa => 'Okinawa';
}

/// The flat map containing all translations for locale <en>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on Translations {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'splashPage.appName' => 'Reimi',
			'splashPage.title' => 'Connect through weather, a dating app',
			'splashPage.loading' => 'Loading...',
			'signUpPage.appName' => 'Reimi',
			'signUpPage.title' => 'Connect through weather, a dating app',
			'signUpPage.subtitle' => 'Find special connections with people who enjoy the same weather',
			'signUpPage.button.apple' => 'Sign up with Apple',
			'signUpPage.button.google' => 'Sign up with Google',
			'signUpPage.consent.consentText1' => 'By signing up, you agree to our ',
			'signUpPage.consent.tos' => 'Terms of Service',
			'signUpPage.consent.consentText2' => ' and ',
			'signUpPage.consent.pp' => 'Privacy Policy',
			'signUpPage.consent.consentText3' => '',
			'signUpPage.confirmation.account' => 'Already have an account?',
			'signUpPage.confirmation.signIn' => 'Sign in',
			'signInPage.appName' => 'Reimi',
			'signInPage.title' => 'Welcome back',
			'signInPage.subtitle' => 'Let\'s share your weather',
			'signInPage.button.apple' => 'Sign in with Apple',
			'signInPage.button.google' => 'Sign in with Google',
			'signInPage.confirmation.account' => 'Don\'t have an account?',
			'signInPage.confirmation.signUp' => 'Sign up',
			'errorPage.defaultMessage' => 'An error has occurred',
			'errorPage.subMessage' => 'Please check your communication environment and try again.',
			'userRegistrationPage.gender.question' => 'What is your gender?',
			'userRegistrationPage.gender.dialog.title' => 'Confirm Gender',
			'userRegistrationPage.gender.dialog.contentText1' => 'Selected gender: ',
			'userRegistrationPage.gender.dialog.contentText2' => 'Proceed with this selection?',
			'userRegistrationPage.birthDate.question' => 'What is your date of birth?',
			'userRegistrationPage.birthDate.dialog.title' => 'Confirm Date of Birth',
			'userRegistrationPage.birthDate.dialog.contentText1' => 'Selected date of birth: ',
			'userRegistrationPage.birthDate.dialog.contentText2' => 'Proceed with this selection?',
			'userRegistrationPage.birthDate.items.year' => 'Year',
			'userRegistrationPage.birthDate.items.month' => 'Month',
			'userRegistrationPage.birthDate.items.day' => 'Day',
			'userRegistrationPage.address.question' => 'Where do you live?',
			'userRegistrationPage.address.dialog.title' => 'Confirm Address',
			'userRegistrationPage.address.dialog.contentText1' => 'Selected address: ',
			'userRegistrationPage.address.dialog.contentText2' => 'Proceed with this selection?',
			'userRegistrationPage.address.items.placeholder' => 'Select prefecture',
			'userRegistrationPage.name.question' => 'What is your name?',
			'userRegistrationPage.name.dialog.title' => 'Confirm Name',
			'userRegistrationPage.name.dialog.contentText1' => 'Entered name: ',
			'userRegistrationPage.name.dialog.contentText2' => 'Proceed with this entry?',
			'userRegistrationPage.name.items.placeholder' => 'Enter your name',
			'userRegistrationPage.introduction.question' => 'Tell us about yourself',
			'userRegistrationPage.introduction.dialog.title' => 'Confirm Introduction',
			'userRegistrationPage.introduction.dialog.contentText1' => 'Your introduction: ',
			'userRegistrationPage.introduction.dialog.contentText2' => 'Proceed with this entry?',
			'userRegistrationPage.introduction.items.placeholder' => 'Enter your introduction (20 characters minimum)',
			'userRegistrationPage.introduction.items.charCountLabelText' => ({required Object textLength}) => '${textLength} / 20 characters',
			'userRegistrationPage.introduction.items.remainingCharsText' => ({required Object remainingTextLength}) => '${remainingTextLength} more characters needed',
			'userRegistrationPage.mainPhoto.question' => 'Select your main photo',
			'userRegistrationPage.mainPhoto.dialog.title' => 'Confirm Photo',
			'userRegistrationPage.mainPhoto.dialog.contentText1' => 'Selected photo: ',
			'userRegistrationPage.mainPhoto.dialog.contentText2' => 'Complete registration with this photo?',
			'userRegistrationPage.mainPhoto.items.photoSelectInstructionText' => 'Click to select photo',
			'userRegistrationPage.mainPhoto.items.photoRecommendationHint' => 'A smiling face photo is recommended',
			'navigationBar.home.title' => 'Meet',
			'navigationBar.like.title' => 'Likes',
			'navigationBar.chat.title' => 'Chat',
			'navigationBar.weatherReport.title' => 'Report',
			'navigationBar.account.title' => 'Account',
			'button.next' => 'Next',
			'button.confirmation' => 'Confirm',
			'button.cancel' => 'Cancel',
			'button.select' => 'Select',
			'button.logout' => 'Logout',
			'button.retry' => 'Retry',
			'button.tryRater' => 'Try Rater',
			'kEnum.gender.man' => 'Male',
			'kEnum.gender.woman' => 'Female',
			'kEnum.gender.other' => 'Other',
			'kEnum.address.prefecture.hokkaido' => 'Hokkaido',
			'kEnum.address.prefecture.aomori' => 'Aomori',
			'kEnum.address.prefecture.iwate' => 'Iwate',
			'kEnum.address.prefecture.miyagi' => 'Miyagi',
			'kEnum.address.prefecture.akita' => 'Akita',
			'kEnum.address.prefecture.yamagata' => 'Yamagata',
			'kEnum.address.prefecture.fukushima' => 'Fukushima',
			'kEnum.address.prefecture.ibaraki' => 'Ibaraki',
			'kEnum.address.prefecture.tochigi' => 'Tochigi',
			'kEnum.address.prefecture.gunma' => 'Gunma',
			'kEnum.address.prefecture.saitama' => 'Saitama',
			'kEnum.address.prefecture.chiba' => 'Chiba',
			'kEnum.address.prefecture.tokyo' => 'Tokyo',
			'kEnum.address.prefecture.kanagawa' => 'Kanagawa',
			'kEnum.address.prefecture.niigata' => 'Niigata',
			'kEnum.address.prefecture.toyama' => 'Toyama',
			'kEnum.address.prefecture.ishikawa' => 'Ishikawa',
			'kEnum.address.prefecture.fukui' => 'Fukui',
			'kEnum.address.prefecture.yamanashi' => 'Yamanashi',
			'kEnum.address.prefecture.nagano' => 'Nagano',
			'kEnum.address.prefecture.gifu' => 'Gifu',
			'kEnum.address.prefecture.shizuoka' => 'Shizuoka',
			'kEnum.address.prefecture.aichi' => 'Aichi',
			'kEnum.address.prefecture.mie' => 'Mie',
			'kEnum.address.prefecture.shiga' => 'Shiga',
			'kEnum.address.prefecture.kyoto' => 'Kyoto',
			'kEnum.address.prefecture.osaka' => 'Osaka',
			'kEnum.address.prefecture.hyogo' => 'Hyogo',
			'kEnum.address.prefecture.nara' => 'Nara',
			'kEnum.address.prefecture.wakayama' => 'Wakayama',
			'kEnum.address.prefecture.tottori' => 'Tottori',
			'kEnum.address.prefecture.shimane' => 'Shimane',
			'kEnum.address.prefecture.okayama' => 'Okayama',
			'kEnum.address.prefecture.hiroshima' => 'Hiroshima',
			'kEnum.address.prefecture.yamaguchi' => 'Yamaguchi',
			'kEnum.address.prefecture.tokushima' => 'Tokushima',
			'kEnum.address.prefecture.kagawa' => 'Kagawa',
			'kEnum.address.prefecture.ehime' => 'Ehime',
			'kEnum.address.prefecture.kochi' => 'Kochi',
			'kEnum.address.prefecture.fukuoka' => 'Fukuoka',
			'kEnum.address.prefecture.saga' => 'Saga',
			'kEnum.address.prefecture.nagasaki' => 'Nagasaki',
			'kEnum.address.prefecture.kumamoto' => 'Kumamoto',
			'kEnum.address.prefecture.oita' => 'Oita',
			'kEnum.address.prefecture.miyazaki' => 'Miyazaki',
			'kEnum.address.prefecture.kagoshima' => 'Kagoshima',
			'kEnum.address.prefecture.okinawa' => 'Okinawa',
			'kEnum.address.other' => 'Other',
			_ => null,
		};
	}
}
