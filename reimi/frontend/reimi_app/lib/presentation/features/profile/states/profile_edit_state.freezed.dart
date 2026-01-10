// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_edit_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProfileEditState {
  String get name;
  Gender get gender;
  @YyyyMmDdDateConverter()
  DateTime get birthDate;
  Address get address;
  String get mainPhotoUrl;
  String get introduction;
  Height? get height;
  BodyShape? get bodyShape;
  AnnualIncome? get annualIncome;
  BloodType? get bloodType;
  Address? get hometown;
  CommunicationStyle? get communicationStyle;
  Occupation? get occupation;
  Education? get education;
  Smoking? get smoking;
  Alcohol? get alcohol;
  Holiday? get holiday;
  List<String>? get sunnyDayHobbies;
  List<String>? get rainyDayHobbies;
  List<String>? get subPhotoUrls;
  bool get isChanged;

  /// Create a copy of ProfileEditState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ProfileEditStateCopyWith<ProfileEditState> get copyWith =>
      _$ProfileEditStateCopyWithImpl<ProfileEditState>(
          this as ProfileEditState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ProfileEditState &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.birthDate, birthDate) ||
                other.birthDate == birthDate) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.mainPhotoUrl, mainPhotoUrl) ||
                other.mainPhotoUrl == mainPhotoUrl) &&
            (identical(other.introduction, introduction) ||
                other.introduction == introduction) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.bodyShape, bodyShape) ||
                other.bodyShape == bodyShape) &&
            (identical(other.annualIncome, annualIncome) ||
                other.annualIncome == annualIncome) &&
            (identical(other.bloodType, bloodType) ||
                other.bloodType == bloodType) &&
            (identical(other.hometown, hometown) ||
                other.hometown == hometown) &&
            (identical(other.communicationStyle, communicationStyle) ||
                other.communicationStyle == communicationStyle) &&
            (identical(other.occupation, occupation) ||
                other.occupation == occupation) &&
            (identical(other.education, education) ||
                other.education == education) &&
            (identical(other.smoking, smoking) || other.smoking == smoking) &&
            (identical(other.alcohol, alcohol) || other.alcohol == alcohol) &&
            (identical(other.holiday, holiday) || other.holiday == holiday) &&
            const DeepCollectionEquality()
                .equals(other.sunnyDayHobbies, sunnyDayHobbies) &&
            const DeepCollectionEquality()
                .equals(other.rainyDayHobbies, rainyDayHobbies) &&
            const DeepCollectionEquality()
                .equals(other.subPhotoUrls, subPhotoUrls) &&
            (identical(other.isChanged, isChanged) ||
                other.isChanged == isChanged));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        name,
        gender,
        birthDate,
        address,
        mainPhotoUrl,
        introduction,
        height,
        bodyShape,
        annualIncome,
        bloodType,
        hometown,
        communicationStyle,
        occupation,
        education,
        smoking,
        alcohol,
        holiday,
        const DeepCollectionEquality().hash(sunnyDayHobbies),
        const DeepCollectionEquality().hash(rainyDayHobbies),
        const DeepCollectionEquality().hash(subPhotoUrls),
        isChanged
      ]);

  @override
  String toString() {
    return 'ProfileEditState(name: $name, gender: $gender, birthDate: $birthDate, address: $address, mainPhotoUrl: $mainPhotoUrl, introduction: $introduction, height: $height, bodyShape: $bodyShape, annualIncome: $annualIncome, bloodType: $bloodType, hometown: $hometown, communicationStyle: $communicationStyle, occupation: $occupation, education: $education, smoking: $smoking, alcohol: $alcohol, holiday: $holiday, sunnyDayHobbies: $sunnyDayHobbies, rainyDayHobbies: $rainyDayHobbies, subPhotoUrls: $subPhotoUrls, isChanged: $isChanged)';
  }
}

/// @nodoc
abstract mixin class $ProfileEditStateCopyWith<$Res> {
  factory $ProfileEditStateCopyWith(
          ProfileEditState value, $Res Function(ProfileEditState) _then) =
      _$ProfileEditStateCopyWithImpl;
  @useResult
  $Res call(
      {String name,
      Gender gender,
      @YyyyMmDdDateConverter() DateTime birthDate,
      Address address,
      String mainPhotoUrl,
      String introduction,
      Height? height,
      BodyShape? bodyShape,
      AnnualIncome? annualIncome,
      BloodType? bloodType,
      Address? hometown,
      CommunicationStyle? communicationStyle,
      Occupation? occupation,
      Education? education,
      Smoking? smoking,
      Alcohol? alcohol,
      Holiday? holiday,
      List<String>? sunnyDayHobbies,
      List<String>? rainyDayHobbies,
      List<String>? subPhotoUrls,
      bool isChanged});
}

/// @nodoc
class _$ProfileEditStateCopyWithImpl<$Res>
    implements $ProfileEditStateCopyWith<$Res> {
  _$ProfileEditStateCopyWithImpl(this._self, this._then);

  final ProfileEditState _self;
  final $Res Function(ProfileEditState) _then;

  /// Create a copy of ProfileEditState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? gender = null,
    Object? birthDate = null,
    Object? address = null,
    Object? mainPhotoUrl = null,
    Object? introduction = null,
    Object? height = freezed,
    Object? bodyShape = freezed,
    Object? annualIncome = freezed,
    Object? bloodType = freezed,
    Object? hometown = freezed,
    Object? communicationStyle = freezed,
    Object? occupation = freezed,
    Object? education = freezed,
    Object? smoking = freezed,
    Object? alcohol = freezed,
    Object? holiday = freezed,
    Object? sunnyDayHobbies = freezed,
    Object? rainyDayHobbies = freezed,
    Object? subPhotoUrls = freezed,
    Object? isChanged = null,
  }) {
    return _then(_self.copyWith(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _self.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender,
      birthDate: null == birthDate
          ? _self.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      address: null == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
      mainPhotoUrl: null == mainPhotoUrl
          ? _self.mainPhotoUrl
          : mainPhotoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      introduction: null == introduction
          ? _self.introduction
          : introduction // ignore: cast_nullable_to_non_nullable
              as String,
      height: freezed == height
          ? _self.height
          : height // ignore: cast_nullable_to_non_nullable
              as Height?,
      bodyShape: freezed == bodyShape
          ? _self.bodyShape
          : bodyShape // ignore: cast_nullable_to_non_nullable
              as BodyShape?,
      annualIncome: freezed == annualIncome
          ? _self.annualIncome
          : annualIncome // ignore: cast_nullable_to_non_nullable
              as AnnualIncome?,
      bloodType: freezed == bloodType
          ? _self.bloodType
          : bloodType // ignore: cast_nullable_to_non_nullable
              as BloodType?,
      hometown: freezed == hometown
          ? _self.hometown
          : hometown // ignore: cast_nullable_to_non_nullable
              as Address?,
      communicationStyle: freezed == communicationStyle
          ? _self.communicationStyle
          : communicationStyle // ignore: cast_nullable_to_non_nullable
              as CommunicationStyle?,
      occupation: freezed == occupation
          ? _self.occupation
          : occupation // ignore: cast_nullable_to_non_nullable
              as Occupation?,
      education: freezed == education
          ? _self.education
          : education // ignore: cast_nullable_to_non_nullable
              as Education?,
      smoking: freezed == smoking
          ? _self.smoking
          : smoking // ignore: cast_nullable_to_non_nullable
              as Smoking?,
      alcohol: freezed == alcohol
          ? _self.alcohol
          : alcohol // ignore: cast_nullable_to_non_nullable
              as Alcohol?,
      holiday: freezed == holiday
          ? _self.holiday
          : holiday // ignore: cast_nullable_to_non_nullable
              as Holiday?,
      sunnyDayHobbies: freezed == sunnyDayHobbies
          ? _self.sunnyDayHobbies
          : sunnyDayHobbies // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      rainyDayHobbies: freezed == rainyDayHobbies
          ? _self.rainyDayHobbies
          : rainyDayHobbies // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      subPhotoUrls: freezed == subPhotoUrls
          ? _self.subPhotoUrls
          : subPhotoUrls // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      isChanged: null == isChanged
          ? _self.isChanged
          : isChanged // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// Adds pattern-matching-related methods to [ProfileEditState].
extension ProfileEditStatePatterns on ProfileEditState {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ProfileEditState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ProfileEditState() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ProfileEditState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProfileEditState():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ProfileEditState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProfileEditState() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String name,
            Gender gender,
            @YyyyMmDdDateConverter() DateTime birthDate,
            Address address,
            String mainPhotoUrl,
            String introduction,
            Height? height,
            BodyShape? bodyShape,
            AnnualIncome? annualIncome,
            BloodType? bloodType,
            Address? hometown,
            CommunicationStyle? communicationStyle,
            Occupation? occupation,
            Education? education,
            Smoking? smoking,
            Alcohol? alcohol,
            Holiday? holiday,
            List<String>? sunnyDayHobbies,
            List<String>? rainyDayHobbies,
            List<String>? subPhotoUrls,
            bool isChanged)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ProfileEditState() when $default != null:
        return $default(
            _that.name,
            _that.gender,
            _that.birthDate,
            _that.address,
            _that.mainPhotoUrl,
            _that.introduction,
            _that.height,
            _that.bodyShape,
            _that.annualIncome,
            _that.bloodType,
            _that.hometown,
            _that.communicationStyle,
            _that.occupation,
            _that.education,
            _that.smoking,
            _that.alcohol,
            _that.holiday,
            _that.sunnyDayHobbies,
            _that.rainyDayHobbies,
            _that.subPhotoUrls,
            _that.isChanged);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String name,
            Gender gender,
            @YyyyMmDdDateConverter() DateTime birthDate,
            Address address,
            String mainPhotoUrl,
            String introduction,
            Height? height,
            BodyShape? bodyShape,
            AnnualIncome? annualIncome,
            BloodType? bloodType,
            Address? hometown,
            CommunicationStyle? communicationStyle,
            Occupation? occupation,
            Education? education,
            Smoking? smoking,
            Alcohol? alcohol,
            Holiday? holiday,
            List<String>? sunnyDayHobbies,
            List<String>? rainyDayHobbies,
            List<String>? subPhotoUrls,
            bool isChanged)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProfileEditState():
        return $default(
            _that.name,
            _that.gender,
            _that.birthDate,
            _that.address,
            _that.mainPhotoUrl,
            _that.introduction,
            _that.height,
            _that.bodyShape,
            _that.annualIncome,
            _that.bloodType,
            _that.hometown,
            _that.communicationStyle,
            _that.occupation,
            _that.education,
            _that.smoking,
            _that.alcohol,
            _that.holiday,
            _that.sunnyDayHobbies,
            _that.rainyDayHobbies,
            _that.subPhotoUrls,
            _that.isChanged);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String name,
            Gender gender,
            @YyyyMmDdDateConverter() DateTime birthDate,
            Address address,
            String mainPhotoUrl,
            String introduction,
            Height? height,
            BodyShape? bodyShape,
            AnnualIncome? annualIncome,
            BloodType? bloodType,
            Address? hometown,
            CommunicationStyle? communicationStyle,
            Occupation? occupation,
            Education? education,
            Smoking? smoking,
            Alcohol? alcohol,
            Holiday? holiday,
            List<String>? sunnyDayHobbies,
            List<String>? rainyDayHobbies,
            List<String>? subPhotoUrls,
            bool isChanged)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProfileEditState() when $default != null:
        return $default(
            _that.name,
            _that.gender,
            _that.birthDate,
            _that.address,
            _that.mainPhotoUrl,
            _that.introduction,
            _that.height,
            _that.bodyShape,
            _that.annualIncome,
            _that.bloodType,
            _that.hometown,
            _that.communicationStyle,
            _that.occupation,
            _that.education,
            _that.smoking,
            _that.alcohol,
            _that.holiday,
            _that.sunnyDayHobbies,
            _that.rainyDayHobbies,
            _that.subPhotoUrls,
            _that.isChanged);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _ProfileEditState implements ProfileEditState {
  const _ProfileEditState(
      {required this.name,
      required this.gender,
      @YyyyMmDdDateConverter() required this.birthDate,
      required this.address,
      required this.mainPhotoUrl,
      required this.introduction,
      this.height,
      this.bodyShape,
      this.annualIncome,
      this.bloodType,
      this.hometown,
      this.communicationStyle,
      this.occupation,
      this.education,
      this.smoking,
      this.alcohol,
      this.holiday,
      final List<String>? sunnyDayHobbies,
      final List<String>? rainyDayHobbies,
      final List<String>? subPhotoUrls,
      this.isChanged = false})
      : _sunnyDayHobbies = sunnyDayHobbies,
        _rainyDayHobbies = rainyDayHobbies,
        _subPhotoUrls = subPhotoUrls;

  @override
  final String name;
  @override
  final Gender gender;
  @override
  @YyyyMmDdDateConverter()
  final DateTime birthDate;
  @override
  final Address address;
  @override
  final String mainPhotoUrl;
  @override
  final String introduction;
  @override
  final Height? height;
  @override
  final BodyShape? bodyShape;
  @override
  final AnnualIncome? annualIncome;
  @override
  final BloodType? bloodType;
  @override
  final Address? hometown;
  @override
  final CommunicationStyle? communicationStyle;
  @override
  final Occupation? occupation;
  @override
  final Education? education;
  @override
  final Smoking? smoking;
  @override
  final Alcohol? alcohol;
  @override
  final Holiday? holiday;
  final List<String>? _sunnyDayHobbies;
  @override
  List<String>? get sunnyDayHobbies {
    final value = _sunnyDayHobbies;
    if (value == null) return null;
    if (_sunnyDayHobbies is EqualUnmodifiableListView) return _sunnyDayHobbies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _rainyDayHobbies;
  @override
  List<String>? get rainyDayHobbies {
    final value = _rainyDayHobbies;
    if (value == null) return null;
    if (_rainyDayHobbies is EqualUnmodifiableListView) return _rainyDayHobbies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _subPhotoUrls;
  @override
  List<String>? get subPhotoUrls {
    final value = _subPhotoUrls;
    if (value == null) return null;
    if (_subPhotoUrls is EqualUnmodifiableListView) return _subPhotoUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final bool isChanged;

  /// Create a copy of ProfileEditState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ProfileEditStateCopyWith<_ProfileEditState> get copyWith =>
      __$ProfileEditStateCopyWithImpl<_ProfileEditState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProfileEditState &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.birthDate, birthDate) ||
                other.birthDate == birthDate) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.mainPhotoUrl, mainPhotoUrl) ||
                other.mainPhotoUrl == mainPhotoUrl) &&
            (identical(other.introduction, introduction) ||
                other.introduction == introduction) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.bodyShape, bodyShape) ||
                other.bodyShape == bodyShape) &&
            (identical(other.annualIncome, annualIncome) ||
                other.annualIncome == annualIncome) &&
            (identical(other.bloodType, bloodType) ||
                other.bloodType == bloodType) &&
            (identical(other.hometown, hometown) ||
                other.hometown == hometown) &&
            (identical(other.communicationStyle, communicationStyle) ||
                other.communicationStyle == communicationStyle) &&
            (identical(other.occupation, occupation) ||
                other.occupation == occupation) &&
            (identical(other.education, education) ||
                other.education == education) &&
            (identical(other.smoking, smoking) || other.smoking == smoking) &&
            (identical(other.alcohol, alcohol) || other.alcohol == alcohol) &&
            (identical(other.holiday, holiday) || other.holiday == holiday) &&
            const DeepCollectionEquality()
                .equals(other._sunnyDayHobbies, _sunnyDayHobbies) &&
            const DeepCollectionEquality()
                .equals(other._rainyDayHobbies, _rainyDayHobbies) &&
            const DeepCollectionEquality()
                .equals(other._subPhotoUrls, _subPhotoUrls) &&
            (identical(other.isChanged, isChanged) ||
                other.isChanged == isChanged));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        name,
        gender,
        birthDate,
        address,
        mainPhotoUrl,
        introduction,
        height,
        bodyShape,
        annualIncome,
        bloodType,
        hometown,
        communicationStyle,
        occupation,
        education,
        smoking,
        alcohol,
        holiday,
        const DeepCollectionEquality().hash(_sunnyDayHobbies),
        const DeepCollectionEquality().hash(_rainyDayHobbies),
        const DeepCollectionEquality().hash(_subPhotoUrls),
        isChanged
      ]);

  @override
  String toString() {
    return 'ProfileEditState(name: $name, gender: $gender, birthDate: $birthDate, address: $address, mainPhotoUrl: $mainPhotoUrl, introduction: $introduction, height: $height, bodyShape: $bodyShape, annualIncome: $annualIncome, bloodType: $bloodType, hometown: $hometown, communicationStyle: $communicationStyle, occupation: $occupation, education: $education, smoking: $smoking, alcohol: $alcohol, holiday: $holiday, sunnyDayHobbies: $sunnyDayHobbies, rainyDayHobbies: $rainyDayHobbies, subPhotoUrls: $subPhotoUrls, isChanged: $isChanged)';
  }
}

/// @nodoc
abstract mixin class _$ProfileEditStateCopyWith<$Res>
    implements $ProfileEditStateCopyWith<$Res> {
  factory _$ProfileEditStateCopyWith(
          _ProfileEditState value, $Res Function(_ProfileEditState) _then) =
      __$ProfileEditStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String name,
      Gender gender,
      @YyyyMmDdDateConverter() DateTime birthDate,
      Address address,
      String mainPhotoUrl,
      String introduction,
      Height? height,
      BodyShape? bodyShape,
      AnnualIncome? annualIncome,
      BloodType? bloodType,
      Address? hometown,
      CommunicationStyle? communicationStyle,
      Occupation? occupation,
      Education? education,
      Smoking? smoking,
      Alcohol? alcohol,
      Holiday? holiday,
      List<String>? sunnyDayHobbies,
      List<String>? rainyDayHobbies,
      List<String>? subPhotoUrls,
      bool isChanged});
}

/// @nodoc
class __$ProfileEditStateCopyWithImpl<$Res>
    implements _$ProfileEditStateCopyWith<$Res> {
  __$ProfileEditStateCopyWithImpl(this._self, this._then);

  final _ProfileEditState _self;
  final $Res Function(_ProfileEditState) _then;

  /// Create a copy of ProfileEditState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? gender = null,
    Object? birthDate = null,
    Object? address = null,
    Object? mainPhotoUrl = null,
    Object? introduction = null,
    Object? height = freezed,
    Object? bodyShape = freezed,
    Object? annualIncome = freezed,
    Object? bloodType = freezed,
    Object? hometown = freezed,
    Object? communicationStyle = freezed,
    Object? occupation = freezed,
    Object? education = freezed,
    Object? smoking = freezed,
    Object? alcohol = freezed,
    Object? holiday = freezed,
    Object? sunnyDayHobbies = freezed,
    Object? rainyDayHobbies = freezed,
    Object? subPhotoUrls = freezed,
    Object? isChanged = null,
  }) {
    return _then(_ProfileEditState(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _self.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender,
      birthDate: null == birthDate
          ? _self.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      address: null == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
      mainPhotoUrl: null == mainPhotoUrl
          ? _self.mainPhotoUrl
          : mainPhotoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      introduction: null == introduction
          ? _self.introduction
          : introduction // ignore: cast_nullable_to_non_nullable
              as String,
      height: freezed == height
          ? _self.height
          : height // ignore: cast_nullable_to_non_nullable
              as Height?,
      bodyShape: freezed == bodyShape
          ? _self.bodyShape
          : bodyShape // ignore: cast_nullable_to_non_nullable
              as BodyShape?,
      annualIncome: freezed == annualIncome
          ? _self.annualIncome
          : annualIncome // ignore: cast_nullable_to_non_nullable
              as AnnualIncome?,
      bloodType: freezed == bloodType
          ? _self.bloodType
          : bloodType // ignore: cast_nullable_to_non_nullable
              as BloodType?,
      hometown: freezed == hometown
          ? _self.hometown
          : hometown // ignore: cast_nullable_to_non_nullable
              as Address?,
      communicationStyle: freezed == communicationStyle
          ? _self.communicationStyle
          : communicationStyle // ignore: cast_nullable_to_non_nullable
              as CommunicationStyle?,
      occupation: freezed == occupation
          ? _self.occupation
          : occupation // ignore: cast_nullable_to_non_nullable
              as Occupation?,
      education: freezed == education
          ? _self.education
          : education // ignore: cast_nullable_to_non_nullable
              as Education?,
      smoking: freezed == smoking
          ? _self.smoking
          : smoking // ignore: cast_nullable_to_non_nullable
              as Smoking?,
      alcohol: freezed == alcohol
          ? _self.alcohol
          : alcohol // ignore: cast_nullable_to_non_nullable
              as Alcohol?,
      holiday: freezed == holiday
          ? _self.holiday
          : holiday // ignore: cast_nullable_to_non_nullable
              as Holiday?,
      sunnyDayHobbies: freezed == sunnyDayHobbies
          ? _self._sunnyDayHobbies
          : sunnyDayHobbies // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      rainyDayHobbies: freezed == rainyDayHobbies
          ? _self._rainyDayHobbies
          : rainyDayHobbies // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      subPhotoUrls: freezed == subPhotoUrls
          ? _self._subPhotoUrls
          : subPhotoUrls // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      isChanged: null == isChanged
          ? _self.isChanged
          : isChanged // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
