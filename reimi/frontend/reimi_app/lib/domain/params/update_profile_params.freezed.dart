// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_profile_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UpdateProfileParams {
  String get name;
  Gender get gender;
  Address get address;
  String get mainPhoto;
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
  List<String>? get subPhotos;

  /// Create a copy of UpdateProfileParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UpdateProfileParamsCopyWith<UpdateProfileParams> get copyWith =>
      _$UpdateProfileParamsCopyWithImpl<UpdateProfileParams>(
          this as UpdateProfileParams, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdateProfileParams &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.mainPhoto, mainPhoto) ||
                other.mainPhoto == mainPhoto) &&
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
            const DeepCollectionEquality().equals(other.subPhotos, subPhotos));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        name,
        gender,
        address,
        mainPhoto,
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
        const DeepCollectionEquality().hash(subPhotos)
      ]);

  @override
  String toString() {
    return 'UpdateProfileParams(name: $name, gender: $gender, address: $address, mainPhoto: $mainPhoto, introduction: $introduction, height: $height, bodyShape: $bodyShape, annualIncome: $annualIncome, bloodType: $bloodType, hometown: $hometown, communicationStyle: $communicationStyle, occupation: $occupation, education: $education, smoking: $smoking, alcohol: $alcohol, holiday: $holiday, sunnyDayHobbies: $sunnyDayHobbies, rainyDayHobbies: $rainyDayHobbies, subPhotos: $subPhotos)';
  }
}

/// @nodoc
abstract mixin class $UpdateProfileParamsCopyWith<$Res> {
  factory $UpdateProfileParamsCopyWith(
          UpdateProfileParams value, $Res Function(UpdateProfileParams) _then) =
      _$UpdateProfileParamsCopyWithImpl;
  @useResult
  $Res call(
      {String name,
      Gender gender,
      Address address,
      String mainPhoto,
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
      List<String>? subPhotos});
}

/// @nodoc
class _$UpdateProfileParamsCopyWithImpl<$Res>
    implements $UpdateProfileParamsCopyWith<$Res> {
  _$UpdateProfileParamsCopyWithImpl(this._self, this._then);

  final UpdateProfileParams _self;
  final $Res Function(UpdateProfileParams) _then;

  /// Create a copy of UpdateProfileParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? gender = null,
    Object? address = null,
    Object? mainPhoto = null,
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
    Object? subPhotos = freezed,
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
      address: null == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
      mainPhoto: null == mainPhoto
          ? _self.mainPhoto
          : mainPhoto // ignore: cast_nullable_to_non_nullable
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
      subPhotos: freezed == subPhotos
          ? _self.subPhotos
          : subPhotos // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [UpdateProfileParams].
extension UpdateProfileParamsPatterns on UpdateProfileParams {
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
    TResult Function(_UpdateProfileParams value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UpdateProfileParams() when $default != null:
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
    TResult Function(_UpdateProfileParams value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateProfileParams():
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
    TResult? Function(_UpdateProfileParams value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateProfileParams() when $default != null:
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
            Address address,
            String mainPhoto,
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
            List<String>? subPhotos)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UpdateProfileParams() when $default != null:
        return $default(
            _that.name,
            _that.gender,
            _that.address,
            _that.mainPhoto,
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
            _that.subPhotos);
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
            Address address,
            String mainPhoto,
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
            List<String>? subPhotos)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateProfileParams():
        return $default(
            _that.name,
            _that.gender,
            _that.address,
            _that.mainPhoto,
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
            _that.subPhotos);
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
            Address address,
            String mainPhoto,
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
            List<String>? subPhotos)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateProfileParams() when $default != null:
        return $default(
            _that.name,
            _that.gender,
            _that.address,
            _that.mainPhoto,
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
            _that.subPhotos);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _UpdateProfileParams implements UpdateProfileParams {
  const _UpdateProfileParams(
      {required this.name,
      required this.gender,
      required this.address,
      required this.mainPhoto,
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
      final List<String>? subPhotos})
      : _sunnyDayHobbies = sunnyDayHobbies,
        _rainyDayHobbies = rainyDayHobbies,
        _subPhotos = subPhotos;

  @override
  final String name;
  @override
  final Gender gender;
  @override
  final Address address;
  @override
  final String mainPhoto;
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

  final List<String>? _subPhotos;
  @override
  List<String>? get subPhotos {
    final value = _subPhotos;
    if (value == null) return null;
    if (_subPhotos is EqualUnmodifiableListView) return _subPhotos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of UpdateProfileParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UpdateProfileParamsCopyWith<_UpdateProfileParams> get copyWith =>
      __$UpdateProfileParamsCopyWithImpl<_UpdateProfileParams>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateProfileParams &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.mainPhoto, mainPhoto) ||
                other.mainPhoto == mainPhoto) &&
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
                .equals(other._subPhotos, _subPhotos));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        name,
        gender,
        address,
        mainPhoto,
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
        const DeepCollectionEquality().hash(_subPhotos)
      ]);

  @override
  String toString() {
    return 'UpdateProfileParams(name: $name, gender: $gender, address: $address, mainPhoto: $mainPhoto, introduction: $introduction, height: $height, bodyShape: $bodyShape, annualIncome: $annualIncome, bloodType: $bloodType, hometown: $hometown, communicationStyle: $communicationStyle, occupation: $occupation, education: $education, smoking: $smoking, alcohol: $alcohol, holiday: $holiday, sunnyDayHobbies: $sunnyDayHobbies, rainyDayHobbies: $rainyDayHobbies, subPhotos: $subPhotos)';
  }
}

/// @nodoc
abstract mixin class _$UpdateProfileParamsCopyWith<$Res>
    implements $UpdateProfileParamsCopyWith<$Res> {
  factory _$UpdateProfileParamsCopyWith(_UpdateProfileParams value,
          $Res Function(_UpdateProfileParams) _then) =
      __$UpdateProfileParamsCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String name,
      Gender gender,
      Address address,
      String mainPhoto,
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
      List<String>? subPhotos});
}

/// @nodoc
class __$UpdateProfileParamsCopyWithImpl<$Res>
    implements _$UpdateProfileParamsCopyWith<$Res> {
  __$UpdateProfileParamsCopyWithImpl(this._self, this._then);

  final _UpdateProfileParams _self;
  final $Res Function(_UpdateProfileParams) _then;

  /// Create a copy of UpdateProfileParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? gender = null,
    Object? address = null,
    Object? mainPhoto = null,
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
    Object? subPhotos = freezed,
  }) {
    return _then(_UpdateProfileParams(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _self.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender,
      address: null == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
      mainPhoto: null == mainPhoto
          ? _self.mainPhoto
          : mainPhoto // ignore: cast_nullable_to_non_nullable
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
      subPhotos: freezed == subPhotos
          ? _self._subPhotos
          : subPhotos // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

// dart format on
