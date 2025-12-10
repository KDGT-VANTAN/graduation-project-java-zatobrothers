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
	late final TranslationsUserRegistrationCommonEn common = TranslationsUserRegistrationCommonEn._(_root);
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

// Path: userRegistration.common
class TranslationsUserRegistrationCommonEn {
	TranslationsUserRegistrationCommonEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsUserRegistrationCommonButtonEn button = TranslationsUserRegistrationCommonButtonEn._(_root);
	late final TranslationsUserRegistrationCommonDialogEn dialog = TranslationsUserRegistrationCommonDialogEn._(_root);
	late final TranslationsUserRegistrationCommonModalBottomSheetEn modalBottomSheet = TranslationsUserRegistrationCommonModalBottomSheetEn._(_root);
}

// Path: userRegistration.gender
class TranslationsUserRegistrationGenderEn {
	TranslationsUserRegistrationGenderEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'What is your gender?'
	String get question => 'What is your gender?';

	late final TranslationsUserRegistrationGenderDialogEn dialog = TranslationsUserRegistrationGenderDialogEn._(_root);
	late final TranslationsUserRegistrationGenderItemsEn items = TranslationsUserRegistrationGenderItemsEn._(_root);
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

// Path: userRegistration.common.button
class TranslationsUserRegistrationCommonButtonEn {
	TranslationsUserRegistrationCommonButtonEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Next'
	String get next => 'Next';
}

// Path: userRegistration.common.dialog
class TranslationsUserRegistrationCommonDialogEn {
	TranslationsUserRegistrationCommonDialogEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsUserRegistrationCommonDialogButtonEn button = TranslationsUserRegistrationCommonDialogButtonEn._(_root);
}

// Path: userRegistration.common.modalBottomSheet
class TranslationsUserRegistrationCommonModalBottomSheetEn {
	TranslationsUserRegistrationCommonModalBottomSheetEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsUserRegistrationCommonModalBottomSheetButtonEn button = TranslationsUserRegistrationCommonModalBottomSheetButtonEn._(_root);
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

// Path: userRegistration.gender.items
class TranslationsUserRegistrationGenderItemsEn {
	TranslationsUserRegistrationGenderItemsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Male'
	String get man => 'Male';

	/// en: 'Female'
	String get woman => 'Female';

	/// en: 'Other'
	String get others => 'Other';
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

	late final TranslationsUserRegistrationAddressItemsPrefectureEn prefecture = TranslationsUserRegistrationAddressItemsPrefectureEn._(_root);

	/// en: 'Others'
	String get others => 'Others';
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

// Path: userRegistration.common.dialog.button
class TranslationsUserRegistrationCommonDialogButtonEn {
	TranslationsUserRegistrationCommonDialogButtonEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Confirm'
	String get confirmation => 'Confirm';

	/// en: 'Cancel'
	String get cancel => 'Cancel';
}

// Path: userRegistration.common.modalBottomSheet.button
class TranslationsUserRegistrationCommonModalBottomSheetButtonEn {
	TranslationsUserRegistrationCommonModalBottomSheetButtonEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Select'
	String get selected => 'Select';
}

// Path: userRegistration.address.items.prefecture
class TranslationsUserRegistrationAddressItemsPrefectureEn {
	TranslationsUserRegistrationAddressItemsPrefectureEn._(this._root);

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
			'userRegistration.common.button.next' => 'Next',
			'userRegistration.common.dialog.button.confirmation' => 'Confirm',
			'userRegistration.common.dialog.button.cancel' => 'Cancel',
			'userRegistration.common.modalBottomSheet.button.selected' => 'Select',
			'userRegistration.gender.question' => 'What is your gender?',
			'userRegistration.gender.dialog.title' => 'Confirm Gender',
			'userRegistration.gender.dialog.contentText1' => 'Selected gender: ',
			'userRegistration.gender.dialog.contentText2' => 'Proceed with this selection?',
			'userRegistration.gender.items.man' => 'Male',
			'userRegistration.gender.items.woman' => 'Female',
			'userRegistration.gender.items.others' => 'Other',
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
			'userRegistration.address.items.prefecture.hokkaido' => 'Hokkaido',
			'userRegistration.address.items.prefecture.aomori' => 'Aomori',
			'userRegistration.address.items.prefecture.iwate' => 'Iwate',
			'userRegistration.address.items.prefecture.miyagi' => 'Miyagi',
			'userRegistration.address.items.prefecture.akita' => 'Akita',
			'userRegistration.address.items.prefecture.yamagata' => 'Yamagata',
			'userRegistration.address.items.prefecture.fukushima' => 'Fukushima',
			'userRegistration.address.items.prefecture.ibaraki' => 'Ibaraki',
			'userRegistration.address.items.prefecture.tochigi' => 'Tochigi',
			'userRegistration.address.items.prefecture.gunma' => 'Gunma',
			'userRegistration.address.items.prefecture.saitama' => 'Saitama',
			'userRegistration.address.items.prefecture.chiba' => 'Chiba',
			'userRegistration.address.items.prefecture.tokyo' => 'Tokyo',
			'userRegistration.address.items.prefecture.kanagawa' => 'Kanagawa',
			'userRegistration.address.items.prefecture.niigata' => 'Niigata',
			'userRegistration.address.items.prefecture.toyama' => 'Toyama',
			'userRegistration.address.items.prefecture.ishikawa' => 'Ishikawa',
			'userRegistration.address.items.prefecture.fukui' => 'Fukui',
			'userRegistration.address.items.prefecture.yamanashi' => 'Yamanashi',
			'userRegistration.address.items.prefecture.nagano' => 'Nagano',
			'userRegistration.address.items.prefecture.gifu' => 'Gifu',
			'userRegistration.address.items.prefecture.shizuoka' => 'Shizuoka',
			'userRegistration.address.items.prefecture.aichi' => 'Aichi',
			'userRegistration.address.items.prefecture.mie' => 'Mie',
			'userRegistration.address.items.prefecture.shiga' => 'Shiga',
			'userRegistration.address.items.prefecture.kyoto' => 'Kyoto',
			'userRegistration.address.items.prefecture.osaka' => 'Osaka',
			'userRegistration.address.items.prefecture.hyogo' => 'Hyogo',
			'userRegistration.address.items.prefecture.nara' => 'Nara',
			'userRegistration.address.items.prefecture.wakayama' => 'Wakayama',
			'userRegistration.address.items.prefecture.tottori' => 'Tottori',
			'userRegistration.address.items.prefecture.shimane' => 'Shimane',
			'userRegistration.address.items.prefecture.okayama' => 'Okayama',
			'userRegistration.address.items.prefecture.hiroshima' => 'Hiroshima',
			'userRegistration.address.items.prefecture.yamaguchi' => 'Yamaguchi',
			'userRegistration.address.items.prefecture.tokushima' => 'Tokushima',
			'userRegistration.address.items.prefecture.kagawa' => 'Kagawa',
			'userRegistration.address.items.prefecture.ehime' => 'Ehime',
			'userRegistration.address.items.prefecture.kochi' => 'Kochi',
			'userRegistration.address.items.prefecture.fukuoka' => 'Fukuoka',
			'userRegistration.address.items.prefecture.saga' => 'Saga',
			'userRegistration.address.items.prefecture.nagasaki' => 'Nagasaki',
			'userRegistration.address.items.prefecture.kumamoto' => 'Kumamoto',
			'userRegistration.address.items.prefecture.oita' => 'Oita',
			'userRegistration.address.items.prefecture.miyazaki' => 'Miyazaki',
			'userRegistration.address.items.prefecture.kagoshima' => 'Kagoshima',
			'userRegistration.address.items.prefecture.okinawa' => 'Okinawa',
			'userRegistration.address.items.others' => 'Others',
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
			_ => null,
		};
	}
}
