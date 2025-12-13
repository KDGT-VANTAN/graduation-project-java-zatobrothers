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
	late final TranslationsSplashEn splash = TranslationsSplashEn._(_root);
	late final TranslationsSignUpEn signUp = TranslationsSignUpEn._(_root);
	late final TranslationsSignInEn signIn = TranslationsSignInEn._(_root);
	late final TranslationsUserRegistrationEn userRegistration = TranslationsUserRegistrationEn._(_root);
	late final TranslationsNavigationBarEn navigationBar = TranslationsNavigationBarEn._(_root);
	late final TranslationsButtonEn button = TranslationsButtonEn._(_root);
	late final TranslationsKEnumEn kEnum = TranslationsKEnumEn._(_root);
}

// Path: splash
class TranslationsSplashEn {
	TranslationsSplashEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Reimi'
	String get appName => 'Reimi';

	/// en: 'Connect through weather, a dating app'
	String get title => 'Connect through weather, a dating app';

	/// en: 'Loading...'
	String get loading => 'Loading...';
}

// Path: signUp
class TranslationsSignUpEn {
	TranslationsSignUpEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Reimi'
	String get appName => 'Reimi';

	/// en: 'Connect through weather, a dating app'
	String get title => 'Connect through weather, a dating app';

	/// en: 'Find special connections with people who enjoy the same weather'
	String get subtitle => 'Find special connections with people who enjoy the same weather';

	late final TranslationsSignUpButtonEn button = TranslationsSignUpButtonEn._(_root);
	late final TranslationsSignUpConsentEn consent = TranslationsSignUpConsentEn._(_root);
	late final TranslationsSignUpConfirmationEn confirmation = TranslationsSignUpConfirmationEn._(_root);
}

// Path: signIn
class TranslationsSignInEn {
	TranslationsSignInEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Reimi'
	String get appName => 'Reimi';

	/// en: 'Welcome back'
	String get title => 'Welcome back';

	/// en: 'Let's share your weather'
	String get subtitle => 'Let\'s share your weather';

	late final TranslationsSignInButtonEn button = TranslationsSignInButtonEn._(_root);
	late final TranslationsSignInConfirmationEn confirmation = TranslationsSignInConfirmationEn._(_root);
}

// Path: userRegistration
class TranslationsUserRegistrationEn {
	TranslationsUserRegistrationEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsUserRegistrationGenderEn gender = TranslationsUserRegistrationGenderEn._(_root);
	late final TranslationsUserRegistrationBirthDateEn birthDate = TranslationsUserRegistrationBirthDateEn._(_root);
	late final TranslationsUserRegistrationAddressEn address = TranslationsUserRegistrationAddressEn._(_root);
	late final TranslationsUserRegistrationNameEn name = TranslationsUserRegistrationNameEn._(_root);
	late final TranslationsUserRegistrationIntroductionEn introduction = TranslationsUserRegistrationIntroductionEn._(_root);
	late final TranslationsUserRegistrationMainPhotoEn mainPhoto = TranslationsUserRegistrationMainPhotoEn._(_root);
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
}

// Path: kEnum
class TranslationsKEnumEn {
	TranslationsKEnumEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsKEnumGenderEn gender = TranslationsKEnumGenderEn._(_root);
	late final TranslationsKEnumAddressEn address = TranslationsKEnumAddressEn._(_root);
}

// Path: signUp.button
class TranslationsSignUpButtonEn {
	TranslationsSignUpButtonEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Sign up with Apple'
	String get apple => 'Sign up with Apple';

	/// en: 'Sign up with Google'
	String get google => 'Sign up with Google';
}

// Path: signUp.consent
class TranslationsSignUpConsentEn {
	TranslationsSignUpConsentEn._(this._root);

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

// Path: signUp.confirmation
class TranslationsSignUpConfirmationEn {
	TranslationsSignUpConfirmationEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Already have an account?'
	String get account => 'Already have an account?';

	/// en: 'Sign in'
	String get signIn => 'Sign in';
}

// Path: signIn.button
class TranslationsSignInButtonEn {
	TranslationsSignInButtonEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Sign in with Apple'
	String get apple => 'Sign in with Apple';

	/// en: 'Sign in with Google'
	String get google => 'Sign in with Google';
}

// Path: signIn.confirmation
class TranslationsSignInConfirmationEn {
	TranslationsSignInConfirmationEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Don't have an account?'
	String get account => 'Don\'t have an account?';

	/// en: 'Sign up'
	String get signUp => 'Sign up';
}

// Path: userRegistration.gender
class TranslationsUserRegistrationGenderEn {
	TranslationsUserRegistrationGenderEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'What is your gender?'
	String get question => 'What is your gender?';

	late final TranslationsUserRegistrationGenderDialogEn dialog = TranslationsUserRegistrationGenderDialogEn._(_root);
}

// Path: userRegistration.birthDate
class TranslationsUserRegistrationBirthDateEn {
	TranslationsUserRegistrationBirthDateEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'What is your date of birth?'
	String get question => 'What is your date of birth?';

	late final TranslationsUserRegistrationBirthDateDialogEn dialog = TranslationsUserRegistrationBirthDateDialogEn._(_root);
	late final TranslationsUserRegistrationBirthDateItemsEn items = TranslationsUserRegistrationBirthDateItemsEn._(_root);
}

// Path: userRegistration.address
class TranslationsUserRegistrationAddressEn {
	TranslationsUserRegistrationAddressEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Where do you live?'
	String get question => 'Where do you live?';

	late final TranslationsUserRegistrationAddressDialogEn dialog = TranslationsUserRegistrationAddressDialogEn._(_root);
	late final TranslationsUserRegistrationAddressItemsEn items = TranslationsUserRegistrationAddressItemsEn._(_root);
}

// Path: userRegistration.name
class TranslationsUserRegistrationNameEn {
	TranslationsUserRegistrationNameEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'What is your name?'
	String get question => 'What is your name?';

	late final TranslationsUserRegistrationNameDialogEn dialog = TranslationsUserRegistrationNameDialogEn._(_root);
	late final TranslationsUserRegistrationNameItemsEn items = TranslationsUserRegistrationNameItemsEn._(_root);
}

// Path: userRegistration.introduction
class TranslationsUserRegistrationIntroductionEn {
	TranslationsUserRegistrationIntroductionEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Tell us about yourself'
	String get question => 'Tell us about yourself';

	late final TranslationsUserRegistrationIntroductionDialogEn dialog = TranslationsUserRegistrationIntroductionDialogEn._(_root);
	late final TranslationsUserRegistrationIntroductionItemsEn items = TranslationsUserRegistrationIntroductionItemsEn._(_root);
}

// Path: userRegistration.mainPhoto
class TranslationsUserRegistrationMainPhotoEn {
	TranslationsUserRegistrationMainPhotoEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Select your main photo'
	String get question => 'Select your main photo';

	late final TranslationsUserRegistrationMainPhotoDialogEn dialog = TranslationsUserRegistrationMainPhotoDialogEn._(_root);
	late final TranslationsUserRegistrationMainPhotoItemsEn items = TranslationsUserRegistrationMainPhotoItemsEn._(_root);
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

// Path: userRegistration.gender.dialog
class TranslationsUserRegistrationGenderDialogEn {
	TranslationsUserRegistrationGenderDialogEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Confirm Gender'
	String get title => 'Confirm Gender';

	/// en: 'Selected gender: '
	String get contentText1 => 'Selected gender: ';

	/// en: 'Proceed with this selection?'
	String get contentText2 => 'Proceed with this selection?';
}

// Path: userRegistration.birthDate.dialog
class TranslationsUserRegistrationBirthDateDialogEn {
	TranslationsUserRegistrationBirthDateDialogEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Confirm Date of Birth'
	String get title => 'Confirm Date of Birth';

	/// en: 'Selected date of birth: '
	String get contentText1 => 'Selected date of birth: ';

	/// en: 'Proceed with this selection?'
	String get contentText2 => 'Proceed with this selection?';
}

// Path: userRegistration.birthDate.items
class TranslationsUserRegistrationBirthDateItemsEn {
	TranslationsUserRegistrationBirthDateItemsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Year'
	String get year => 'Year';

	/// en: 'Month'
	String get month => 'Month';

	/// en: 'Day'
	String get day => 'Day';
}

// Path: userRegistration.address.dialog
class TranslationsUserRegistrationAddressDialogEn {
	TranslationsUserRegistrationAddressDialogEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Confirm Address'
	String get title => 'Confirm Address';

	/// en: 'Selected address: '
	String get contentText1 => 'Selected address: ';

	/// en: 'Proceed with this selection?'
	String get contentText2 => 'Proceed with this selection?';
}

// Path: userRegistration.address.items
class TranslationsUserRegistrationAddressItemsEn {
	TranslationsUserRegistrationAddressItemsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Select prefecture'
	String get placeholder => 'Select prefecture';
}

// Path: userRegistration.name.dialog
class TranslationsUserRegistrationNameDialogEn {
	TranslationsUserRegistrationNameDialogEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Confirm Name'
	String get title => 'Confirm Name';

	/// en: 'Entered name: '
	String get contentText1 => 'Entered name: ';

	/// en: 'Proceed with this entry?'
	String get contentText2 => 'Proceed with this entry?';
}

// Path: userRegistration.name.items
class TranslationsUserRegistrationNameItemsEn {
	TranslationsUserRegistrationNameItemsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Enter your name'
	String get placeholder => 'Enter your name';
}

// Path: userRegistration.introduction.dialog
class TranslationsUserRegistrationIntroductionDialogEn {
	TranslationsUserRegistrationIntroductionDialogEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Confirm Introduction'
	String get title => 'Confirm Introduction';

	/// en: 'Your introduction: '
	String get contentText1 => 'Your introduction: ';

	/// en: 'Proceed with this entry?'
	String get contentText2 => 'Proceed with this entry?';
}

// Path: userRegistration.introduction.items
class TranslationsUserRegistrationIntroductionItemsEn {
	TranslationsUserRegistrationIntroductionItemsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Enter your introduction (20 characters minimum)'
	String get placeholder => 'Enter your introduction (20 characters minimum)';

	/// en: '$textLength / 20 characters'
	String charCountLabelText({required Object textLength}) => '${textLength} / 20 characters';

	/// en: '$remainingTextLength more characters needed'
	String remainingCharsText({required Object remainingTextLength}) => '${remainingTextLength} more characters needed';
}

// Path: userRegistration.mainPhoto.dialog
class TranslationsUserRegistrationMainPhotoDialogEn {
	TranslationsUserRegistrationMainPhotoDialogEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Confirm Photo'
	String get title => 'Confirm Photo';

	/// en: 'Selected photo: '
	String get contentText1 => 'Selected photo: ';

	/// en: 'Complete registration with this photo?'
	String get contentText2 => 'Complete registration with this photo?';
}

// Path: userRegistration.mainPhoto.items
class TranslationsUserRegistrationMainPhotoItemsEn {
	TranslationsUserRegistrationMainPhotoItemsEn._(this._root);

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
			'splash.appName' => 'Reimi',
			'splash.title' => 'Connect through weather, a dating app',
			'splash.loading' => 'Loading...',
			'signUp.appName' => 'Reimi',
			'signUp.title' => 'Connect through weather, a dating app',
			'signUp.subtitle' => 'Find special connections with people who enjoy the same weather',
			'signUp.button.apple' => 'Sign up with Apple',
			'signUp.button.google' => 'Sign up with Google',
			'signUp.consent.consentText1' => 'By signing up, you agree to our ',
			'signUp.consent.tos' => 'Terms of Service',
			'signUp.consent.consentText2' => ' and ',
			'signUp.consent.pp' => 'Privacy Policy',
			'signUp.consent.consentText3' => '',
			'signUp.confirmation.account' => 'Already have an account?',
			'signUp.confirmation.signIn' => 'Sign in',
			'signIn.appName' => 'Reimi',
			'signIn.title' => 'Welcome back',
			'signIn.subtitle' => 'Let\'s share your weather',
			'signIn.button.apple' => 'Sign in with Apple',
			'signIn.button.google' => 'Sign in with Google',
			'signIn.confirmation.account' => 'Don\'t have an account?',
			'signIn.confirmation.signUp' => 'Sign up',
			'userRegistration.gender.question' => 'What is your gender?',
			'userRegistration.gender.dialog.title' => 'Confirm Gender',
			'userRegistration.gender.dialog.contentText1' => 'Selected gender: ',
			'userRegistration.gender.dialog.contentText2' => 'Proceed with this selection?',
			'userRegistration.birthDate.question' => 'What is your date of birth?',
			'userRegistration.birthDate.dialog.title' => 'Confirm Date of Birth',
			'userRegistration.birthDate.dialog.contentText1' => 'Selected date of birth: ',
			'userRegistration.birthDate.dialog.contentText2' => 'Proceed with this selection?',
			'userRegistration.birthDate.items.year' => 'Year',
			'userRegistration.birthDate.items.month' => 'Month',
			'userRegistration.birthDate.items.day' => 'Day',
			'userRegistration.address.question' => 'Where do you live?',
			'userRegistration.address.dialog.title' => 'Confirm Address',
			'userRegistration.address.dialog.contentText1' => 'Selected address: ',
			'userRegistration.address.dialog.contentText2' => 'Proceed with this selection?',
			'userRegistration.address.items.placeholder' => 'Select prefecture',
			'userRegistration.name.question' => 'What is your name?',
			'userRegistration.name.dialog.title' => 'Confirm Name',
			'userRegistration.name.dialog.contentText1' => 'Entered name: ',
			'userRegistration.name.dialog.contentText2' => 'Proceed with this entry?',
			'userRegistration.name.items.placeholder' => 'Enter your name',
			'userRegistration.introduction.question' => 'Tell us about yourself',
			'userRegistration.introduction.dialog.title' => 'Confirm Introduction',
			'userRegistration.introduction.dialog.contentText1' => 'Your introduction: ',
			'userRegistration.introduction.dialog.contentText2' => 'Proceed with this entry?',
			'userRegistration.introduction.items.placeholder' => 'Enter your introduction (20 characters minimum)',
			'userRegistration.introduction.items.charCountLabelText' => ({required Object textLength}) => '${textLength} / 20 characters',
			'userRegistration.introduction.items.remainingCharsText' => ({required Object remainingTextLength}) => '${remainingTextLength} more characters needed',
			'userRegistration.mainPhoto.question' => 'Select your main photo',
			'userRegistration.mainPhoto.dialog.title' => 'Confirm Photo',
			'userRegistration.mainPhoto.dialog.contentText1' => 'Selected photo: ',
			'userRegistration.mainPhoto.dialog.contentText2' => 'Complete registration with this photo?',
			'userRegistration.mainPhoto.items.photoSelectInstructionText' => 'Click to select photo',
			'userRegistration.mainPhoto.items.photoRecommendationHint' => 'A smiling face photo is recommended',
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
