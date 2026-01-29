// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_with_profile_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserWithProfileDto {
  String get id;
  String get name;
  Gender get gender;
  @YyyyMmDdDateConverter()
  DateTime get birthDate;
  Address get address;
  String get mainPhotoUrl;
  String get introduction;
  bool? get isTodayReported;
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

  /// Create a copy of UserWithProfileDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UserWithProfileDtoCopyWith<UserWithProfileDto> get copyWith =>
      _$UserWithProfileDtoCopyWithImpl<UserWithProfileDto>(
          this as UserWithProfileDto, _$identity);

  /// Serializes this UserWithProfileDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserWithProfileDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.birthDate, birthDate) ||
                other.birthDate == birthDate) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.mainPhotoUrl, mainPhotoUrl) ||
                other.mainPhotoUrl == mainPhotoUrl) &&
            (identical(other.introduction, introduction) ||
                other.introduction == introduction) &&
            (identical(other.isTodayReported, isTodayReported) ||
                other.isTodayReported == isTodayReported) &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        name,
        gender,
        birthDate,
        address,
        mainPhotoUrl,
        introduction,
        isTodayReported,
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
    return 'UserWithProfileDto(id: $id, name: $name, gender: $gender, birthDate: $birthDate, address: $address, mainPhotoUrl: $mainPhotoUrl, introduction: $introduction, isTodayReported: $isTodayReported, height: $height, bodyShape: $bodyShape, annualIncome: $annualIncome, bloodType: $bloodType, hometown: $hometown, communicationStyle: $communicationStyle, occupation: $occupation, education: $education, smoking: $smoking, alcohol: $alcohol, holiday: $holiday, sunnyDayHobbies: $sunnyDayHobbies, rainyDayHobbies: $rainyDayHobbies, subPhotos: $subPhotos)';
  }
}

/// @nodoc
abstract mixin class $UserWithProfileDtoCopyWith<$Res> {
  factory $UserWithProfileDtoCopyWith(
          UserWithProfileDto value, $Res Function(UserWithProfileDto) _then) =
      _$UserWithProfileDtoCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String name,
      Gender gender,
      @YyyyMmDdDateConverter() DateTime birthDate,
      Address address,
      String mainPhotoUrl,
      String introduction,
      bool? isTodayReported,
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
class _$UserWithProfileDtoCopyWithImpl<$Res>
    implements $UserWithProfileDtoCopyWith<$Res> {
  _$UserWithProfileDtoCopyWithImpl(this._self, this._then);

  final UserWithProfileDto _self;
  final $Res Function(UserWithProfileDto) _then;

  /// Create a copy of UserWithProfileDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? gender = null,
    Object? birthDate = null,
    Object? address = null,
    Object? mainPhotoUrl = null,
    Object? introduction = null,
    Object? isTodayReported = freezed,
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
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
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
      isTodayReported: freezed == isTodayReported
          ? _self.isTodayReported
          : isTodayReported // ignore: cast_nullable_to_non_nullable
              as bool?,
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

/// Adds pattern-matching-related methods to [UserWithProfileDto].
extension UserWithProfileDtoPatterns on UserWithProfileDto {
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
    TResult Function(_UserWithProfileDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UserWithProfileDto() when $default != null:
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
    TResult Function(_UserWithProfileDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserWithProfileDto():
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
    TResult? Function(_UserWithProfileDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserWithProfileDto() when $default != null:
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
            String id,
            String name,
            Gender gender,
            @YyyyMmDdDateConverter() DateTime birthDate,
            Address address,
            String mainPhotoUrl,
            String introduction,
            bool? isTodayReported,
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
      case _UserWithProfileDto() when $default != null:
        return $default(
            _that.id,
            _that.name,
            _that.gender,
            _that.birthDate,
            _that.address,
            _that.mainPhotoUrl,
            _that.introduction,
            _that.isTodayReported,
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
            String id,
            String name,
            Gender gender,
            @YyyyMmDdDateConverter() DateTime birthDate,
            Address address,
            String mainPhotoUrl,
            String introduction,
            bool? isTodayReported,
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
      case _UserWithProfileDto():
        return $default(
            _that.id,
            _that.name,
            _that.gender,
            _that.birthDate,
            _that.address,
            _that.mainPhotoUrl,
            _that.introduction,
            _that.isTodayReported,
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
            String id,
            String name,
            Gender gender,
            @YyyyMmDdDateConverter() DateTime birthDate,
            Address address,
            String mainPhotoUrl,
            String introduction,
            bool? isTodayReported,
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
      case _UserWithProfileDto() when $default != null:
        return $default(
            _that.id,
            _that.name,
            _that.gender,
            _that.birthDate,
            _that.address,
            _that.mainPhotoUrl,
            _that.introduction,
            _that.isTodayReported,
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
@JsonSerializable()
class _UserWithProfileDto implements UserWithProfileDto {
  const _UserWithProfileDto(
      {required this.id,
      required this.name,
      required this.gender,
      @YyyyMmDdDateConverter() required this.birthDate,
      required this.address,
      required this.mainPhotoUrl,
      required this.introduction,
      this.isTodayReported,
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
  factory _UserWithProfileDto.fromJson(Map<String, dynamic> json) =>
      _$UserWithProfileDtoFromJson(json);

  @override
  final String id;
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
  final bool? isTodayReported;
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

  /// Create a copy of UserWithProfileDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UserWithProfileDtoCopyWith<_UserWithProfileDto> get copyWith =>
      __$UserWithProfileDtoCopyWithImpl<_UserWithProfileDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UserWithProfileDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserWithProfileDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.birthDate, birthDate) ||
                other.birthDate == birthDate) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.mainPhotoUrl, mainPhotoUrl) ||
                other.mainPhotoUrl == mainPhotoUrl) &&
            (identical(other.introduction, introduction) ||
                other.introduction == introduction) &&
            (identical(other.isTodayReported, isTodayReported) ||
                other.isTodayReported == isTodayReported) &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        name,
        gender,
        birthDate,
        address,
        mainPhotoUrl,
        introduction,
        isTodayReported,
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
    return 'UserWithProfileDto(id: $id, name: $name, gender: $gender, birthDate: $birthDate, address: $address, mainPhotoUrl: $mainPhotoUrl, introduction: $introduction, isTodayReported: $isTodayReported, height: $height, bodyShape: $bodyShape, annualIncome: $annualIncome, bloodType: $bloodType, hometown: $hometown, communicationStyle: $communicationStyle, occupation: $occupation, education: $education, smoking: $smoking, alcohol: $alcohol, holiday: $holiday, sunnyDayHobbies: $sunnyDayHobbies, rainyDayHobbies: $rainyDayHobbies, subPhotos: $subPhotos)';
  }
}

/// @nodoc
abstract mixin class _$UserWithProfileDtoCopyWith<$Res>
    implements $UserWithProfileDtoCopyWith<$Res> {
  factory _$UserWithProfileDtoCopyWith(
          _UserWithProfileDto value, $Res Function(_UserWithProfileDto) _then) =
      __$UserWithProfileDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      Gender gender,
      @YyyyMmDdDateConverter() DateTime birthDate,
      Address address,
      String mainPhotoUrl,
      String introduction,
      bool? isTodayReported,
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
class __$UserWithProfileDtoCopyWithImpl<$Res>
    implements _$UserWithProfileDtoCopyWith<$Res> {
  __$UserWithProfileDtoCopyWithImpl(this._self, this._then);

  final _UserWithProfileDto _self;
  final $Res Function(_UserWithProfileDto) _then;

  /// Create a copy of UserWithProfileDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? gender = null,
    Object? birthDate = null,
    Object? address = null,
    Object? mainPhotoUrl = null,
    Object? introduction = null,
    Object? isTodayReported = freezed,
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
    return _then(_UserWithProfileDto(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
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
      isTodayReported: freezed == isTodayReported
          ? _self.isTodayReported
          : isTodayReported // ignore: cast_nullable_to_non_nullable
              as bool?,
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
