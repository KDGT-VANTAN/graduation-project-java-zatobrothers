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
	late final TranslationsLikePageEn likePage = TranslationsLikePageEn._(_root);
	late final TranslationsProfileDetailPageEn profileDetailPage = TranslationsProfileDetailPageEn._(_root);
	late final TranslationsProfilePageEn profilePage = TranslationsProfilePageEn._(_root);
	late final TranslationsSettingPageEn settingPage = TranslationsSettingPageEn._(_root);
	late final TranslationsNavigationBarEn navigationBar = TranslationsNavigationBarEn._(_root);
	late final TranslationsDialogEn dialog = TranslationsDialogEn._(_root);
	late final TranslationsBottomSheetEn bottomSheet = TranslationsBottomSheetEn._(_root);
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

	/// en: 'Please check your internet connection and try again.'
	String get subMessage => 'Please check your internet connection\nand try again.';
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

// Path: likePage
class TranslationsLikePageEn {
	TranslationsLikePageEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsLikePageSegmentEn segment = TranslationsLikePageSegmentEn._(_root);
}

// Path: profileDetailPage
class TranslationsProfileDetailPageEn {
	TranslationsProfileDetailPageEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Profile Details'
	String get title => 'Profile Details';
}

// Path: profilePage
class TranslationsProfilePageEn {
	TranslationsProfilePageEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Edit Profile'
	String get title => 'Edit Profile';

	late final TranslationsProfilePageSectionEn section = TranslationsProfilePageSectionEn._(_root);
	late final TranslationsProfilePageEditEn edit = TranslationsProfilePageEditEn._(_root);
	late final TranslationsProfilePagePlaceholderEn placeholder = TranslationsProfilePagePlaceholderEn._(_root);
}

// Path: settingPage
class TranslationsSettingPageEn {
	TranslationsSettingPageEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Settings'
	String get title => 'Settings';

	late final TranslationsSettingPageSectionEn section = TranslationsSettingPageSectionEn._(_root);
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

// Path: dialog
class TranslationsDialogEn {
	TranslationsDialogEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsDialogUserAddressEn userAddress = TranslationsDialogUserAddressEn._(_root);
	late final TranslationsDialogUserBirthDateEn userBirthDate = TranslationsDialogUserBirthDateEn._(_root);
	late final TranslationsDialogUserGenderEn userGender = TranslationsDialogUserGenderEn._(_root);
	late final TranslationsDialogUserIntroductionEn userIntroduction = TranslationsDialogUserIntroductionEn._(_root);
	late final TranslationsDialogUserMainPhotoEn userMainPhoto = TranslationsDialogUserMainPhotoEn._(_root);
	late final TranslationsDialogUserNameEn userName = TranslationsDialogUserNameEn._(_root);
	late final TranslationsDialogLogoutEn logout = TranslationsDialogLogoutEn._(_root);
	late final TranslationsDialogDeletePhotoEn deletePhoto = TranslationsDialogDeletePhotoEn._(_root);
	late final TranslationsDialogSaveChangesEn saveChanges = TranslationsDialogSaveChangesEn._(_root);
}

// Path: bottomSheet
class TranslationsBottomSheetEn {
	TranslationsBottomSheetEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsBottomSheetSortUserEn sortUser = TranslationsBottomSheetSortUserEn._(_root);
	late final TranslationsBottomSheetRefineSearchUserEn refineSearchUser = TranslationsBottomSheetRefineSearchUserEn._(_root);
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

	/// en: 'Reload'
	String get retry => 'Reload';

	/// en: 'Try Later'
	String get tryLater => 'Try Later';

	/// en: 'Save'
	String get save => 'Save';

	/// en: 'Delete'
	String get delete => 'Delete';

	/// en: 'Apply'
	String get apply => 'Apply';

	/// en: 'Clear'
	String get clear => 'Clear';
}

// Path: kEnum
class TranslationsKEnumEn {
	TranslationsKEnumEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsKEnumAddressEn address = TranslationsKEnumAddressEn._(_root);
	late final TranslationsKEnumAlcoholEn alcohol = TranslationsKEnumAlcoholEn._(_root);
	late final TranslationsKEnumAnnualIncomeEn annualIncome = TranslationsKEnumAnnualIncomeEn._(_root);
	late final TranslationsKEnumBloodTypeEn bloodType = TranslationsKEnumBloodTypeEn._(_root);
	late final TranslationsKEnumBodyShapeEn bodyShape = TranslationsKEnumBodyShapeEn._(_root);
	late final TranslationsKEnumCommunicationStyleEn communicationStyle = TranslationsKEnumCommunicationStyleEn._(_root);
	late final TranslationsKEnumEducationEn education = TranslationsKEnumEducationEn._(_root);
	late final TranslationsKEnumGenderEn gender = TranslationsKEnumGenderEn._(_root);
	late final TranslationsKEnumHeightEn height = TranslationsKEnumHeightEn._(_root);
	late final TranslationsKEnumHolidayEn holiday = TranslationsKEnumHolidayEn._(_root);
	late final TranslationsKEnumOccupationEn occupation = TranslationsKEnumOccupationEn._(_root);
	late final TranslationsKEnumSmokingEn smoking = TranslationsKEnumSmokingEn._(_root);
	late final TranslationsKEnumSortTypeEn sortType = TranslationsKEnumSortTypeEn._(_root);
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
}

// Path: userRegistrationPage.birthDate
class TranslationsUserRegistrationPageBirthDateEn {
	TranslationsUserRegistrationPageBirthDateEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'What is your date of birth?'
	String get question => 'What is your date of birth?';

	late final TranslationsUserRegistrationPageBirthDateItemsEn items = TranslationsUserRegistrationPageBirthDateItemsEn._(_root);
}

// Path: userRegistrationPage.address
class TranslationsUserRegistrationPageAddressEn {
	TranslationsUserRegistrationPageAddressEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Where do you live?'
	String get question => 'Where do you live?';

	late final TranslationsUserRegistrationPageAddressItemsEn items = TranslationsUserRegistrationPageAddressItemsEn._(_root);
}

// Path: userRegistrationPage.name
class TranslationsUserRegistrationPageNameEn {
	TranslationsUserRegistrationPageNameEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'What is your name?'
	String get question => 'What is your name?';

	late final TranslationsUserRegistrationPageNameItemsEn items = TranslationsUserRegistrationPageNameItemsEn._(_root);
}

// Path: userRegistrationPage.introduction
class TranslationsUserRegistrationPageIntroductionEn {
	TranslationsUserRegistrationPageIntroductionEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Tell us about yourself'
	String get question => 'Tell us about yourself';

	late final TranslationsUserRegistrationPageIntroductionItemsEn items = TranslationsUserRegistrationPageIntroductionItemsEn._(_root);
}

// Path: userRegistrationPage.mainPhoto
class TranslationsUserRegistrationPageMainPhotoEn {
	TranslationsUserRegistrationPageMainPhotoEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Select your main photo'
	String get question => 'Select your main photo';

	late final TranslationsUserRegistrationPageMainPhotoItemsEn items = TranslationsUserRegistrationPageMainPhotoItemsEn._(_root);
}

// Path: likePage.segment
class TranslationsLikePageSegmentEn {
	TranslationsLikePageSegmentEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'FromUser'
	String get fromUser => 'FromUser';

	/// en: 'ToUser'
	String get toUser => 'ToUser';
}

// Path: profilePage.section
class TranslationsProfilePageSectionEn {
	TranslationsProfilePageSectionEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Main Photo'
	String get mainPhoto => 'Main Photo';

	/// en: 'Sub Photos'
	String get subPhoto => 'Sub Photos';

	/// en: 'Weather Personality'
	String get weatherPersonality => 'Weather Personality';

	/// en: 'Introduction'
	String get introduction => 'Introduction';

	/// en: 'Top 3 Things to Do on Sunny Days'
	String get sunnyDayHobbies => 'Top 3 Things to Do on Sunny Days';

	/// en: 'Top 3 Things to Do on Rainy Days'
	String get rainyDayHobbies => 'Top 3 Things to Do on Rainy Days';

	late final TranslationsProfilePageSectionBasicInformationEn basicInformation = TranslationsProfilePageSectionBasicInformationEn._(_root);
}

// Path: profilePage.edit
class TranslationsProfilePageEditEn {
	TranslationsProfilePageEditEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Edit $item'
	String title({required Object item}) => 'Edit ${item}';

	late final TranslationsProfilePageEditSunnyDayHobbiesEn sunnyDayHobbies = TranslationsProfilePageEditSunnyDayHobbiesEn._(_root);
	late final TranslationsProfilePageEditRainyDayHobbiesEn rainyDayHobbies = TranslationsProfilePageEditRainyDayHobbiesEn._(_root);
}

// Path: profilePage.placeholder
class TranslationsProfilePagePlaceholderEn {
	TranslationsProfilePagePlaceholderEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsProfilePagePlaceholderSubPhotoEn subPhoto = TranslationsProfilePagePlaceholderSubPhotoEn._(_root);
	late final TranslationsProfilePagePlaceholderSunnyDayHobbiesEn sunnyDayHobbies = TranslationsProfilePagePlaceholderSunnyDayHobbiesEn._(_root);
	late final TranslationsProfilePagePlaceholderRainyDayHobbiesEn rainyDayHobbies = TranslationsProfilePagePlaceholderRainyDayHobbiesEn._(_root);

	/// en: 'Not set'
	String get basicInformation => 'Not set';
}

// Path: settingPage.section
class TranslationsSettingPageSectionEn {
	TranslationsSettingPageSectionEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsSettingPageSectionAccountSettingEn accountSetting = TranslationsSettingPageSectionAccountSettingEn._(_root);
	late final TranslationsSettingPageSectionHistoryEn history = TranslationsSettingPageSectionHistoryEn._(_root);
	late final TranslationsSettingPageSectionHelpEn help = TranslationsSettingPageSectionHelpEn._(_root);
	late final TranslationsSettingPageSectionAboutReimiEn aboutReimi = TranslationsSettingPageSectionAboutReimiEn._(_root);
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

// Path: dialog.userAddress
class TranslationsDialogUserAddressEn {
	TranslationsDialogUserAddressEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Confirm Address'
	String get title => 'Confirm Address';

	/// en: 'Selected address: '
	String get contentText1 => 'Selected address: ';

	/// en: 'Proceed with this selection?'
	String get contentText2 => 'Proceed with this selection?';
}

// Path: dialog.userBirthDate
class TranslationsDialogUserBirthDateEn {
	TranslationsDialogUserBirthDateEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Confirm Date of Birth'
	String get title => 'Confirm Date of Birth';

	/// en: 'Selected date of birth: '
	String get contentText1 => 'Selected date of birth: ';

	/// en: 'Proceed with this selection?'
	String get contentText2 => 'Proceed with this selection?';
}

// Path: dialog.userGender
class TranslationsDialogUserGenderEn {
	TranslationsDialogUserGenderEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Confirm Gender'
	String get title => 'Confirm Gender';

	/// en: 'Selected gender: '
	String get contentText1 => 'Selected gender: ';

	/// en: 'Proceed with this selection?'
	String get contentText2 => 'Proceed with this selection?';
}

// Path: dialog.userIntroduction
class TranslationsDialogUserIntroductionEn {
	TranslationsDialogUserIntroductionEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Confirm Introduction'
	String get title => 'Confirm Introduction';

	/// en: 'Your introduction: '
	String get contentText1 => 'Your introduction: ';

	/// en: 'Proceed with this entry?'
	String get contentText2 => 'Proceed with this entry?';
}

// Path: dialog.userMainPhoto
class TranslationsDialogUserMainPhotoEn {
	TranslationsDialogUserMainPhotoEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Confirm Photo'
	String get title => 'Confirm Photo';

	/// en: 'Selected photo: '
	String get contentText1 => 'Selected photo: ';

	/// en: 'Complete registration with this photo?'
	String get contentText2 => 'Complete registration with this photo?';
}

// Path: dialog.userName
class TranslationsDialogUserNameEn {
	TranslationsDialogUserNameEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Confirm Name'
	String get title => 'Confirm Name';

	/// en: 'Entered name: '
	String get contentText1 => 'Entered name: ';

	/// en: 'Proceed with this entry?'
	String get contentText2 => 'Proceed with this entry?';
}

// Path: dialog.logout
class TranslationsDialogLogoutEn {
	TranslationsDialogLogoutEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Confirm Logout'
	String get title => 'Confirm Logout';

	/// en: 'Are you sure you want to logout?'
	String get contentText => 'Are you sure you want to logout?';
}

// Path: dialog.deletePhoto
class TranslationsDialogDeletePhotoEn {
	TranslationsDialogDeletePhotoEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Confirm Photo Deletion'
	String get title => 'Confirm Photo Deletion';

	/// en: 'Do you really want to delete this photo?'
	String get contentText => 'Do you really want to delete this photo?';
}

// Path: dialog.saveChanges
class TranslationsDialogSaveChangesEn {
	TranslationsDialogSaveChangesEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Confirm Save Changes'
	String get title => 'Confirm Save Changes';

	/// en: 'Do you want to save your changes?'
	String get contentText => 'Do you want to save your changes?';
}

// Path: bottomSheet.sortUser
class TranslationsBottomSheetSortUserEn {
	TranslationsBottomSheetSortUserEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Sort'
	String get title => 'Sort';
}

// Path: bottomSheet.refineSearchUser
class TranslationsBottomSheetRefineSearchUserEn {
	TranslationsBottomSheetRefineSearchUserEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Refine Search'
	String get title => 'Refine Search';

	late final TranslationsBottomSheetRefineSearchUserSectionEn section = TranslationsBottomSheetRefineSearchUserSectionEn._(_root);
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

// Path: kEnum.alcohol
class TranslationsKEnumAlcoholEn {
	TranslationsKEnumAlcoholEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Don't drink'
	String get no => 'Don\'t drink';

	/// en: 'Drink occasionally'
	String get sometimes => 'Drink occasionally';

	/// en: 'Drink'
	String get yes => 'Drink';
}

// Path: kEnum.annualIncome
class TranslationsKEnumAnnualIncomeEn {
	TranslationsKEnumAnnualIncomeEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Under ¥2M'
	String get under2M => 'Under ¥2M';

	/// en: '¥2M - ¥4M'
	String get between2And4M => '¥2M - ¥4M';

	/// en: '¥4M - ¥6M'
	String get between4And6M => '¥4M - ¥6M';

	/// en: '¥6M - ¥8M'
	String get between6And8M => '¥6M - ¥8M';

	/// en: '¥8M - ¥10M'
	String get between8And10M => '¥8M - ¥10M';

	/// en: '¥10M - ¥15M'
	String get between10And15M => '¥10M - ¥15M';

	/// en: '¥15M - ¥20M'
	String get between15And20M => '¥15M - ¥20M';

	/// en: '¥20M - ¥30M'
	String get between20And30M => '¥20M - ¥30M';

	/// en: 'Over ¥30M'
	String get over30M => 'Over ¥30M';
}

// Path: kEnum.bloodType
class TranslationsKEnumBloodTypeEn {
	TranslationsKEnumBloodTypeEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Type A'
	String get a => 'Type A';

	/// en: 'Type B'
	String get b => 'Type B';

	/// en: 'Type O'
	String get o => 'Type O';

	/// en: 'Type AB'
	String get ab => 'Type AB';

	/// en: 'Unknown'
	String get unknown => 'Unknown';
}

// Path: kEnum.bodyShape
class TranslationsKEnumBodyShapeEn {
	TranslationsKEnumBodyShapeEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Slim'
	String get slim => 'Slim';

	/// en: 'Slender'
	String get slender => 'Slender';

	/// en: 'Average'
	String get normal => 'Average';

	/// en: 'Muscular'
	String get muscular => 'Muscular';

	/// en: 'Slightly Chubby'
	String get chubby => 'Slightly Chubby';

	/// en: 'Heavy'
	String get overweight => 'Heavy';
}

// Path: kEnum.communicationStyle
class TranslationsKEnumCommunicationStyleEn {
	TranslationsKEnumCommunicationStyleEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Phone Calls'
	String get call => 'Phone Calls';

	/// en: 'Messaging'
	String get message => 'Messaging';

	/// en: 'In Person'
	String get inPerson => 'In Person';
}

// Path: kEnum.education
class TranslationsKEnumEducationEn {
	TranslationsKEnumEducationEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'High School'
	String get highSchoolGraduate => 'High School';

	/// en: 'Junior College'
	String get juniorCollegeGraduate => 'Junior College';

	/// en: 'Vocational School'
	String get vocationalSchoolGraduate => 'Vocational School';

	/// en: 'Technical College'
	String get technicalCollegeGraduate => 'Technical College';

	/// en: 'University'
	String get universityGraduate => 'University';

	/// en: 'Graduate School'
	String get graduateSchoolGraduate => 'Graduate School';

	/// en: 'Other'
	String get other => 'Other';
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

// Path: kEnum.height
class TranslationsKEnumHeightEn {
	TranslationsKEnumHeightEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Under 130cm'
	String get under130cm => 'Under 130cm';

	/// en: '131cm'
	String get just131cm => '131cm';

	/// en: '132cm'
	String get just132cm => '132cm';

	/// en: '133cm'
	String get just133cm => '133cm';

	/// en: '134cm'
	String get just134cm => '134cm';

	/// en: '135cm'
	String get just135cm => '135cm';

	/// en: '136cm'
	String get just136cm => '136cm';

	/// en: '137cm'
	String get just137cm => '137cm';

	/// en: '138cm'
	String get just138cm => '138cm';

	/// en: '139cm'
	String get just139cm => '139cm';

	/// en: '140cm'
	String get just140cm => '140cm';

	/// en: '141cm'
	String get just141cm => '141cm';

	/// en: '142cm'
	String get just142cm => '142cm';

	/// en: '143cm'
	String get just143cm => '143cm';

	/// en: '144cm'
	String get just144cm => '144cm';

	/// en: '145cm'
	String get just145cm => '145cm';

	/// en: '146cm'
	String get just146cm => '146cm';

	/// en: '147cm'
	String get just147cm => '147cm';

	/// en: '148cm'
	String get just148cm => '148cm';

	/// en: '149cm'
	String get just149cm => '149cm';

	/// en: '150cm'
	String get just150cm => '150cm';

	/// en: '151cm'
	String get just151cm => '151cm';

	/// en: '152cm'
	String get just152cm => '152cm';

	/// en: '153cm'
	String get just153cm => '153cm';

	/// en: '154cm'
	String get just154cm => '154cm';

	/// en: '155cm'
	String get just155cm => '155cm';

	/// en: '156cm'
	String get just156cm => '156cm';

	/// en: '157cm'
	String get just157cm => '157cm';

	/// en: '158cm'
	String get just158cm => '158cm';

	/// en: '159cm'
	String get just159cm => '159cm';

	/// en: '160cm'
	String get just160cm => '160cm';

	/// en: '161cm'
	String get just161cm => '161cm';

	/// en: '162cm'
	String get just162cm => '162cm';

	/// en: '163cm'
	String get just163cm => '163cm';

	/// en: '164cm'
	String get just164cm => '164cm';

	/// en: '165cm'
	String get just165cm => '165cm';

	/// en: '166cm'
	String get just166cm => '166cm';

	/// en: '167cm'
	String get just167cm => '167cm';

	/// en: '168cm'
	String get just168cm => '168cm';

	/// en: '169cm'
	String get just169cm => '169cm';

	/// en: '170cm'
	String get just170cm => '170cm';

	/// en: '171cm'
	String get just171cm => '171cm';

	/// en: '172cm'
	String get just172cm => '172cm';

	/// en: '173cm'
	String get just173cm => '173cm';

	/// en: '174cm'
	String get just174cm => '174cm';

	/// en: '175cm'
	String get just175cm => '175cm';

	/// en: '176cm'
	String get just176cm => '176cm';

	/// en: '177cm'
	String get just177cm => '177cm';

	/// en: '178cm'
	String get just178cm => '178cm';

	/// en: '179cm'
	String get just179cm => '179cm';

	/// en: '180cm'
	String get just180cm => '180cm';

	/// en: '181cm'
	String get just181cm => '181cm';

	/// en: '182cm'
	String get just182cm => '182cm';

	/// en: '183cm'
	String get just183cm => '183cm';

	/// en: '184cm'
	String get just184cm => '184cm';

	/// en: '185cm'
	String get just185cm => '185cm';

	/// en: '186cm'
	String get just186cm => '186cm';

	/// en: '187cm'
	String get just187cm => '187cm';

	/// en: '188cm'
	String get just188cm => '188cm';

	/// en: '189cm'
	String get just189cm => '189cm';

	/// en: '190cm'
	String get just190cm => '190cm';

	/// en: '191cm'
	String get just191cm => '191cm';

	/// en: '192cm'
	String get just192cm => '192cm';

	/// en: '193cm'
	String get just193cm => '193cm';

	/// en: '194cm'
	String get just194cm => '194cm';

	/// en: '195cm'
	String get just195cm => '195cm';

	/// en: '196cm'
	String get just196cm => '196cm';

	/// en: '197cm'
	String get just197cm => '197cm';

	/// en: '198cm'
	String get just198cm => '198cm';

	/// en: '199cm'
	String get just199cm => '199cm';

	/// en: 'Over 200cm'
	String get over200cm => 'Over 200cm';
}

// Path: kEnum.holiday
class TranslationsKEnumHolidayEn {
	TranslationsKEnumHolidayEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Weekends'
	String get weekend => 'Weekends';

	/// en: 'Weekdays'
	String get weekday => 'Weekdays';

	/// en: 'Irregular'
	String get irregular => 'Irregular';
}

// Path: kEnum.occupation
class TranslationsKEnumOccupationEn {
	TranslationsKEnumOccupationEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'University Student'
	String get universityStudent => 'University Student';

	/// en: 'Graduate Student'
	String get graduateStudent => 'Graduate Student';

	/// en: 'Vocational Student'
	String get vocationalStudent => 'Vocational Student';

	/// en: 'Junior College Student'
	String get juniorCollegeStudent => 'Junior College Student';

	/// en: 'Technical College Student'
	String get technicalCollegeStudent => 'Technical College Student';

	/// en: 'Distribution'
	String get distribution => 'Distribution';

	/// en: 'Food Industry'
	String get foodIndustry => 'Food Industry';

	/// en: 'Pharmaceutical'
	String get pharmaceutical => 'Pharmaceutical';

	/// en: 'Medical'
	String get medical => 'Medical';

	/// en: 'Welfare/Care'
	String get welfareCare => 'Welfare/Care';

	/// en: 'Doctor'
	String get doctor => 'Doctor';

	/// en: 'Nurse'
	String get nurse => 'Nurse';

	/// en: 'Pharmacist'
	String get pharmacist => 'Pharmacist';

	/// en: 'Telecommunications'
	String get telecommunication => 'Telecommunications';

	/// en: 'Web'
	String get web => 'Web';

	/// en: 'IT'
	String get it => 'IT';

	/// en: 'Engineer'
	String get engineer => 'Engineer';

	/// en: 'Creator'
	String get creator => 'Creator';

	/// en: 'Designer'
	String get designer => 'Designer';

	/// en: 'Architecture/Interior'
	String get architectureInterior => 'Architecture/Interior';

	/// en: 'Finance'
	String get finance => 'Finance';

	/// en: 'Insurance'
	String get insurance => 'Insurance';

	/// en: 'Consulting'
	String get consulting => 'Consulting';

	/// en: 'Media'
	String get media => 'Media';

	/// en: 'Advertising'
	String get advertising => 'Advertising';

	/// en: 'Publishing'
	String get publishing => 'Publishing';

	/// en: 'Education'
	String get education => 'Education';

	/// en: 'Retail'
	String get retail => 'Retail';

	/// en: 'Transportation'
	String get transportation => 'Transportation';

	/// en: 'Entertainment'
	String get entertainment => 'Entertainment';

	/// en: 'Travel'
	String get travel => 'Travel';

	/// en: 'Real Estate'
	String get realEstate => 'Real Estate';

	/// en: 'Trading Company'
	String get tradingCompany => 'Trading Company';

	/// en: 'Manufacturer'
	String get manufacturer => 'Manufacturer';

	/// en: 'Researcher'
	String get researcher => 'Researcher';

	/// en: 'Major Company'
	String get majorCompany => 'Major Company';

	/// en: 'Foreign Company'
	String get foreignCompany => 'Foreign Company';

	/// en: 'Listed Company'
	String get listedCompany => 'Listed Company';

	/// en: 'Executive'
	String get executive => 'Executive';

	/// en: 'Legal'
	String get legal => 'Legal';

	/// en: 'Lawyer'
	String get lawyer => 'Lawyer';

	/// en: 'CPA'
	String get certifiedPublicAccountant => 'CPA';

	/// en: 'Tax Accountant'
	String get taxAccountant => 'Tax Accountant';

	/// en: 'Freelance'
	String get freelance => 'Freelance';

	/// en: 'Civil Servant'
	String get publicServant => 'Civil Servant';

	/// en: 'Firefighter'
	String get firefighter => 'Firefighter';

	/// en: 'Police Officer'
	String get police => 'Police Officer';

	/// en: 'Self-Defense Force'
	String get selfDefenseForce => 'Self-Defense Force';

	/// en: 'Athlete'
	String get athlete => 'Athlete';

	/// en: 'Pilot'
	String get pilot => 'Pilot';

	/// en: 'Investor'
	String get investor => 'Investor';

	/// en: 'Cabin Attendant'
	String get cabinAttendant => 'Cabin Attendant';

	/// en: 'Apparel'
	String get apparel => 'Apparel';

	/// en: 'Beauty'
	String get beauty => 'Beauty';

	/// en: 'Bridal'
	String get bridal => 'Bridal';

	/// en: 'Chef/Nutritionist'
	String get chefNutritionist => 'Chef/Nutritionist';

	/// en: 'Childcare Worker'
	String get childcareWorker => 'Childcare Worker';

	/// en: 'Service Industry'
	String get service => 'Service Industry';

	/// en: 'Secretary'
	String get secretary => 'Secretary';

	/// en: 'Announcer'
	String get announcer => 'Announcer';

	/// en: 'Receptionist'
	String get receptionist => 'Receptionist';

	/// en: 'Entertainer/Model'
	String get entertainerModel => 'Entertainer/Model';

	/// en: 'Influencer'
	String get influencer => 'Influencer';

	/// en: 'YouTuber'
	String get youtuber => 'YouTuber';

	/// en: 'Pro Gamer'
	String get proGamer => 'Pro Gamer';

	/// en: 'Company Employee'
	String get companyEmployee => 'Company Employee';

	/// en: 'Office Work'
	String get officeWork => 'Office Work';

	/// en: 'Self-Employed'
	String get selfEmployed => 'Self-Employed';

	/// en: 'Other'
	String get other => 'Other';
}

// Path: kEnum.smoking
class TranslationsKEnumSmokingEn {
	TranslationsKEnumSmokingEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Don't smoke'
	String get no => 'Don\'t smoke';

	/// en: 'Smoke occasionally'
	String get sometimes => 'Smoke occasionally';

	/// en: 'Smoke'
	String get yes => 'Smoke';
}

// Path: kEnum.sortType
class TranslationsKEnumSortTypeEn {
	TranslationsKEnumSortTypeEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Login Order'
	String get login => 'Login Order';

	/// en: 'Compatibility Order'
	String get compatibility => 'Compatibility Order';
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

// Path: userRegistrationPage.address.items
class TranslationsUserRegistrationPageAddressItemsEn {
	TranslationsUserRegistrationPageAddressItemsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Select prefecture'
	String get placeholder => 'Select prefecture';
}

// Path: userRegistrationPage.name.items
class TranslationsUserRegistrationPageNameItemsEn {
	TranslationsUserRegistrationPageNameItemsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Enter your name'
	String get placeholder => 'Enter your name';
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

// Path: profilePage.section.basicInformation
class TranslationsProfilePageSectionBasicInformationEn {
	TranslationsProfilePageSectionBasicInformationEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Basic Information'
	String get title => 'Basic Information';

	late final TranslationsProfilePageSectionBasicInformationItemsEn items = TranslationsProfilePageSectionBasicInformationItemsEn._(_root);
}

// Path: profilePage.edit.sunnyDayHobbies
class TranslationsProfilePageEditSunnyDayHobbiesEn {
	TranslationsProfilePageEditSunnyDayHobbiesEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Sunny Day Top 1'
	String get top1 => 'Sunny Day Top 1';

	/// en: 'Sunny Day Top 2'
	String get top2 => 'Sunny Day Top 2';

	/// en: 'Sunny Day Top 3'
	String get top3 => 'Sunny Day Top 3';
}

// Path: profilePage.edit.rainyDayHobbies
class TranslationsProfilePageEditRainyDayHobbiesEn {
	TranslationsProfilePageEditRainyDayHobbiesEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Rainy Day Top 1'
	String get top1 => 'Rainy Day Top 1';

	/// en: 'Rainy Day Top 2'
	String get top2 => 'Rainy Day Top 2';

	/// en: 'Rainy Day Top 3'
	String get top3 => 'Rainy Day Top 3';
}

// Path: profilePage.placeholder.subPhoto
class TranslationsProfilePagePlaceholderSubPhotoEn {
	TranslationsProfilePagePlaceholderSubPhotoEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsProfilePagePlaceholderSubPhotoLabelsEn labels = TranslationsProfilePagePlaceholderSubPhotoLabelsEn._(_root);
}

// Path: profilePage.placeholder.sunnyDayHobbies
class TranslationsProfilePagePlaceholderSunnyDayHobbiesEn {
	TranslationsProfilePagePlaceholderSunnyDayHobbiesEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Enter sunny day top 1'
	String get top1 => 'Enter sunny day top 1';

	/// en: 'Enter sunny day top 2'
	String get top2 => 'Enter sunny day top 2';

	/// en: 'Enter sunny day top 3'
	String get top3 => 'Enter sunny day top 3';
}

// Path: profilePage.placeholder.rainyDayHobbies
class TranslationsProfilePagePlaceholderRainyDayHobbiesEn {
	TranslationsProfilePagePlaceholderRainyDayHobbiesEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Enter rainy day top 1'
	String get top1 => 'Enter rainy day top 1';

	/// en: 'Enter rainy day top 2'
	String get top2 => 'Enter rainy day top 2';

	/// en: 'Enter rainy day top 3'
	String get top3 => 'Enter rainy day top 3';
}

// Path: settingPage.section.accountSetting
class TranslationsSettingPageSectionAccountSettingEn {
	TranslationsSettingPageSectionAccountSettingEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Account Settings'
	String get title => 'Account Settings';

	/// en: 'Identity Verification'
	String get identityVerification => 'Identity Verification';

	/// en: 'Push Notifications'
	String get pushNotification => 'Push Notifications';

	/// en: 'Logout'
	String get logout => 'Logout';

	/// en: 'Delete Account'
	String get withdrawal => 'Delete Account';
}

// Path: settingPage.section.history
class TranslationsSettingPageSectionHistoryEn {
	TranslationsSettingPageSectionHistoryEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'History'
	String get title => 'History';

	/// en: 'Matches'
	String get matching => 'Matches';

	/// en: 'Hidden'
	String get hidden => 'Hidden';
}

// Path: settingPage.section.help
class TranslationsSettingPageSectionHelpEn {
	TranslationsSettingPageSectionHelpEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Help'
	String get title => 'Help';

	/// en: 'FAQ'
	String get faq => 'FAQ';

	/// en: 'Contact Us'
	String get inquiry => 'Contact Us';
}

// Path: settingPage.section.aboutReimi
class TranslationsSettingPageSectionAboutReimiEn {
	TranslationsSettingPageSectionAboutReimiEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'About Reimi'
	String get title => 'About Reimi';

	/// en: 'Terms of Service'
	String get tos => 'Terms of Service';

	/// en: 'Privacy Policy'
	String get pp => 'Privacy Policy';

	/// en: 'App Information'
	String get applicationInformation => 'App Information';
}

// Path: bottomSheet.refineSearchUser.section
class TranslationsBottomSheetRefineSearchUserSectionEn {
	TranslationsBottomSheetRefineSearchUserSectionEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Age'
	String get age => 'Age';

	/// en: 'Address'
	String get address => 'Address';

	/// en: 'Gender'
	String get gender => 'Gender';

	/// en: 'Weather Personality'
	String get weatherPersonality => 'Weather Personality';
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

// Path: profilePage.section.basicInformation.items
class TranslationsProfilePageSectionBasicInformationItemsEn {
	TranslationsProfilePageSectionBasicInformationItemsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Name'
	String get name => 'Name';

	/// en: 'Gender'
	String get gender => 'Gender';

	/// en: 'Date of Birth'
	String get birthDate => 'Date of Birth';

	/// en: 'Location'
	String get address => 'Location';

	/// en: 'Hometown'
	String get hometown => 'Hometown';

	/// en: 'Blood Type'
	String get bloodType => 'Blood Type';

	/// en: 'Height'
	String get height => 'Height';

	/// en: 'Body Type'
	String get bodyShape => 'Body Type';

	/// en: 'Education'
	String get education => 'Education';

	/// en: 'Occupation'
	String get occupation => 'Occupation';

	/// en: 'Annual Income'
	String get annualIncome => 'Annual Income';

	/// en: 'Smoking'
	String get smoking => 'Smoking';

	/// en: 'Alcohol'
	String get alcohol => 'Alcohol';

	/// en: 'Days Off'
	String get holiday => 'Days Off';

	/// en: 'Communication Style'
	String get communicationStyle => 'Communication Style';
}

// Path: profilePage.placeholder.subPhoto.labels
class TranslationsProfilePagePlaceholderSubPhotoLabelsEn {
	TranslationsProfilePagePlaceholderSubPhotoLabelsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Smile'
	String get smile => 'Smile';

	/// en: 'Full Body'
	String get fullLength => 'Full Body';

	/// en: 'Hobby'
	String get hobby => 'Hobby';

	/// en: 'Food'
	String get food => 'Food';

	/// en: 'Travel'
	String get travel => 'Travel';

	/// en: 'Day Off'
	String get holiday => 'Day Off';
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
			'errorPage.subMessage' => 'Please check your internet connection\nand try again.',
			'userRegistrationPage.gender.question' => 'What is your gender?',
			'userRegistrationPage.birthDate.question' => 'What is your date of birth?',
			'userRegistrationPage.birthDate.items.year' => 'Year',
			'userRegistrationPage.birthDate.items.month' => 'Month',
			'userRegistrationPage.birthDate.items.day' => 'Day',
			'userRegistrationPage.address.question' => 'Where do you live?',
			'userRegistrationPage.address.items.placeholder' => 'Select prefecture',
			'userRegistrationPage.name.question' => 'What is your name?',
			'userRegistrationPage.name.items.placeholder' => 'Enter your name',
			'userRegistrationPage.introduction.question' => 'Tell us about yourself',
			'userRegistrationPage.introduction.items.placeholder' => 'Enter your introduction (20 characters minimum)',
			'userRegistrationPage.introduction.items.charCountLabelText' => ({required Object textLength}) => '${textLength} / 20 characters',
			'userRegistrationPage.introduction.items.remainingCharsText' => ({required Object remainingTextLength}) => '${remainingTextLength} more characters needed',
			'userRegistrationPage.mainPhoto.question' => 'Select your main photo',
			'userRegistrationPage.mainPhoto.items.photoSelectInstructionText' => 'Click to select photo',
			'userRegistrationPage.mainPhoto.items.photoRecommendationHint' => 'A smiling face photo is recommended',
			'likePage.segment.fromUser' => 'FromUser',
			'likePage.segment.toUser' => 'ToUser',
			'profileDetailPage.title' => 'Profile Details',
			'profilePage.title' => 'Edit Profile',
			'profilePage.section.mainPhoto' => 'Main Photo',
			'profilePage.section.subPhoto' => 'Sub Photos',
			'profilePage.section.weatherPersonality' => 'Weather Personality',
			'profilePage.section.introduction' => 'Introduction',
			'profilePage.section.sunnyDayHobbies' => 'Top 3 Things to Do on Sunny Days',
			'profilePage.section.rainyDayHobbies' => 'Top 3 Things to Do on Rainy Days',
			'profilePage.section.basicInformation.title' => 'Basic Information',
			'profilePage.section.basicInformation.items.name' => 'Name',
			'profilePage.section.basicInformation.items.gender' => 'Gender',
			'profilePage.section.basicInformation.items.birthDate' => 'Date of Birth',
			'profilePage.section.basicInformation.items.address' => 'Location',
			'profilePage.section.basicInformation.items.hometown' => 'Hometown',
			'profilePage.section.basicInformation.items.bloodType' => 'Blood Type',
			'profilePage.section.basicInformation.items.height' => 'Height',
			'profilePage.section.basicInformation.items.bodyShape' => 'Body Type',
			'profilePage.section.basicInformation.items.education' => 'Education',
			'profilePage.section.basicInformation.items.occupation' => 'Occupation',
			'profilePage.section.basicInformation.items.annualIncome' => 'Annual Income',
			'profilePage.section.basicInformation.items.smoking' => 'Smoking',
			'profilePage.section.basicInformation.items.alcohol' => 'Alcohol',
			'profilePage.section.basicInformation.items.holiday' => 'Days Off',
			'profilePage.section.basicInformation.items.communicationStyle' => 'Communication Style',
			'profilePage.edit.title' => ({required Object item}) => 'Edit ${item}',
			'profilePage.edit.sunnyDayHobbies.top1' => 'Sunny Day Top 1',
			'profilePage.edit.sunnyDayHobbies.top2' => 'Sunny Day Top 2',
			'profilePage.edit.sunnyDayHobbies.top3' => 'Sunny Day Top 3',
			'profilePage.edit.rainyDayHobbies.top1' => 'Rainy Day Top 1',
			'profilePage.edit.rainyDayHobbies.top2' => 'Rainy Day Top 2',
			'profilePage.edit.rainyDayHobbies.top3' => 'Rainy Day Top 3',
			'profilePage.placeholder.subPhoto.labels.smile' => 'Smile',
			'profilePage.placeholder.subPhoto.labels.fullLength' => 'Full Body',
			'profilePage.placeholder.subPhoto.labels.hobby' => 'Hobby',
			'profilePage.placeholder.subPhoto.labels.food' => 'Food',
			'profilePage.placeholder.subPhoto.labels.travel' => 'Travel',
			'profilePage.placeholder.subPhoto.labels.holiday' => 'Day Off',
			'profilePage.placeholder.sunnyDayHobbies.top1' => 'Enter sunny day top 1',
			'profilePage.placeholder.sunnyDayHobbies.top2' => 'Enter sunny day top 2',
			'profilePage.placeholder.sunnyDayHobbies.top3' => 'Enter sunny day top 3',
			'profilePage.placeholder.rainyDayHobbies.top1' => 'Enter rainy day top 1',
			'profilePage.placeholder.rainyDayHobbies.top2' => 'Enter rainy day top 2',
			'profilePage.placeholder.rainyDayHobbies.top3' => 'Enter rainy day top 3',
			'profilePage.placeholder.basicInformation' => 'Not set',
			'settingPage.title' => 'Settings',
			'settingPage.section.accountSetting.title' => 'Account Settings',
			'settingPage.section.accountSetting.identityVerification' => 'Identity Verification',
			'settingPage.section.accountSetting.pushNotification' => 'Push Notifications',
			'settingPage.section.accountSetting.logout' => 'Logout',
			'settingPage.section.accountSetting.withdrawal' => 'Delete Account',
			'settingPage.section.history.title' => 'History',
			'settingPage.section.history.matching' => 'Matches',
			'settingPage.section.history.hidden' => 'Hidden',
			'settingPage.section.help.title' => 'Help',
			'settingPage.section.help.faq' => 'FAQ',
			'settingPage.section.help.inquiry' => 'Contact Us',
			'settingPage.section.aboutReimi.title' => 'About Reimi',
			'settingPage.section.aboutReimi.tos' => 'Terms of Service',
			'settingPage.section.aboutReimi.pp' => 'Privacy Policy',
			'settingPage.section.aboutReimi.applicationInformation' => 'App Information',
			'navigationBar.home.title' => 'Meet',
			'navigationBar.like.title' => 'Likes',
			'navigationBar.chat.title' => 'Chat',
			'navigationBar.weatherReport.title' => 'Report',
			'navigationBar.account.title' => 'Account',
			'dialog.userAddress.title' => 'Confirm Address',
			'dialog.userAddress.contentText1' => 'Selected address: ',
			'dialog.userAddress.contentText2' => 'Proceed with this selection?',
			'dialog.userBirthDate.title' => 'Confirm Date of Birth',
			'dialog.userBirthDate.contentText1' => 'Selected date of birth: ',
			'dialog.userBirthDate.contentText2' => 'Proceed with this selection?',
			'dialog.userGender.title' => 'Confirm Gender',
			'dialog.userGender.contentText1' => 'Selected gender: ',
			'dialog.userGender.contentText2' => 'Proceed with this selection?',
			'dialog.userIntroduction.title' => 'Confirm Introduction',
			'dialog.userIntroduction.contentText1' => 'Your introduction: ',
			'dialog.userIntroduction.contentText2' => 'Proceed with this entry?',
			'dialog.userMainPhoto.title' => 'Confirm Photo',
			'dialog.userMainPhoto.contentText1' => 'Selected photo: ',
			'dialog.userMainPhoto.contentText2' => 'Complete registration with this photo?',
			'dialog.userName.title' => 'Confirm Name',
			'dialog.userName.contentText1' => 'Entered name: ',
			'dialog.userName.contentText2' => 'Proceed with this entry?',
			'dialog.logout.title' => 'Confirm Logout',
			'dialog.logout.contentText' => 'Are you sure you want to logout?',
			'dialog.deletePhoto.title' => 'Confirm Photo Deletion',
			'dialog.deletePhoto.contentText' => 'Do you really want to delete this photo?',
			'dialog.saveChanges.title' => 'Confirm Save Changes',
			'dialog.saveChanges.contentText' => 'Do you want to save your changes?',
			'bottomSheet.sortUser.title' => 'Sort',
			'bottomSheet.refineSearchUser.title' => 'Refine Search',
			'bottomSheet.refineSearchUser.section.age' => 'Age',
			'bottomSheet.refineSearchUser.section.address' => 'Address',
			'bottomSheet.refineSearchUser.section.gender' => 'Gender',
			'bottomSheet.refineSearchUser.section.weatherPersonality' => 'Weather Personality',
			'button.next' => 'Next',
			'button.confirmation' => 'Confirm',
			'button.cancel' => 'Cancel',
			'button.select' => 'Select',
			'button.logout' => 'Logout',
			'button.retry' => 'Reload',
			'button.tryLater' => 'Try Later',
			'button.save' => 'Save',
			'button.delete' => 'Delete',
			'button.apply' => 'Apply',
			'button.clear' => 'Clear',
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
			'kEnum.alcohol.no' => 'Don\'t drink',
			'kEnum.alcohol.sometimes' => 'Drink occasionally',
			'kEnum.alcohol.yes' => 'Drink',
			'kEnum.annualIncome.under2M' => 'Under ¥2M',
			'kEnum.annualIncome.between2And4M' => '¥2M - ¥4M',
			'kEnum.annualIncome.between4And6M' => '¥4M - ¥6M',
			'kEnum.annualIncome.between6And8M' => '¥6M - ¥8M',
			'kEnum.annualIncome.between8And10M' => '¥8M - ¥10M',
			'kEnum.annualIncome.between10And15M' => '¥10M - ¥15M',
			'kEnum.annualIncome.between15And20M' => '¥15M - ¥20M',
			'kEnum.annualIncome.between20And30M' => '¥20M - ¥30M',
			'kEnum.annualIncome.over30M' => 'Over ¥30M',
			'kEnum.bloodType.a' => 'Type A',
			'kEnum.bloodType.b' => 'Type B',
			'kEnum.bloodType.o' => 'Type O',
			'kEnum.bloodType.ab' => 'Type AB',
			'kEnum.bloodType.unknown' => 'Unknown',
			'kEnum.bodyShape.slim' => 'Slim',
			'kEnum.bodyShape.slender' => 'Slender',
			'kEnum.bodyShape.normal' => 'Average',
			'kEnum.bodyShape.muscular' => 'Muscular',
			'kEnum.bodyShape.chubby' => 'Slightly Chubby',
			'kEnum.bodyShape.overweight' => 'Heavy',
			'kEnum.communicationStyle.call' => 'Phone Calls',
			'kEnum.communicationStyle.message' => 'Messaging',
			'kEnum.communicationStyle.inPerson' => 'In Person',
			'kEnum.education.highSchoolGraduate' => 'High School',
			'kEnum.education.juniorCollegeGraduate' => 'Junior College',
			'kEnum.education.vocationalSchoolGraduate' => 'Vocational School',
			'kEnum.education.technicalCollegeGraduate' => 'Technical College',
			'kEnum.education.universityGraduate' => 'University',
			'kEnum.education.graduateSchoolGraduate' => 'Graduate School',
			'kEnum.education.other' => 'Other',
			'kEnum.gender.man' => 'Male',
			'kEnum.gender.woman' => 'Female',
			'kEnum.gender.other' => 'Other',
			'kEnum.height.under130cm' => 'Under 130cm',
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
			'kEnum.height.over200cm' => 'Over 200cm',
			'kEnum.holiday.weekend' => 'Weekends',
			'kEnum.holiday.weekday' => 'Weekdays',
			'kEnum.holiday.irregular' => 'Irregular',
			'kEnum.occupation.universityStudent' => 'University Student',
			'kEnum.occupation.graduateStudent' => 'Graduate Student',
			'kEnum.occupation.vocationalStudent' => 'Vocational Student',
			'kEnum.occupation.juniorCollegeStudent' => 'Junior College Student',
			'kEnum.occupation.technicalCollegeStudent' => 'Technical College Student',
			'kEnum.occupation.distribution' => 'Distribution',
			'kEnum.occupation.foodIndustry' => 'Food Industry',
			'kEnum.occupation.pharmaceutical' => 'Pharmaceutical',
			'kEnum.occupation.medical' => 'Medical',
			'kEnum.occupation.welfareCare' => 'Welfare/Care',
			'kEnum.occupation.doctor' => 'Doctor',
			'kEnum.occupation.nurse' => 'Nurse',
			'kEnum.occupation.pharmacist' => 'Pharmacist',
			'kEnum.occupation.telecommunication' => 'Telecommunications',
			'kEnum.occupation.web' => 'Web',
			'kEnum.occupation.it' => 'IT',
			'kEnum.occupation.engineer' => 'Engineer',
			'kEnum.occupation.creator' => 'Creator',
			'kEnum.occupation.designer' => 'Designer',
			'kEnum.occupation.architectureInterior' => 'Architecture/Interior',
			'kEnum.occupation.finance' => 'Finance',
			'kEnum.occupation.insurance' => 'Insurance',
			'kEnum.occupation.consulting' => 'Consulting',
			'kEnum.occupation.media' => 'Media',
			'kEnum.occupation.advertising' => 'Advertising',
			'kEnum.occupation.publishing' => 'Publishing',
			'kEnum.occupation.education' => 'Education',
			'kEnum.occupation.retail' => 'Retail',
			'kEnum.occupation.transportation' => 'Transportation',
			'kEnum.occupation.entertainment' => 'Entertainment',
			'kEnum.occupation.travel' => 'Travel',
			'kEnum.occupation.realEstate' => 'Real Estate',
			'kEnum.occupation.tradingCompany' => 'Trading Company',
			'kEnum.occupation.manufacturer' => 'Manufacturer',
			'kEnum.occupation.researcher' => 'Researcher',
			'kEnum.occupation.majorCompany' => 'Major Company',
			'kEnum.occupation.foreignCompany' => 'Foreign Company',
			'kEnum.occupation.listedCompany' => 'Listed Company',
			'kEnum.occupation.executive' => 'Executive',
			'kEnum.occupation.legal' => 'Legal',
			'kEnum.occupation.lawyer' => 'Lawyer',
			'kEnum.occupation.certifiedPublicAccountant' => 'CPA',
			'kEnum.occupation.taxAccountant' => 'Tax Accountant',
			'kEnum.occupation.freelance' => 'Freelance',
			'kEnum.occupation.publicServant' => 'Civil Servant',
			'kEnum.occupation.firefighter' => 'Firefighter',
			'kEnum.occupation.police' => 'Police Officer',
			'kEnum.occupation.selfDefenseForce' => 'Self-Defense Force',
			'kEnum.occupation.athlete' => 'Athlete',
			'kEnum.occupation.pilot' => 'Pilot',
			'kEnum.occupation.investor' => 'Investor',
			'kEnum.occupation.cabinAttendant' => 'Cabin Attendant',
			'kEnum.occupation.apparel' => 'Apparel',
			'kEnum.occupation.beauty' => 'Beauty',
			'kEnum.occupation.bridal' => 'Bridal',
			'kEnum.occupation.chefNutritionist' => 'Chef/Nutritionist',
			'kEnum.occupation.childcareWorker' => 'Childcare Worker',
			'kEnum.occupation.service' => 'Service Industry',
			'kEnum.occupation.secretary' => 'Secretary',
			'kEnum.occupation.announcer' => 'Announcer',
			'kEnum.occupation.receptionist' => 'Receptionist',
			'kEnum.occupation.entertainerModel' => 'Entertainer/Model',
			'kEnum.occupation.influencer' => 'Influencer',
			'kEnum.occupation.youtuber' => 'YouTuber',
			'kEnum.occupation.proGamer' => 'Pro Gamer',
			'kEnum.occupation.companyEmployee' => 'Company Employee',
			'kEnum.occupation.officeWork' => 'Office Work',
			'kEnum.occupation.selfEmployed' => 'Self-Employed',
			'kEnum.occupation.other' => 'Other',
			'kEnum.smoking.no' => 'Don\'t smoke',
			'kEnum.smoking.sometimes' => 'Smoke occasionally',
			'kEnum.smoking.yes' => 'Smoke',
			'kEnum.sortType.login' => 'Login Order',
			'kEnum.sortType.compatibility' => 'Compatibility Order',
			_ => null,
		};
	}
}
