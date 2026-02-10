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
	Map<String, String> get locales => {
		'en': 'English',
		'ja': 'Japanese',
	};
	late final TranslationsSplashPageEn splashPage = TranslationsSplashPageEn._(_root);
	late final TranslationsSignUpPageEn signUpPage = TranslationsSignUpPageEn._(_root);
	late final TranslationsSignInPageEn signInPage = TranslationsSignInPageEn._(_root);
	late final TranslationsErrorPageEn errorPage = TranslationsErrorPageEn._(_root);
	late final TranslationsUserRegistrationPageEn userRegistrationPage = TranslationsUserRegistrationPageEn._(_root);
	late final TranslationsHomePageEn homePage = TranslationsHomePageEn._(_root);
	late final TranslationsLikePageEn likePage = TranslationsLikePageEn._(_root);
	late final TranslationsMatchingCompletedPageEn matchingCompletedPage = TranslationsMatchingCompletedPageEn._(_root);
	late final TranslationsAIMatchingPageEn aIMatchingPage = TranslationsAIMatchingPageEn._(_root);
	late final TranslationsChatPageEn chatPage = TranslationsChatPageEn._(_root);
	late final TranslationsChatDetailPageEn chatDetailPage = TranslationsChatDetailPageEn._(_root);
	late final TranslationsWeatherReportPageEn weatherReportPage = TranslationsWeatherReportPageEn._(_root);
	late final TranslationsMyWeatherReportPageEn myWeatherReportPage = TranslationsMyWeatherReportPageEn._(_root);
	late final TranslationsWeatherReportPostPageEn weatherReportPostPage = TranslationsWeatherReportPostPageEn._(_root);
	late final TranslationsWeatherSelectPageEn weatherSelectPage = TranslationsWeatherSelectPageEn._(_root);
	late final TranslationsFeelingSelectPageEn feelingSelectPage = TranslationsFeelingSelectPageEn._(_root);
	late final TranslationsForecastSelectPageEn forecastSelectPage = TranslationsForecastSelectPageEn._(_root);
	late final TranslationsWeatherReportDetailPageEn weatherReportDetailPage = TranslationsWeatherReportDetailPageEn._(_root);
	late final TranslationsAccountPageEn accountPage = TranslationsAccountPageEn._(_root);
	late final TranslationsProfilePageEn profilePage = TranslationsProfilePageEn._(_root);
	late final TranslationsProfileDetailPageEn profileDetailPage = TranslationsProfileDetailPageEn._(_root);
	late final TranslationsWeatherPersonalityConceptPageEn weatherPersonalityConceptPage = TranslationsWeatherPersonalityConceptPageEn._(_root);
	late final TranslationsWeatherPersonalityDetailPageEn weatherPersonalityDetailPage = TranslationsWeatherPersonalityDetailPageEn._(_root);
	late final TranslationsWeatherPersonalityTestJudgingPageEn weatherPersonalityTestJudgingPage = TranslationsWeatherPersonalityTestJudgingPageEn._(_root);
	late final TranslationsWeatherPersonalityTestPageEn weatherPersonalityTestPage = TranslationsWeatherPersonalityTestPageEn._(_root);
	late final TranslationsWeatherPersonalityTestResultPageEn weatherPersonalityTestResultPage = TranslationsWeatherPersonalityTestResultPageEn._(_root);
	late final TranslationsSettingPageEn settingPage = TranslationsSettingPageEn._(_root);
	late final TranslationsNavigationBarEn navigationBar = TranslationsNavigationBarEn._(_root);
	late final TranslationsDialogEn dialog = TranslationsDialogEn._(_root);
	late final TranslationsModalSheetEn modalSheet = TranslationsModalSheetEn._(_root);
	late final TranslationsButtonEn button = TranslationsButtonEn._(_root);
	late final TranslationsSegmentedSwitchEn segmentedSwitch = TranslationsSegmentedSwitchEn._(_root);
	late final TranslationsSnackBarEn snackBar = TranslationsSnackBarEn._(_root);
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

// Path: homePage
class TranslationsHomePageEn {
	TranslationsHomePageEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'There are currently no users to view.'
	String get isEmptyCase => 'There are currently no users to view.';
}

// Path: likePage
class TranslationsLikePageEn {
	TranslationsLikePageEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Let's find new encounters!'
	String get isEmptyCase => 'Let\'s find new encounters!';
}

// Path: matchingCompletedPage
class TranslationsMatchingCompletedPageEn {
	TranslationsMatchingCompletedPageEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Matching completed!'
	String get title => 'Matching completed!';

	/// en: 'Congratulations! You've been matched with $name.'
	String subTitle({required Object name}) => 'Congratulations! \nYou\'ve been matched with ${name}.';

	/// en: 'Matching information could not be obtained.'
	String get nullCase => 'Matching information could not be obtained.';

	/// en: 'Send us a message and start a conversation!'
	String get message => 'Send us a message and start a conversation!';
}

// Path: aIMatchingPage
class TranslationsAIMatchingPageEn {
	TranslationsAIMatchingPageEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'We've found your perfect match!'
	String get title => 'We\'ve found your perfect match!';

	/// en: 'Special suggestions from AI taking today's weather into consideration'
	String get subTitle => 'Special suggestions from AI taking today\'s weather into consideration';

	/// en: 'Could not obtain user information to suggest.'
	String get nullCase => 'Could not obtain user information to suggest.';

	late final TranslationsAIMatchingPageSectionEn section = TranslationsAIMatchingPageSectionEn._(_root);
}

// Path: chatPage
class TranslationsChatPageEn {
	TranslationsChatPageEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Let's find new encounters!'
	String get isEmptyCase => 'Let\'s find new encounters!';

	late final TranslationsChatPageSectionTitleEn sectionTitle = TranslationsChatPageSectionTitleEn._(_root);
	late final TranslationsChatPageSubSectionTitleEn subSectionTitle = TranslationsChatPageSubSectionTitleEn._(_root);
}

// Path: chatDetailPage
class TranslationsChatDetailPageEn {
	TranslationsChatDetailPageEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Profile information could not be retrieved.'
	String get nullCase => 'Profile information could not be retrieved.';

	/// en: 'Enter message'
	String get placeHolder => 'Enter message';
}

// Path: weatherReportPage
class TranslationsWeatherReportPageEn {
	TranslationsWeatherReportPageEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Weather Report'
	String get title => 'Weather Report';

	/// en: 'There are currently no reports to display.'
	String get isEmptyCase => 'There are currently no reports to display.';
}

// Path: myWeatherReportPage
class TranslationsMyWeatherReportPageEn {
	TranslationsMyWeatherReportPageEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'My Weather Report'
	String get title => 'My Weather Report';

	/// en: 'You haven't posted yet. Post from the Weather Report Submission screen!'
	String get isEmptyCase => 'You haven\'t posted yet. \nPost from the Weather Report Submission screen!';

	late final TranslationsMyWeatherReportPageWeekdaysEn weekdays = TranslationsMyWeatherReportPageWeekdaysEn._(_root);
}

// Path: weatherReportPostPage
class TranslationsWeatherReportPostPageEn {
	TranslationsWeatherReportPostPageEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Send Weather Report'
	String get title => 'Send Weather Report';

	late final TranslationsWeatherReportPostPagePlaceHolderEn placeHolder = TranslationsWeatherReportPostPagePlaceHolderEn._(_root);
	late final TranslationsWeatherReportPostPageLabelEn label = TranslationsWeatherReportPostPageLabelEn._(_root);
}

// Path: weatherSelectPage
class TranslationsWeatherSelectPageEn {
	TranslationsWeatherSelectPageEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Select Weather'
	String get title => 'Select Weather';

	/// en: 'What's the weather now?'
	String get sectionTitle => 'What\'s the weather now?';
}

// Path: feelingSelectPage
class TranslationsFeelingSelectPageEn {
	TranslationsFeelingSelectPageEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Select Feeling'
	String get title => 'Select Feeling';

	/// en: 'How does it feel now?'
	String get sectionTitle => 'How does it feel now?';
}

// Path: forecastSelectPage
class TranslationsForecastSelectPageEn {
	TranslationsForecastSelectPageEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Select Forecast'
	String get title => 'Select Forecast';

	/// en: 'What about in a few hours?'
	String get sectionTitle => 'What about in a few hours?';
}

// Path: weatherReportDetailPage
class TranslationsWeatherReportDetailPageEn {
	TranslationsWeatherReportDetailPageEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Post Details'
	String get title => 'Post Details';

	/// en: 'Report information could not be obtained.'
	String get nullCase => 'Report information could not be obtained.';

	late final TranslationsWeatherReportDetailPageLabelEn label = TranslationsWeatherReportDetailPageLabelEn._(_root);
}

// Path: accountPage
class TranslationsAccountPageEn {
	TranslationsAccountPageEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'User information could not be obtained.'
	String get nullCase => 'User information could not be obtained.';
}

// Path: profilePage
class TranslationsProfilePageEn {
	TranslationsProfilePageEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Edit Profile'
	String get title => 'Edit Profile';

	/// en: 'Profile information could not be retrieved.'
	String get nullCase => 'Profile information could not be retrieved.';

	late final TranslationsProfilePageSectionEn section = TranslationsProfilePageSectionEn._(_root);
	late final TranslationsProfilePageEditEn edit = TranslationsProfilePageEditEn._(_root);
	late final TranslationsProfilePagePlaceholderEn placeholder = TranslationsProfilePagePlaceholderEn._(_root);
}

// Path: profileDetailPage
class TranslationsProfileDetailPageEn {
	TranslationsProfileDetailPageEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Profile Details'
	String get title => 'Profile Details';

	/// en: 'Profile information could not be retrieved.'
	String get nullCase => 'Profile information could not be retrieved.';
}

// Path: weatherPersonalityConceptPage
class TranslationsWeatherPersonalityConceptPageEn {
	TranslationsWeatherPersonalityConceptPageEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Weather Personality Assessment'
	String get title => 'Weather Personality Assessment';

	late final TranslationsWeatherPersonalityConceptPageContentTextEn contentText = TranslationsWeatherPersonalityConceptPageContentTextEn._(_root);
}

// Path: weatherPersonalityDetailPage
class TranslationsWeatherPersonalityDetailPageEn {
	TranslationsWeatherPersonalityDetailPageEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Test Result'
	String get title => 'Test Result';

	/// en: 'Failed to get test results.'
	String get nullCase => 'Failed to get test results.';

	late final TranslationsWeatherPersonalityDetailPageSectionEn section = TranslationsWeatherPersonalityDetailPageSectionEn._(_root);
}

// Path: weatherPersonalityTestJudgingPage
class TranslationsWeatherPersonalityTestJudgingPageEn {
	TranslationsWeatherPersonalityTestJudgingPageEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Assessing'
	String get loading => 'Assessing';

	late final TranslationsWeatherPersonalityTestJudgingPageContentTextEn contentText = TranslationsWeatherPersonalityTestJudgingPageContentTextEn._(_root);
}

// Path: weatherPersonalityTestPage
class TranslationsWeatherPersonalityTestPageEn {
	TranslationsWeatherPersonalityTestPageEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsWeatherPersonalityTestPageQ1En q1 = TranslationsWeatherPersonalityTestPageQ1En._(_root);
	late final TranslationsWeatherPersonalityTestPageQ2En q2 = TranslationsWeatherPersonalityTestPageQ2En._(_root);
	late final TranslationsWeatherPersonalityTestPageQ3En q3 = TranslationsWeatherPersonalityTestPageQ3En._(_root);
	late final TranslationsWeatherPersonalityTestPageQ4En q4 = TranslationsWeatherPersonalityTestPageQ4En._(_root);
	late final TranslationsWeatherPersonalityTestPageQ5En q5 = TranslationsWeatherPersonalityTestPageQ5En._(_root);
	late final TranslationsWeatherPersonalityTestPageQ6En q6 = TranslationsWeatherPersonalityTestPageQ6En._(_root);
	late final TranslationsWeatherPersonalityTestPageQ7En q7 = TranslationsWeatherPersonalityTestPageQ7En._(_root);
	late final TranslationsWeatherPersonalityTestPageQ8En q8 = TranslationsWeatherPersonalityTestPageQ8En._(_root);
	late final TranslationsWeatherPersonalityTestPageQ9En q9 = TranslationsWeatherPersonalityTestPageQ9En._(_root);
	late final TranslationsWeatherPersonalityTestPageQ10En q10 = TranslationsWeatherPersonalityTestPageQ10En._(_root);
	late final TranslationsWeatherPersonalityTestPageQ11En q11 = TranslationsWeatherPersonalityTestPageQ11En._(_root);
	late final TranslationsWeatherPersonalityTestPageQ12En q12 = TranslationsWeatherPersonalityTestPageQ12En._(_root);
	late final TranslationsWeatherPersonalityTestPageQ13En q13 = TranslationsWeatherPersonalityTestPageQ13En._(_root);
	late final TranslationsWeatherPersonalityTestPageQ14En q14 = TranslationsWeatherPersonalityTestPageQ14En._(_root);
	late final TranslationsWeatherPersonalityTestPageQ15En q15 = TranslationsWeatherPersonalityTestPageQ15En._(_root);
	late final TranslationsWeatherPersonalityTestPageQ16En q16 = TranslationsWeatherPersonalityTestPageQ16En._(_root);
}

// Path: weatherPersonalityTestResultPage
class TranslationsWeatherPersonalityTestResultPageEn {
	TranslationsWeatherPersonalityTestResultPageEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Failed to get test results.'
	String get nullCase => 'Failed to get test results.';

	late final TranslationsWeatherPersonalityTestResultPageSectionEn section = TranslationsWeatherPersonalityTestResultPageSectionEn._(_root);
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
	late final TranslationsDialogWeatherReportCompleteEn weatherReportComplete = TranslationsDialogWeatherReportCompleteEn._(_root);
	late final TranslationsDialogDestructionChangesEn destructionChanges = TranslationsDialogDestructionChangesEn._(_root);
	late final TranslationsDialogInterruptTestEn interruptTest = TranslationsDialogInterruptTestEn._(_root);
	late final TranslationsDialogCompleteTestEn completeTest = TranslationsDialogCompleteTestEn._(_root);
	late final TranslationsDialogReTestEn reTest = TranslationsDialogReTestEn._(_root);
	late final TranslationsDialogLikeMessageEn likeMessage = TranslationsDialogLikeMessageEn._(_root);
}

// Path: modalSheet
class TranslationsModalSheetEn {
	TranslationsModalSheetEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsModalSheetSortUserEn sortUser = TranslationsModalSheetSortUserEn._(_root);
	late final TranslationsModalSheetRefineSearchUserEn refineSearchUser = TranslationsModalSheetRefineSearchUserEn._(_root);
	late final TranslationsModalSheetPickMediaEn pickMedia = TranslationsModalSheetPickMediaEn._(_root);
	late final TranslationsModalSheetCommentEn comment = TranslationsModalSheetCommentEn._(_root);
	late final TranslationsModalSheetRainbowLikeEn rainbowLike = TranslationsModalSheetRainbowLikeEn._(_root);
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

	/// en: 'Send'
	String get send => 'Send';

	/// en: 'Close'
	String get close => 'Close';

	/// en: 'Destruction'
	String get destruction => 'Destruction';

	/// en: 'Interrupt'
	String get interrupt => 'Interrupt';

	/// en: 'Start Test'
	String get startTest => 'Start Test';

	/// en: 'See Results'
	String get seeResults => 'See Results';

	/// en: 'Share Results'
	String get shareResults => 'Share Results';

	/// en: 'Return To Account Page'
	String get returnToAccountPage => 'Return To Account Page';

	/// en: 'Complete'
	String get completion => 'Complete';

	/// en: 'Weather Personality Test'
	String get weatherPersonalityTest => 'Weather Personality Test';

	/// en: 'Go To Chat Screen'
	String get goTochatPage => 'Go To Chat Screen';

	/// en: 'Rainbow Like!'
	String get rainbowLike => 'Rainbow Like!';

	/// en: 'Re-test'
	String get retest => 'Re-test';
}

// Path: segmentedSwitch
class TranslationsSegmentedSwitchEn {
	TranslationsSegmentedSwitchEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsSegmentedSwitchLikeEn like = TranslationsSegmentedSwitchLikeEn._(_root);
	late final TranslationsSegmentedSwitchChatEn chat = TranslationsSegmentedSwitchChatEn._(_root);
}

// Path: snackBar
class TranslationsSnackBarEn {
	TranslationsSnackBarEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsSnackBarProfileEn profile = TranslationsSnackBarProfileEn._(_root);
}

// Path: kEnum
class TranslationsKEnumEn {
	TranslationsKEnumEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsKEnumAddressEn address = TranslationsKEnumAddressEn._(_root);
	late final TranslationsKEnumAlcoholEn alcohol = TranslationsKEnumAlcoholEn._(_root);
	late final TranslationsKEnumAnnualIncomeEn annualIncome = TranslationsKEnumAnnualIncomeEn._(_root);
	late final TranslationsKEnumAnswerChoiceEn answerChoice = TranslationsKEnumAnswerChoiceEn._(_root);
	late final TranslationsKEnumBloodTypeEn bloodType = TranslationsKEnumBloodTypeEn._(_root);
	late final TranslationsKEnumBodyShapeEn bodyShape = TranslationsKEnumBodyShapeEn._(_root);
	late final TranslationsKEnumCommunicationStyleEn communicationStyle = TranslationsKEnumCommunicationStyleEn._(_root);
	late final TranslationsKEnumEducationEn education = TranslationsKEnumEducationEn._(_root);
	late final TranslationsKEnumFeelingTypeEn feelingType = TranslationsKEnumFeelingTypeEn._(_root);
	late final TranslationsKEnumForecastTypeEn forecastType = TranslationsKEnumForecastTypeEn._(_root);
	late final TranslationsKEnumGenderEn gender = TranslationsKEnumGenderEn._(_root);
	late final TranslationsKEnumHeightEn height = TranslationsKEnumHeightEn._(_root);
	late final TranslationsKEnumHolidayEn holiday = TranslationsKEnumHolidayEn._(_root);
	late final TranslationsKEnumOccupationEn occupation = TranslationsKEnumOccupationEn._(_root);
	late final TranslationsKEnumSmokingEn smoking = TranslationsKEnumSmokingEn._(_root);
	late final TranslationsKEnumSortTypeEn sortType = TranslationsKEnumSortTypeEn._(_root);
	late final TranslationsKEnumWeatherPersonalityAxisEn weatherPersonalityAxis = TranslationsKEnumWeatherPersonalityAxisEn._(_root);
	late final TranslationsKEnumWeatherPersonalityPolarityEn weatherPersonalityPolarity = TranslationsKEnumWeatherPersonalityPolarityEn._(_root);
	late final TranslationsKEnumWeatherTypeEn weatherType = TranslationsKEnumWeatherTypeEn._(_root);
	late final TranslationsKEnumWindDirectionEn windDirection = TranslationsKEnumWindDirectionEn._(_root);
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

// Path: aIMatchingPage.section
class TranslationsAIMatchingPageSectionEn {
	TranslationsAIMatchingPageSectionEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsAIMatchingPageSectionSuggestionReasonEn suggestionReason = TranslationsAIMatchingPageSectionSuggestionReasonEn._(_root);
	late final TranslationsAIMatchingPageSectionTodayWeatherCompatibilityPointEn todayWeatherCompatibilityPoint = TranslationsAIMatchingPageSectionTodayWeatherCompatibilityPointEn._(_root);
}

// Path: chatPage.sectionTitle
class TranslationsChatPageSectionTitleEn {
	TranslationsChatPageSectionTitleEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Matches'
	String get matching => 'Matches';

	/// en: 'Messages'
	String get messages => 'Messages';
}

// Path: chatPage.subSectionTitle
class TranslationsChatPageSubSectionTitleEn {
	TranslationsChatPageSubSectionTitleEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Send your first message!'
	String get matching => 'Send your first message!';
}

// Path: myWeatherReportPage.weekdays
class TranslationsMyWeatherReportPageWeekdaysEn {
	TranslationsMyWeatherReportPageWeekdaysEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Sun'
	String get sunday => 'Sun';

	/// en: 'Mon'
	String get monday => 'Mon';

	/// en: 'Tue'
	String get tuesday => 'Tue';

	/// en: 'Wed'
	String get wednesday => 'Wed';

	/// en: 'Thu'
	String get thursday => 'Thu';

	/// en: 'Fri'
	String get friday => 'Fri';

	/// en: 'Sat'
	String get saturday => 'Sat';
}

// Path: weatherReportPostPage.placeHolder
class TranslationsWeatherReportPostPagePlaceHolderEn {
	TranslationsWeatherReportPostPagePlaceHolderEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Add photo/video'
	String get media => 'Add photo/video';

	/// en: 'Enter comment'
	String get comment1 => 'Enter comment';

	/// en: 'If you select a photo or video from your album, please include the date and time it was taken in the comment section'
	String get comment2 => 'If you select a photo or video from your album, please include the date and time it was taken in the comment section';
}

// Path: weatherReportPostPage.label
class TranslationsWeatherReportPostPageLabelEn {
	TranslationsWeatherReportPostPageLabelEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Location'
	String get location => 'Location';

	/// en: 'Weather/Feeling/Forecast'
	String get weatherFeelingForecast => 'Weather/Feeling/Forecast';

	/// en: 'Observation'
	String get observation => 'Observation';
}

// Path: weatherReportDetailPage.label
class TranslationsWeatherReportDetailPageLabelEn {
	TranslationsWeatherReportDetailPageLabelEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Weather'
	String get weather => 'Weather';

	/// en: 'Feeling'
	String get feeling => 'Feeling';

	/// en: 'Sensory Forecast'
	String get forecast => 'Sensory Forecast';
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
	late final TranslationsProfilePagePlaceholderBasicInformationEn basicInformation = TranslationsProfilePagePlaceholderBasicInformationEn._(_root);
}

// Path: weatherPersonalityConceptPage.contentText
class TranslationsWeatherPersonalityConceptPageContentTextEn {
	TranslationsWeatherPersonalityConceptPageContentTextEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'About the Assessment'
	String get contentTitle => 'About the Assessment';

	/// en: 'If you were to be reborn as an animal, '
	String get contentText1 => 'If you were to be reborn as an animal,\n\n';

	/// en: 'based on your behavior and personality toward weather in your past life, '
	String get contentText2 => 'based on your behavior and personality\ntoward weather in your past life,\n';

	/// en: 'the gods will objectively judge you '
	String get contentText3 => 'the gods will objectively judge you\n\n';

	/// en: 'and classify you into one of 16 character types '
	String get contentText4 => 'and classify you into one of 16 character types\n\n';

	/// en: ''
	String get contentText5 => '';

	/// en: 'Answer 16 questions to discover your Weather Personality type'
	String get contentText6 => 'Answer 16 questions to discover\nyour Weather Personality type';
}

// Path: weatherPersonalityDetailPage.section
class TranslationsWeatherPersonalityDetailPageSectionEn {
	TranslationsWeatherPersonalityDetailPageSectionEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsWeatherPersonalityDetailPageSectionMainResultEn mainResult = TranslationsWeatherPersonalityDetailPageSectionMainResultEn._(_root);
	late final TranslationsWeatherPersonalityDetailPageSectionGodsRulingEn godsRuling = TranslationsWeatherPersonalityDetailPageSectionGodsRulingEn._(_root);
	late final TranslationsWeatherPersonalityDetailPageSectionBehaviorTendencyEn behaviorTendency = TranslationsWeatherPersonalityDetailPageSectionBehaviorTendencyEn._(_root);
	late final TranslationsWeatherPersonalityDetailPageSectionAxisFeatureEn axisFeature = TranslationsWeatherPersonalityDetailPageSectionAxisFeatureEn._(_root);
	late final TranslationsWeatherPersonalityDetailPageSectionAxisScoreEn axisScore = TranslationsWeatherPersonalityDetailPageSectionAxisScoreEn._(_root);
	late final TranslationsWeatherPersonalityDetailPageSectionCompatibleTypeEn compatibleType = TranslationsWeatherPersonalityDetailPageSectionCompatibleTypeEn._(_root);
	late final TranslationsWeatherPersonalityDetailPageSectionIncompatibleTypeEn incompatibleType = TranslationsWeatherPersonalityDetailPageSectionIncompatibleTypeEn._(_root);
	late final TranslationsWeatherPersonalityDetailPageSectionGodsMessageEn godsMessage = TranslationsWeatherPersonalityDetailPageSectionGodsMessageEn._(_root);
}

// Path: weatherPersonalityTestJudgingPage.contentText
class TranslationsWeatherPersonalityTestJudgingPageContentTextEn {
	TranslationsWeatherPersonalityTestJudgingPageContentTextEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Assessment Complete'
	String get contentTitle => 'Assessment Complete';

	/// en: 'The gods have finished reviewing all records of your past life's actions.'
	String get contentText1 => 'The gods have finished reviewing\nall records of your past life\'s actions.';
}

// Path: weatherPersonalityTestPage.q1
class TranslationsWeatherPersonalityTestPageQ1En {
	TranslationsWeatherPersonalityTestPageQ1En._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Q1'
	String get title => 'Q1';

	/// en: 'The gods observed how you spent nice weather days in your past life.'
	String get question => 'The gods observed how you spent nice weather days in your past life.';

	/// en: 'You often went outside and headed somewhere'
	String get answerA => 'You often went outside and headed somewhere';

	/// en: 'You mostly stayed indoors'
	String get answerB => 'You mostly stayed indoors';
}

// Path: weatherPersonalityTestPage.q2
class TranslationsWeatherPersonalityTestPageQ2En {
	TranslationsWeatherPersonalityTestPageQ2En._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Q2'
	String get title => 'Q2';

	/// en: 'The gods remember your choices on bad weather days.'
	String get question => 'The gods remember your choices on bad weather days.';

	/// en: 'You looked for reasons to go outside anyway'
	String get answerA => 'You looked for reasons to go outside anyway';

	/// en: 'You avoided going out and stayed indoors'
	String get answerB => 'You avoided going out and stayed indoors';
}

// Path: weatherPersonalityTestPage.q3
class TranslationsWeatherPersonalityTestPageQ3En {
	TranslationsWeatherPersonalityTestPageQ3En._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Q3'
	String get title => 'Q3';

	/// en: 'The gods observed how you spent days with unstable weather in your past life.'
	String get question => 'The gods observed how you spent days with unstable weather in your past life.';

	/// en: 'You continued outdoor activities while going back and forth between indoors and outdoors'
	String get answerA => 'You continued outdoor activities while going back and forth between indoors and outdoors';

	/// en: 'You minimized going out and stayed mostly indoors'
	String get answerB => 'You minimized going out and stayed mostly indoors';
}

// Path: weatherPersonalityTestPage.q4
class TranslationsWeatherPersonalityTestPageQ4En {
	TranslationsWeatherPersonalityTestPageQ4En._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Q4'
	String get title => 'Q4';

	/// en: 'The gods saw how you spent holidays with no particular plans in your past life.'
	String get question => 'The gods saw how you spent holidays with no particular plans in your past life.';

	/// en: 'You went outside for fresh air and a change of pace'
	String get answerA => 'You went outside for fresh air and a change of pace';

	/// en: 'You spent time quietly in your own space'
	String get answerB => 'You spent time quietly in your own space';
}

// Path: weatherPersonalityTestPage.q5
class TranslationsWeatherPersonalityTestPageQ5En {
	TranslationsWeatherPersonalityTestPageQ5En._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Q5'
	String get title => 'Q5';

	/// en: 'The gods watched you the day before going out.'
	String get question => 'The gods watched you the day before going out.';

	/// en: 'You checked the weather forecast and decided on your outfit and belongings'
	String get answerA => 'You checked the weather forecast and decided on your outfit and belongings';

	/// en: 'You decided to think about it on the day itself'
	String get answerB => 'You decided to think about it on the day itself';
}

// Path: weatherPersonalityTestPage.q6
class TranslationsWeatherPersonalityTestPageQ6En {
	TranslationsWeatherPersonalityTestPageQ6En._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Q6'
	String get title => 'Q6';

	/// en: 'The gods remember your actions on days when rain was uncertain.'
	String get question => 'The gods remember your actions on days when rain was uncertain.';

	/// en: 'You prepared assuming it would rain and acted to avoid getting wet'
	String get answerA => 'You prepared assuming it would rain and acted to avoid getting wet';

	/// en: 'You thought you'd figure it out if it rained'
	String get answerB => 'You thought you\'d figure it out if it rained';
}

// Path: weatherPersonalityTestPage.q7
class TranslationsWeatherPersonalityTestPageQ7En {
	TranslationsWeatherPersonalityTestPageQ7En._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Q7'
	String get title => 'Q7';

	/// en: 'The gods saw you when your plans were about to be disrupted by weather.'
	String get question => 'The gods saw you when your plans were about to be disrupted by weather.';

	/// en: 'You felt reassured by thinking of backup plans in advance'
	String get answerA => 'You felt reassured by thinking of backup plans in advance';

	/// en: 'You thought you'd decide depending on the situation'
	String get answerB => 'You thought you\'d decide depending on the situation';
}

// Path: weatherPersonalityTestPage.q8
class TranslationsWeatherPersonalityTestPageQ8En {
	TranslationsWeatherPersonalityTestPageQ8En._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Q8'
	String get title => 'Q8';

	/// en: 'The gods observed the moment when something 'unexpected' happened in your past life.'
	String get question => 'The gods observed the moment when something \'unexpected\' happened in your past life.';

	/// en: 'You felt a bit stressed by things you hadn't predicted'
	String get answerA => 'You felt a bit stressed by things you hadn\'t predicted';

	/// en: 'You had room to enjoy the change itself'
	String get answerB => 'You had room to enjoy the change itself';
}

// Path: weatherPersonalityTestPage.q9
class TranslationsWeatherPersonalityTestPageQ9En {
	TranslationsWeatherPersonalityTestPageQ9En._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Q9'
	String get title => 'Q9';

	/// en: 'The gods saw the moment you woke up and looked at the sky in your past life.'
	String get question => 'The gods saw the moment you woke up and looked at the sky in your past life.';

	/// en: 'Your mood and motivation for the day clearly changed depending on the weather'
	String get answerA => 'Your mood and motivation for the day clearly changed depending on the weather';

	/// en: 'You accepted the weather as it was, and your mood wasn't much affected'
	String get answerB => 'You accepted the weather as it was, and your mood wasn\'t much affected';
}

// Path: weatherPersonalityTestPage.q10
class TranslationsWeatherPersonalityTestPageQ10En {
	TranslationsWeatherPersonalityTestPageQ10En._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Q10'
	String get title => 'Q10';

	/// en: 'The gods remember how you were on low-pressure or rainy days.'
	String get question => 'The gods remember how you were on low-pressure or rainy days.';

	/// en: 'You often felt somewhat down or your body felt heavy'
	String get answerA => 'You often felt somewhat down or your body felt heavy';

	/// en: 'There was no particular change, and you spent it as usual'
	String get answerB => 'There was no particular change, and you spent it as usual';
}

// Path: weatherPersonalityTestPage.q11
class TranslationsWeatherPersonalityTestPageQ11En {
	TranslationsWeatherPersonalityTestPageQ11En._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Q11'
	String get title => 'Q11';

	/// en: 'The gods saw how you reacted to seasonal transitions in your past life.'
	String get question => 'The gods saw how you reacted to seasonal transitions in your past life.';

	/// en: 'You noticed changes in the air and scents, and your emotions were often moved'
	String get answerA => 'You noticed changes in the air and scents, and your emotions were often moved';

	/// en: 'Even when seasons changed, you spent time without much awareness'
	String get answerB => 'Even when seasons changed, you spent time without much awareness';
}

// Path: weatherPersonalityTestPage.q12
class TranslationsWeatherPersonalityTestPageQ12En {
	TranslationsWeatherPersonalityTestPageQ12En._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Q12'
	String get title => 'Q12';

	/// en: 'The gods recorded your reactions to strong sunlight, natural sounds (rain, thunder, etc.), and humidity.'
	String get question => 'The gods recorded your reactions to strong sunlight, natural sounds (rain, thunder, etc.), and humidity.';

	/// en: 'Strong stimuli tired you easily, and you were easily affected'
	String get answerA => 'Strong stimuli tired you easily, and you were easily affected';

	/// en: 'Moderate stimuli didn't particularly bother you'
	String get answerB => 'Moderate stimuli didn\'t particularly bother you';
}

// Path: weatherPersonalityTestPage.q13
class TranslationsWeatherPersonalityTestPageQ13En {
	TranslationsWeatherPersonalityTestPageQ13En._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Q13'
	String get title => 'Q13';

	/// en: 'The gods see what criteria you used when deciding whether to go out in your past life.'
	String get question => 'The gods see what criteria you used when deciding whether to go out in your past life.';

	/// en: 'You valued your mood and atmosphere of the day to decide'
	String get answerA => 'You valued your mood and atmosphere of the day to decide';

	/// en: 'You considered purpose and necessity to decide'
	String get answerB => 'You considered purpose and necessity to decide';
}

// Path: weatherPersonalityTestPage.q14
class TranslationsWeatherPersonalityTestPageQ14En {
	TranslationsWeatherPersonalityTestPageQ14En._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Q14'
	String get title => 'Q14';

	/// en: 'The gods observed what remained after you finished your day's activities in your past life.'
	String get question => 'The gods observed what remained after you finished your day\'s activities in your past life.';

	/// en: 'The day's mood and lingering feelings left a strong impression'
	String get answerA => 'The day\'s mood and lingering feelings left a strong impression';

	/// en: 'What you accomplished remained clearly'
	String get answerB => 'What you accomplished remained clearly';
}

// Path: weatherPersonalityTestPage.q15
class TranslationsWeatherPersonalityTestPageQ15En {
	TranslationsWeatherPersonalityTestPageQ15En._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Q15'
	String get title => 'Q15';

	/// en: 'The gods know what you prioritized in weather-dependent plans in your past life.'
	String get question => 'The gods know what you prioritized in weather-dependent plans in your past life.';

	/// en: 'You prioritized your mood and sense of satisfaction at the time'
	String get answerA => 'You prioritized your mood and sense of satisfaction at the time';

	/// en: 'You prioritized efficiency and rationality based on weather conditions'
	String get answerB => 'You prioritized efficiency and rationality based on weather conditions';
}

// Path: weatherPersonalityTestPage.q16
class TranslationsWeatherPersonalityTestPageQ16En {
	TranslationsWeatherPersonalityTestPageQ16En._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Q16'
	String get title => 'Q16';

	/// en: 'The gods saw which path you chose on unhurried walks home in your past life.'
	String get question => 'The gods saw which path you chose on unhurried walks home in your past life.';

	/// en: 'Even if it was a bit longer, you chose paths with pleasant scenery and atmosphere'
	String get answerA => 'Even if it was a bit longer, you chose paths with pleasant scenery and atmosphere';

	/// en: 'Even without particular reason, you naturally chose the fastest route'
	String get answerB => 'Even without particular reason, you naturally chose the fastest route';
}

// Path: weatherPersonalityTestResultPage.section
class TranslationsWeatherPersonalityTestResultPageSectionEn {
	TranslationsWeatherPersonalityTestResultPageSectionEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'The Gods' Ruling'
	String get title => 'The Gods\' Ruling';

	late final TranslationsWeatherPersonalityTestResultPageSectionMainResultEn mainResult = TranslationsWeatherPersonalityTestResultPageSectionMainResultEn._(_root);
	late final TranslationsWeatherPersonalityTestResultPageSectionGodsRulingEn godsRuling = TranslationsWeatherPersonalityTestResultPageSectionGodsRulingEn._(_root);
	late final TranslationsWeatherPersonalityTestResultPageSectionBehaviorTendencyEn behaviorTendency = TranslationsWeatherPersonalityTestResultPageSectionBehaviorTendencyEn._(_root);
	late final TranslationsWeatherPersonalityTestResultPageSectionAxisFeatureEn axisFeature = TranslationsWeatherPersonalityTestResultPageSectionAxisFeatureEn._(_root);
	late final TranslationsWeatherPersonalityTestResultPageSectionAxisScoreEn axisScore = TranslationsWeatherPersonalityTestResultPageSectionAxisScoreEn._(_root);
	late final TranslationsWeatherPersonalityTestResultPageSectionGodsMessageEn godsMessage = TranslationsWeatherPersonalityTestResultPageSectionGodsMessageEn._(_root);
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

	/// en: 'Are you sure you want to delete this photo?'
	String get contentText => 'Are you sure you want to delete this photo?';
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

// Path: dialog.weatherReportComplete
class TranslationsDialogWeatherReportCompleteEn {
	TranslationsDialogWeatherReportCompleteEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Weather Report Complete'
	String get title => 'Weather Report Complete';
}

// Path: dialog.destructionChanges
class TranslationsDialogDestructionChangesEn {
	TranslationsDialogDestructionChangesEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Confirmation Of Discarding Changes'
	String get title => 'Confirmation Of Discarding Changes';

	/// en: 'Do you want to discard your changes?'
	String get contentText => 'Do you want to discard your changes?';
}

// Path: dialog.interruptTest
class TranslationsDialogInterruptTestEn {
	TranslationsDialogInterruptTestEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Confirmation Of Test Interruption'
	String get title => 'Confirmation Of Test Interruption';

	/// en: 'Your answers will not be saved. Do you really want to stop the test?'
	String get contentText => 'Your answers will not be saved.\nDo you really want to stop the test?';
}

// Path: dialog.completeTest
class TranslationsDialogCompleteTestEn {
	TranslationsDialogCompleteTestEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Confirmation of completion of Test'
	String get title => 'Confirmation of completion of Test';

	/// en: 'Would you like to submit your answers and complete the test?'
	String get contentText => 'Would you like to submit your answers and complete the test?';
}

// Path: dialog.reTest
class TranslationsDialogReTestEn {
	TranslationsDialogReTestEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Confirmation of Re-Test'
	String get title => 'Confirmation of Re-Test';

	/// en: 'If you run the test again, the current test results will be deleted. Do you really want to run the test again?'
	String get contentText => 'If you run the test again, the current test results will be deleted. \nDo you really want to run the test again?';
}

// Path: dialog.likeMessage
class TranslationsDialogLikeMessageEn {
	TranslationsDialogLikeMessageEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'message received'
	String get title => 'message received';

	/// en: 'There are no messages.'
	String get nullCase => 'There are no messages.';
}

// Path: modalSheet.sortUser
class TranslationsModalSheetSortUserEn {
	TranslationsModalSheetSortUserEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Sort'
	String get title => 'Sort';
}

// Path: modalSheet.refineSearchUser
class TranslationsModalSheetRefineSearchUserEn {
	TranslationsModalSheetRefineSearchUserEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Filter'
	String get title => 'Filter';

	late final TranslationsModalSheetRefineSearchUserSectionEn section = TranslationsModalSheetRefineSearchUserSectionEn._(_root);
}

// Path: modalSheet.pickMedia
class TranslationsModalSheetPickMediaEn {
	TranslationsModalSheetPickMediaEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsModalSheetPickMediaLabelEn label = TranslationsModalSheetPickMediaLabelEn._(_root);
}

// Path: modalSheet.comment
class TranslationsModalSheetCommentEn {
	TranslationsModalSheetCommentEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Comment'
	String get title => 'Comment';

	/// en: 'Enter comment'
	String get placeHolder => 'Enter comment';
}

// Path: modalSheet.rainbowLike
class TranslationsModalSheetRainbowLikeEn {
	TranslationsModalSheetRainbowLikeEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Send Rainbow Like'
	String get title => 'Send Rainbow Like';

	late final TranslationsModalSheetRainbowLikeMessageTipsEn messageTips = TranslationsModalSheetRainbowLikeMessageTipsEn._(_root);
	late final TranslationsModalSheetRainbowLikeTextFieldEn textField = TranslationsModalSheetRainbowLikeTextFieldEn._(_root);
	late final TranslationsModalSheetRainbowLikeNoticeTextsEn noticeTexts = TranslationsModalSheetRainbowLikeNoticeTextsEn._(_root);
}

// Path: segmentedSwitch.like
class TranslationsSegmentedSwitchLikeEn {
	TranslationsSegmentedSwitchLikeEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'From Them'
	String get fromUser => 'From Them';

	/// en: 'From Me'
	String get toUser => 'From Me';
}

// Path: segmentedSwitch.chat
class TranslationsSegmentedSwitchChatEn {
	TranslationsSegmentedSwitchChatEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Message'
	String get message => 'Message';

	/// en: 'Profile'
	String get profile => 'Profile';
}

// Path: snackBar.profile
class TranslationsSnackBarProfileEn {
	TranslationsSnackBarProfileEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Your profile has been updated!'
	String get success => 'Your profile has been updated!';
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

// Path: kEnum.answerChoice
class TranslationsKEnumAnswerChoiceEn {
	TranslationsKEnumAnswerChoiceEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Strongly A'
	String get stronglyA => 'Strongly A';

	/// en: 'Slightly A'
	String get slightlyA => 'Slightly A';

	/// en: 'Slightly B'
	String get slightlyB => 'Slightly B';

	/// en: 'Strongly B'
	String get stronglyB => 'Strongly B';
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

// Path: kEnum.feelingType
class TranslationsKEnumFeelingTypeEn {
	TranslationsKEnumFeelingTypeEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Freezing'
	String get freezing => 'Freezing';

	/// en: 'Cold'
	String get cold => 'Cold';

	/// en: 'Comfortable'
	String get comfortable => 'Comfortable';

	/// en: 'Warm'
	String get warm => 'Warm';

	/// en: 'Not Applicable'
	String get notApplicable => 'Not Applicable';
}

// Path: kEnum.forecastType
class TranslationsKEnumForecastTypeEn {
	TranslationsKEnumForecastTypeEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'No change expected'
	String get noChange => 'No change expected';

	/// en: 'Likely to improve'
	String get improving => 'Likely to improve';

	/// en: 'Likely to worsen'
	String get worsening => 'Likely to worsen';
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
	String get massMedia => 'Media';

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

	/// en: 'Recently Active'
	String get login => 'Recently Active';

	/// en: 'Compatibility'
	String get compatibility => 'Compatibility';
}

// Path: kEnum.weatherPersonalityAxis
class TranslationsKEnumWeatherPersonalityAxisEn {
	TranslationsKEnumWeatherPersonalityAxisEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Sensitivity'
	String get sensitivity => 'Sensitivity';

	/// en: 'Preparedness'
	String get preparedness => 'Preparedness';

	/// en: 'Activity'
	String get activity => 'Activity';

	/// en: 'Motivation'
	String get motivation => 'Motivation';
}

// Path: kEnum.weatherPersonalityPolarity
class TranslationsKEnumWeatherPersonalityPolarityEn {
	TranslationsKEnumWeatherPersonalityPolarityEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'S (Sensitivity)'
	String get sensitive => 'S (Sensitivity)';

	/// en: 'N (Neutral)'
	String get neutral => 'N (Neutral)';

	/// en: 'P (Planned)'
	String get planned => 'P (Planned)';

	/// en: 'F (Flexible)'
	String get flexible => 'F (Flexible)';

	/// en: 'O (Outdoor)'
	String get outdoor => 'O (Outdoor)';

	/// en: 'I (Indoor)'
	String get indoor => 'I (Indoor)';

	/// en: 'E (Emotional)'
	String get emotional => 'E (Emotional)';

	/// en: 'R (Rational)'
	String get rational => 'R (Rational)';
}

// Path: kEnum.weatherType
class TranslationsKEnumWeatherTypeEn {
	TranslationsKEnumWeatherTypeEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Clear Stars'
	String get clearStar => 'Clear Stars';

	/// en: 'Faint Stars'
	String get faintStar => 'Faint Stars';

	/// en: 'No Stars'
	String get noStar => 'No Stars';

	/// en: 'Drizzle'
	String get drizzle => 'Drizzle';

	/// en: 'Light Rain'
	String get lightRain => 'Light Rain';

	/// en: 'Rain'
	String get rain => 'Rain';

	/// en: 'Heavy Rain'
	String get heavyRain => 'Heavy Rain';
}

// Path: kEnum.windDirection
class TranslationsKEnumWindDirectionEn {
	TranslationsKEnumWindDirectionEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'North'
	String get north => 'North';

	/// en: 'North-East'
	String get northEast => 'North-East';

	/// en: 'East'
	String get east => 'East';

	/// en: 'South-East'
	String get southEast => 'South-East';

	/// en: 'South'
	String get south => 'South';

	/// en: 'South-West'
	String get southWest => 'South-West';

	/// en: 'West'
	String get west => 'West';

	/// en: 'North-West'
	String get northWest => 'North-West';

	/// en: 'Unknown'
	String get unknown => 'Unknown';
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

// Path: aIMatchingPage.section.suggestionReason
class TranslationsAIMatchingPageSectionSuggestionReasonEn {
	TranslationsAIMatchingPageSectionSuggestionReasonEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: '💡Why AI made this suggestion'
	String get title => '💡Why AI made this suggestion';
}

// Path: aIMatchingPage.section.todayWeatherCompatibilityPoint
class TranslationsAIMatchingPageSectionTodayWeatherCompatibilityPointEn {
	TranslationsAIMatchingPageSectionTodayWeatherCompatibilityPointEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: '🌦️What would you do if the weather was like today?'
	String get title => '🌦️What would you do if the weather was like today?';
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

// Path: profilePage.placeholder.basicInformation
class TranslationsProfilePagePlaceholderBasicInformationEn {
	TranslationsProfilePagePlaceholderBasicInformationEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Not set'
	String get notSet => 'Not set';

	/// en: 'This field cannot be changed.'
	String get toolTip => 'This field cannot be changed.';
}

// Path: weatherPersonalityDetailPage.section.mainResult
class TranslationsWeatherPersonalityDetailPageSectionMainResultEn {
	TranslationsWeatherPersonalityDetailPageSectionMainResultEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Assessment Type Code'
	String get typeCode => 'Assessment Type Code';

	/// en: 'You are'
	String get you => 'You are';
}

// Path: weatherPersonalityDetailPage.section.godsRuling
class TranslationsWeatherPersonalityDetailPageSectionGodsRulingEn {
	TranslationsWeatherPersonalityDetailPageSectionGodsRulingEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'The Gods' Ruling Statement'
	String get title => 'The Gods\' Ruling Statement';
}

// Path: weatherPersonalityDetailPage.section.behaviorTendency
class TranslationsWeatherPersonalityDetailPageSectionBehaviorTendencyEn {
	TranslationsWeatherPersonalityDetailPageSectionBehaviorTendencyEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Behavioral Tendencies'
	String get title => 'Behavioral Tendencies';
}

// Path: weatherPersonalityDetailPage.section.axisFeature
class TranslationsWeatherPersonalityDetailPageSectionAxisFeatureEn {
	TranslationsWeatherPersonalityDetailPageSectionAxisFeatureEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: '4-Axis Characteristics'
	String get title => '4-Axis Characteristics';
}

// Path: weatherPersonalityDetailPage.section.axisScore
class TranslationsWeatherPersonalityDetailPageSectionAxisScoreEn {
	TranslationsWeatherPersonalityDetailPageSectionAxisScoreEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: '4-Axis Score'
	String get title => '4-Axis Score';

	late final TranslationsWeatherPersonalityDetailPageSectionAxisScoreAxisEn axis = TranslationsWeatherPersonalityDetailPageSectionAxisScoreAxisEn._(_root);
}

// Path: weatherPersonalityDetailPage.section.compatibleType
class TranslationsWeatherPersonalityDetailPageSectionCompatibleTypeEn {
	TranslationsWeatherPersonalityDetailPageSectionCompatibleTypeEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Compatible Type'
	String get title => 'Compatible Type';
}

// Path: weatherPersonalityDetailPage.section.incompatibleType
class TranslationsWeatherPersonalityDetailPageSectionIncompatibleTypeEn {
	TranslationsWeatherPersonalityDetailPageSectionIncompatibleTypeEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Incompatible Type'
	String get title => 'Incompatible Type';
}

// Path: weatherPersonalityDetailPage.section.godsMessage
class TranslationsWeatherPersonalityDetailPageSectionGodsMessageEn {
	TranslationsWeatherPersonalityDetailPageSectionGodsMessageEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'A Word from the Gods'
	String get title => 'A Word from the Gods';
}

// Path: weatherPersonalityTestResultPage.section.mainResult
class TranslationsWeatherPersonalityTestResultPageSectionMainResultEn {
	TranslationsWeatherPersonalityTestResultPageSectionMainResultEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Assessment Type Code'
	String get typeCode => 'Assessment Type Code';

	/// en: 'You are'
	String get you => 'You are';
}

// Path: weatherPersonalityTestResultPage.section.godsRuling
class TranslationsWeatherPersonalityTestResultPageSectionGodsRulingEn {
	TranslationsWeatherPersonalityTestResultPageSectionGodsRulingEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'The Gods' Ruling Statement'
	String get title => 'The Gods\' Ruling Statement';
}

// Path: weatherPersonalityTestResultPage.section.behaviorTendency
class TranslationsWeatherPersonalityTestResultPageSectionBehaviorTendencyEn {
	TranslationsWeatherPersonalityTestResultPageSectionBehaviorTendencyEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Behavioral Tendencies'
	String get title => 'Behavioral Tendencies';
}

// Path: weatherPersonalityTestResultPage.section.axisFeature
class TranslationsWeatherPersonalityTestResultPageSectionAxisFeatureEn {
	TranslationsWeatherPersonalityTestResultPageSectionAxisFeatureEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: '4-Axis Characteristics'
	String get title => '4-Axis Characteristics';
}

// Path: weatherPersonalityTestResultPage.section.axisScore
class TranslationsWeatherPersonalityTestResultPageSectionAxisScoreEn {
	TranslationsWeatherPersonalityTestResultPageSectionAxisScoreEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: '4-Axis Score'
	String get title => '4-Axis Score';
}

// Path: weatherPersonalityTestResultPage.section.godsMessage
class TranslationsWeatherPersonalityTestResultPageSectionGodsMessageEn {
	TranslationsWeatherPersonalityTestResultPageSectionGodsMessageEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'A Word from the Gods'
	String get title => 'A Word from the Gods';
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

	/// en: 'Locale'
	String get locale => 'Locale';

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

// Path: modalSheet.refineSearchUser.section
class TranslationsModalSheetRefineSearchUserSectionEn {
	TranslationsModalSheetRefineSearchUserSectionEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Age'
	String get age => 'Age';

	/// en: 'Location'
	String get address => 'Location';

	/// en: 'Gender'
	String get gender => 'Gender';

	/// en: 'Weather Personality'
	String get weatherPersonality => 'Weather Personality';
}

// Path: modalSheet.pickMedia.label
class TranslationsModalSheetPickMediaLabelEn {
	TranslationsModalSheetPickMediaLabelEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Take Photo'
	String get takePhoto => 'Take Photo';

	/// en: 'Record Video'
	String get recordVideo => 'Record Video';

	/// en: 'Select Existing Photo'
	String get selectExistingPhoto => 'Select Existing Photo';

	/// en: 'Select Existing Video'
	String get selectExistingVideo => 'Select Existing Video';
}

// Path: modalSheet.rainbowLike.messageTips
class TranslationsModalSheetRainbowLikeMessageTipsEn {
	TranslationsModalSheetRainbowLikeMessageTipsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Messaging Tips'
	String get label => 'Messaging Tips';

	/// en: 'By mentioning the other person's photos or profile and sharing what resonated with you, it's easier to start a natural conversation.'
	String get contentText => 'By mentioning the other person\'s photos or profile and sharing what resonated with you, it\'s easier to start a natural conversation.';
}

// Path: modalSheet.rainbowLike.textField
class TranslationsModalSheetRainbowLikeTextFieldEn {
	TranslationsModalSheetRainbowLikeTextFieldEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Nice to meet you! I loved the vibe of your photos and couldn't help but send a like. I see you like 〇〇. I'd love to chat if you're interested!'
	String get placeHolder => 'Nice to meet you!\nI loved the vibe of your photos and couldn\'t help but send a like.\n\nI see you like 〇〇.\nI\'d love to chat if you\'re interested!';
}

// Path: modalSheet.rainbowLike.noticeTexts
class TranslationsModalSheetRainbowLikeNoticeTextsEn {
	TranslationsModalSheetRainbowLikeNoticeTextsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: '・Sending will consume 1 Rainbow Like.'
	String get contentText1 => '・Sending will consume 1 Rainbow Like.';

	/// en: '・Personal information such as email addresses, social media accounts, and phone numbers cannot be sent.'
	String get contentText2 => '・Personal information such as email addresses, social media accounts, and phone numbers cannot be sent.';
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

// Path: weatherPersonalityDetailPage.section.axisScore.axis
class TranslationsWeatherPersonalityDetailPageSectionAxisScoreAxisEn {
	TranslationsWeatherPersonalityDetailPageSectionAxisScoreAxisEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsWeatherPersonalityDetailPageSectionAxisScoreAxisSensitivityEn sensitivity = TranslationsWeatherPersonalityDetailPageSectionAxisScoreAxisSensitivityEn._(_root);
	late final TranslationsWeatherPersonalityDetailPageSectionAxisScoreAxisPreparednessEn preparedness = TranslationsWeatherPersonalityDetailPageSectionAxisScoreAxisPreparednessEn._(_root);
	late final TranslationsWeatherPersonalityDetailPageSectionAxisScoreAxisActivityEn activity = TranslationsWeatherPersonalityDetailPageSectionAxisScoreAxisActivityEn._(_root);
	late final TranslationsWeatherPersonalityDetailPageSectionAxisScoreAxisMotivationEn motivation = TranslationsWeatherPersonalityDetailPageSectionAxisScoreAxisMotivationEn._(_root);
}

// Path: weatherPersonalityDetailPage.section.axisScore.axis.sensitivity
class TranslationsWeatherPersonalityDetailPageSectionAxisScoreAxisSensitivityEn {
	TranslationsWeatherPersonalityDetailPageSectionAxisScoreAxisSensitivityEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'S (High Sensitivity)'
	String get sensitive => 'S (High Sensitivity)';

	/// en: 'N (Low Sensitivity)'
	String get neutral => 'N (Low Sensitivity)';
}

// Path: weatherPersonalityDetailPage.section.axisScore.axis.preparedness
class TranslationsWeatherPersonalityDetailPageSectionAxisScoreAxisPreparednessEn {
	TranslationsWeatherPersonalityDetailPageSectionAxisScoreAxisPreparednessEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'P (Planned)'
	String get planned => 'P (Planned)';

	/// en: 'F (Flexible)'
	String get flexible => 'F (Flexible)';
}

// Path: weatherPersonalityDetailPage.section.axisScore.axis.activity
class TranslationsWeatherPersonalityDetailPageSectionAxisScoreAxisActivityEn {
	TranslationsWeatherPersonalityDetailPageSectionAxisScoreAxisActivityEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'O (Outdoor)'
	String get outdoor => 'O (Outdoor)';

	/// en: 'I (Indoor)'
	String get indoor => 'I (Indoor)';
}

// Path: weatherPersonalityDetailPage.section.axisScore.axis.motivation
class TranslationsWeatherPersonalityDetailPageSectionAxisScoreAxisMotivationEn {
	TranslationsWeatherPersonalityDetailPageSectionAxisScoreAxisMotivationEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'E (Emotional)'
	String get emotional => 'E (Emotional)';

	/// en: 'R (Rational)'
	String get rational => 'R (Rational)';
}

/// The flat map containing all translations for locale <en>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on Translations {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'locales.en' => 'English',
			'locales.ja' => 'Japanese',
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
			'homePage.isEmptyCase' => 'There are currently no users to view.',
			'likePage.isEmptyCase' => 'Let\'s find new encounters!',
			'matchingCompletedPage.title' => 'Matching completed!',
			'matchingCompletedPage.subTitle' => ({required Object name}) => 'Congratulations! \nYou\'ve been matched with ${name}.',
			'matchingCompletedPage.nullCase' => 'Matching information could not be obtained.',
			'matchingCompletedPage.message' => 'Send us a message and start a conversation!',
			'aIMatchingPage.title' => 'We\'ve found your perfect match!',
			'aIMatchingPage.subTitle' => 'Special suggestions from AI taking today\'s weather into consideration',
			'aIMatchingPage.nullCase' => 'Could not obtain user information to suggest.',
			'aIMatchingPage.section.suggestionReason.title' => '💡Why AI made this suggestion',
			'aIMatchingPage.section.todayWeatherCompatibilityPoint.title' => '🌦️What would you do if the weather was like today?',
			'chatPage.isEmptyCase' => 'Let\'s find new encounters!',
			'chatPage.sectionTitle.matching' => 'Matches',
			'chatPage.sectionTitle.messages' => 'Messages',
			'chatPage.subSectionTitle.matching' => 'Send your first message!',
			'chatDetailPage.nullCase' => 'Profile information could not be retrieved.',
			'chatDetailPage.placeHolder' => 'Enter message',
			'weatherReportPage.title' => 'Weather Report',
			'weatherReportPage.isEmptyCase' => 'There are currently no reports to display.',
			'myWeatherReportPage.title' => 'My Weather Report',
			'myWeatherReportPage.isEmptyCase' => 'You haven\'t posted yet. \nPost from the Weather Report Submission screen!',
			'myWeatherReportPage.weekdays.sunday' => 'Sun',
			'myWeatherReportPage.weekdays.monday' => 'Mon',
			'myWeatherReportPage.weekdays.tuesday' => 'Tue',
			'myWeatherReportPage.weekdays.wednesday' => 'Wed',
			'myWeatherReportPage.weekdays.thursday' => 'Thu',
			'myWeatherReportPage.weekdays.friday' => 'Fri',
			'myWeatherReportPage.weekdays.saturday' => 'Sat',
			'weatherReportPostPage.title' => 'Send Weather Report',
			'weatherReportPostPage.placeHolder.media' => 'Add photo/video',
			'weatherReportPostPage.placeHolder.comment1' => 'Enter comment',
			'weatherReportPostPage.placeHolder.comment2' => 'If you select a photo or video from your album, please include the date and time it was taken in the comment section',
			'weatherReportPostPage.label.location' => 'Location',
			'weatherReportPostPage.label.weatherFeelingForecast' => 'Weather/Feeling/Forecast',
			'weatherReportPostPage.label.observation' => 'Observation',
			'weatherSelectPage.title' => 'Select Weather',
			'weatherSelectPage.sectionTitle' => 'What\'s the weather now?',
			'feelingSelectPage.title' => 'Select Feeling',
			'feelingSelectPage.sectionTitle' => 'How does it feel now?',
			'forecastSelectPage.title' => 'Select Forecast',
			'forecastSelectPage.sectionTitle' => 'What about in a few hours?',
			'weatherReportDetailPage.title' => 'Post Details',
			'weatherReportDetailPage.nullCase' => 'Report information could not be obtained.',
			'weatherReportDetailPage.label.weather' => 'Weather',
			'weatherReportDetailPage.label.feeling' => 'Feeling',
			'weatherReportDetailPage.label.forecast' => 'Sensory Forecast',
			'accountPage.nullCase' => 'User information could not be obtained.',
			'profilePage.title' => 'Edit Profile',
			'profilePage.nullCase' => 'Profile information could not be retrieved.',
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
			'profilePage.placeholder.basicInformation.notSet' => 'Not set',
			'profilePage.placeholder.basicInformation.toolTip' => 'This field cannot be changed.',
			'profileDetailPage.title' => 'Profile Details',
			'profileDetailPage.nullCase' => 'Profile information could not be retrieved.',
			'weatherPersonalityConceptPage.title' => 'Weather Personality Assessment',
			'weatherPersonalityConceptPage.contentText.contentTitle' => 'About the Assessment',
			'weatherPersonalityConceptPage.contentText.contentText1' => 'If you were to be reborn as an animal,\n\n',
			'weatherPersonalityConceptPage.contentText.contentText2' => 'based on your behavior and personality\ntoward weather in your past life,\n',
			'weatherPersonalityConceptPage.contentText.contentText3' => 'the gods will objectively judge you\n\n',
			'weatherPersonalityConceptPage.contentText.contentText4' => 'and classify you into one of 16 character types\n\n',
			'weatherPersonalityConceptPage.contentText.contentText5' => '',
			'weatherPersonalityConceptPage.contentText.contentText6' => 'Answer 16 questions to discover\nyour Weather Personality type',
			'weatherPersonalityDetailPage.title' => 'Test Result',
			'weatherPersonalityDetailPage.nullCase' => 'Failed to get test results.',
			'weatherPersonalityDetailPage.section.mainResult.typeCode' => 'Assessment Type Code',
			'weatherPersonalityDetailPage.section.mainResult.you' => 'You are',
			'weatherPersonalityDetailPage.section.godsRuling.title' => 'The Gods\' Ruling Statement',
			'weatherPersonalityDetailPage.section.behaviorTendency.title' => 'Behavioral Tendencies',
			'weatherPersonalityDetailPage.section.axisFeature.title' => '4-Axis Characteristics',
			'weatherPersonalityDetailPage.section.axisScore.title' => '4-Axis Score',
			'weatherPersonalityDetailPage.section.axisScore.axis.sensitivity.sensitive' => 'S (High Sensitivity)',
			'weatherPersonalityDetailPage.section.axisScore.axis.sensitivity.neutral' => 'N (Low Sensitivity)',
			'weatherPersonalityDetailPage.section.axisScore.axis.preparedness.planned' => 'P (Planned)',
			'weatherPersonalityDetailPage.section.axisScore.axis.preparedness.flexible' => 'F (Flexible)',
			'weatherPersonalityDetailPage.section.axisScore.axis.activity.outdoor' => 'O (Outdoor)',
			'weatherPersonalityDetailPage.section.axisScore.axis.activity.indoor' => 'I (Indoor)',
			'weatherPersonalityDetailPage.section.axisScore.axis.motivation.emotional' => 'E (Emotional)',
			'weatherPersonalityDetailPage.section.axisScore.axis.motivation.rational' => 'R (Rational)',
			'weatherPersonalityDetailPage.section.compatibleType.title' => 'Compatible Type',
			'weatherPersonalityDetailPage.section.incompatibleType.title' => 'Incompatible Type',
			'weatherPersonalityDetailPage.section.godsMessage.title' => 'A Word from the Gods',
			'weatherPersonalityTestJudgingPage.loading' => 'Assessing',
			'weatherPersonalityTestJudgingPage.contentText.contentTitle' => 'Assessment Complete',
			'weatherPersonalityTestJudgingPage.contentText.contentText1' => 'The gods have finished reviewing\nall records of your past life\'s actions.',
			'weatherPersonalityTestPage.q1.title' => 'Q1',
			'weatherPersonalityTestPage.q1.question' => 'The gods observed how you spent nice weather days in your past life.',
			'weatherPersonalityTestPage.q1.answerA' => 'You often went outside and headed somewhere',
			'weatherPersonalityTestPage.q1.answerB' => 'You mostly stayed indoors',
			'weatherPersonalityTestPage.q2.title' => 'Q2',
			'weatherPersonalityTestPage.q2.question' => 'The gods remember your choices on bad weather days.',
			'weatherPersonalityTestPage.q2.answerA' => 'You looked for reasons to go outside anyway',
			'weatherPersonalityTestPage.q2.answerB' => 'You avoided going out and stayed indoors',
			'weatherPersonalityTestPage.q3.title' => 'Q3',
			'weatherPersonalityTestPage.q3.question' => 'The gods observed how you spent days with unstable weather in your past life.',
			'weatherPersonalityTestPage.q3.answerA' => 'You continued outdoor activities while going back and forth between indoors and outdoors',
			'weatherPersonalityTestPage.q3.answerB' => 'You minimized going out and stayed mostly indoors',
			'weatherPersonalityTestPage.q4.title' => 'Q4',
			'weatherPersonalityTestPage.q4.question' => 'The gods saw how you spent holidays with no particular plans in your past life.',
			'weatherPersonalityTestPage.q4.answerA' => 'You went outside for fresh air and a change of pace',
			'weatherPersonalityTestPage.q4.answerB' => 'You spent time quietly in your own space',
			'weatherPersonalityTestPage.q5.title' => 'Q5',
			'weatherPersonalityTestPage.q5.question' => 'The gods watched you the day before going out.',
			'weatherPersonalityTestPage.q5.answerA' => 'You checked the weather forecast and decided on your outfit and belongings',
			'weatherPersonalityTestPage.q5.answerB' => 'You decided to think about it on the day itself',
			'weatherPersonalityTestPage.q6.title' => 'Q6',
			'weatherPersonalityTestPage.q6.question' => 'The gods remember your actions on days when rain was uncertain.',
			'weatherPersonalityTestPage.q6.answerA' => 'You prepared assuming it would rain and acted to avoid getting wet',
			'weatherPersonalityTestPage.q6.answerB' => 'You thought you\'d figure it out if it rained',
			'weatherPersonalityTestPage.q7.title' => 'Q7',
			'weatherPersonalityTestPage.q7.question' => 'The gods saw you when your plans were about to be disrupted by weather.',
			'weatherPersonalityTestPage.q7.answerA' => 'You felt reassured by thinking of backup plans in advance',
			'weatherPersonalityTestPage.q7.answerB' => 'You thought you\'d decide depending on the situation',
			'weatherPersonalityTestPage.q8.title' => 'Q8',
			'weatherPersonalityTestPage.q8.question' => 'The gods observed the moment when something \'unexpected\' happened in your past life.',
			'weatherPersonalityTestPage.q8.answerA' => 'You felt a bit stressed by things you hadn\'t predicted',
			'weatherPersonalityTestPage.q8.answerB' => 'You had room to enjoy the change itself',
			'weatherPersonalityTestPage.q9.title' => 'Q9',
			'weatherPersonalityTestPage.q9.question' => 'The gods saw the moment you woke up and looked at the sky in your past life.',
			'weatherPersonalityTestPage.q9.answerA' => 'Your mood and motivation for the day clearly changed depending on the weather',
			'weatherPersonalityTestPage.q9.answerB' => 'You accepted the weather as it was, and your mood wasn\'t much affected',
			'weatherPersonalityTestPage.q10.title' => 'Q10',
			'weatherPersonalityTestPage.q10.question' => 'The gods remember how you were on low-pressure or rainy days.',
			'weatherPersonalityTestPage.q10.answerA' => 'You often felt somewhat down or your body felt heavy',
			'weatherPersonalityTestPage.q10.answerB' => 'There was no particular change, and you spent it as usual',
			'weatherPersonalityTestPage.q11.title' => 'Q11',
			'weatherPersonalityTestPage.q11.question' => 'The gods saw how you reacted to seasonal transitions in your past life.',
			'weatherPersonalityTestPage.q11.answerA' => 'You noticed changes in the air and scents, and your emotions were often moved',
			'weatherPersonalityTestPage.q11.answerB' => 'Even when seasons changed, you spent time without much awareness',
			'weatherPersonalityTestPage.q12.title' => 'Q12',
			'weatherPersonalityTestPage.q12.question' => 'The gods recorded your reactions to strong sunlight, natural sounds (rain, thunder, etc.), and humidity.',
			'weatherPersonalityTestPage.q12.answerA' => 'Strong stimuli tired you easily, and you were easily affected',
			'weatherPersonalityTestPage.q12.answerB' => 'Moderate stimuli didn\'t particularly bother you',
			'weatherPersonalityTestPage.q13.title' => 'Q13',
			'weatherPersonalityTestPage.q13.question' => 'The gods see what criteria you used when deciding whether to go out in your past life.',
			'weatherPersonalityTestPage.q13.answerA' => 'You valued your mood and atmosphere of the day to decide',
			'weatherPersonalityTestPage.q13.answerB' => 'You considered purpose and necessity to decide',
			'weatherPersonalityTestPage.q14.title' => 'Q14',
			'weatherPersonalityTestPage.q14.question' => 'The gods observed what remained after you finished your day\'s activities in your past life.',
			'weatherPersonalityTestPage.q14.answerA' => 'The day\'s mood and lingering feelings left a strong impression',
			'weatherPersonalityTestPage.q14.answerB' => 'What you accomplished remained clearly',
			'weatherPersonalityTestPage.q15.title' => 'Q15',
			'weatherPersonalityTestPage.q15.question' => 'The gods know what you prioritized in weather-dependent plans in your past life.',
			'weatherPersonalityTestPage.q15.answerA' => 'You prioritized your mood and sense of satisfaction at the time',
			'weatherPersonalityTestPage.q15.answerB' => 'You prioritized efficiency and rationality based on weather conditions',
			'weatherPersonalityTestPage.q16.title' => 'Q16',
			'weatherPersonalityTestPage.q16.question' => 'The gods saw which path you chose on unhurried walks home in your past life.',
			'weatherPersonalityTestPage.q16.answerA' => 'Even if it was a bit longer, you chose paths with pleasant scenery and atmosphere',
			'weatherPersonalityTestPage.q16.answerB' => 'Even without particular reason, you naturally chose the fastest route',
			'weatherPersonalityTestResultPage.nullCase' => 'Failed to get test results.',
			'weatherPersonalityTestResultPage.section.title' => 'The Gods\' Ruling',
			'weatherPersonalityTestResultPage.section.mainResult.typeCode' => 'Assessment Type Code',
			'weatherPersonalityTestResultPage.section.mainResult.you' => 'You are',
			'weatherPersonalityTestResultPage.section.godsRuling.title' => 'The Gods\' Ruling Statement',
			'weatherPersonalityTestResultPage.section.behaviorTendency.title' => 'Behavioral Tendencies',
			'weatherPersonalityTestResultPage.section.axisFeature.title' => '4-Axis Characteristics',
			'weatherPersonalityTestResultPage.section.axisScore.title' => '4-Axis Score',
			'weatherPersonalityTestResultPage.section.godsMessage.title' => 'A Word from the Gods',
			'settingPage.title' => 'Settings',
			'settingPage.section.accountSetting.title' => 'Account Settings',
			'settingPage.section.accountSetting.identityVerification' => 'Identity Verification',
			'settingPage.section.accountSetting.pushNotification' => 'Push Notifications',
			'settingPage.section.accountSetting.locale' => 'Locale',
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
			'dialog.deletePhoto.contentText' => 'Are you sure you want to delete this photo?',
			'dialog.saveChanges.title' => 'Confirm Save Changes',
			'dialog.saveChanges.contentText' => 'Do you want to save your changes?',
			'dialog.weatherReportComplete.title' => 'Weather Report Complete',
			'dialog.destructionChanges.title' => 'Confirmation Of Discarding Changes',
			'dialog.destructionChanges.contentText' => 'Do you want to discard your changes?',
			'dialog.interruptTest.title' => 'Confirmation Of Test Interruption',
			'dialog.interruptTest.contentText' => 'Your answers will not be saved.\nDo you really want to stop the test?',
			'dialog.completeTest.title' => 'Confirmation of completion of Test',
			'dialog.completeTest.contentText' => 'Would you like to submit your answers and complete the test?',
			'dialog.reTest.title' => 'Confirmation of Re-Test',
			'dialog.reTest.contentText' => 'If you run the test again, the current test results will be deleted. \nDo you really want to run the test again?',
			'dialog.likeMessage.title' => 'message received',
			'dialog.likeMessage.nullCase' => 'There are no messages.',
			'modalSheet.sortUser.title' => 'Sort',
			'modalSheet.refineSearchUser.title' => 'Filter',
			'modalSheet.refineSearchUser.section.age' => 'Age',
			'modalSheet.refineSearchUser.section.address' => 'Location',
			'modalSheet.refineSearchUser.section.gender' => 'Gender',
			'modalSheet.refineSearchUser.section.weatherPersonality' => 'Weather Personality',
			'modalSheet.pickMedia.label.takePhoto' => 'Take Photo',
			'modalSheet.pickMedia.label.recordVideo' => 'Record Video',
			'modalSheet.pickMedia.label.selectExistingPhoto' => 'Select Existing Photo',
			'modalSheet.pickMedia.label.selectExistingVideo' => 'Select Existing Video',
			'modalSheet.comment.title' => 'Comment',
			'modalSheet.comment.placeHolder' => 'Enter comment',
			'modalSheet.rainbowLike.title' => 'Send Rainbow Like',
			'modalSheet.rainbowLike.messageTips.label' => 'Messaging Tips',
			'modalSheet.rainbowLike.messageTips.contentText' => 'By mentioning the other person\'s photos or profile and sharing what resonated with you, it\'s easier to start a natural conversation.',
			'modalSheet.rainbowLike.textField.placeHolder' => 'Nice to meet you!\nI loved the vibe of your photos and couldn\'t help but send a like.\n\nI see you like 〇〇.\nI\'d love to chat if you\'re interested!',
			'modalSheet.rainbowLike.noticeTexts.contentText1' => '・Sending will consume 1 Rainbow Like.',
			'modalSheet.rainbowLike.noticeTexts.contentText2' => '・Personal information such as email addresses, social media accounts, and phone numbers cannot be sent.',
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
			'button.send' => 'Send',
			'button.close' => 'Close',
			'button.destruction' => 'Destruction',
			'button.interrupt' => 'Interrupt',
			'button.startTest' => 'Start Test',
			'button.seeResults' => 'See Results',
			'button.shareResults' => 'Share Results',
			'button.returnToAccountPage' => 'Return To Account Page',
			'button.completion' => 'Complete',
			'button.weatherPersonalityTest' => 'Weather Personality Test',
			'button.goTochatPage' => 'Go To Chat Screen',
			'button.rainbowLike' => 'Rainbow Like!',
			'button.retest' => 'Re-test',
			'segmentedSwitch.like.fromUser' => 'From Them',
			'segmentedSwitch.like.toUser' => 'From Me',
			'segmentedSwitch.chat.message' => 'Message',
			'segmentedSwitch.chat.profile' => 'Profile',
			'snackBar.profile.success' => 'Your profile has been updated!',
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
			'kEnum.answerChoice.stronglyA' => 'Strongly A',
			'kEnum.answerChoice.slightlyA' => 'Slightly A',
			'kEnum.answerChoice.slightlyB' => 'Slightly B',
			'kEnum.answerChoice.stronglyB' => 'Strongly B',
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
			'kEnum.feelingType.freezing' => 'Freezing',
			'kEnum.feelingType.cold' => 'Cold',
			'kEnum.feelingType.comfortable' => 'Comfortable',
			'kEnum.feelingType.warm' => 'Warm',
			'kEnum.feelingType.notApplicable' => 'Not Applicable',
			'kEnum.forecastType.noChange' => 'No change expected',
			'kEnum.forecastType.improving' => 'Likely to improve',
			'kEnum.forecastType.worsening' => 'Likely to worsen',
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
			_ => null,
		} ?? switch (path) {
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
			'kEnum.occupation.massMedia' => 'Media',
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
			'kEnum.sortType.login' => 'Recently Active',
			'kEnum.sortType.compatibility' => 'Compatibility',
			'kEnum.weatherPersonalityAxis.sensitivity' => 'Sensitivity',
			'kEnum.weatherPersonalityAxis.preparedness' => 'Preparedness',
			'kEnum.weatherPersonalityAxis.activity' => 'Activity',
			'kEnum.weatherPersonalityAxis.motivation' => 'Motivation',
			'kEnum.weatherPersonalityPolarity.sensitive' => 'S (Sensitivity)',
			'kEnum.weatherPersonalityPolarity.neutral' => 'N (Neutral)',
			'kEnum.weatherPersonalityPolarity.planned' => 'P (Planned)',
			'kEnum.weatherPersonalityPolarity.flexible' => 'F (Flexible)',
			'kEnum.weatherPersonalityPolarity.outdoor' => 'O (Outdoor)',
			'kEnum.weatherPersonalityPolarity.indoor' => 'I (Indoor)',
			'kEnum.weatherPersonalityPolarity.emotional' => 'E (Emotional)',
			'kEnum.weatherPersonalityPolarity.rational' => 'R (Rational)',
			'kEnum.weatherType.clearStar' => 'Clear Stars',
			'kEnum.weatherType.faintStar' => 'Faint Stars',
			'kEnum.weatherType.noStar' => 'No Stars',
			'kEnum.weatherType.drizzle' => 'Drizzle',
			'kEnum.weatherType.lightRain' => 'Light Rain',
			'kEnum.weatherType.rain' => 'Rain',
			'kEnum.weatherType.heavyRain' => 'Heavy Rain',
			'kEnum.windDirection.north' => 'North',
			'kEnum.windDirection.northEast' => 'North-East',
			'kEnum.windDirection.east' => 'East',
			'kEnum.windDirection.southEast' => 'South-East',
			'kEnum.windDirection.south' => 'South',
			'kEnum.windDirection.southWest' => 'South-West',
			'kEnum.windDirection.west' => 'West',
			'kEnum.windDirection.northWest' => 'North-West',
			'kEnum.windDirection.unknown' => 'Unknown',
			_ => null,
		};
	}
}
