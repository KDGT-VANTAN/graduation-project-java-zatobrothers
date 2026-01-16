// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_registration_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserRegistrationState {
  Gender? get gender;
  DateTime? get birthDate;
  Address? get address;
  String? get name;
  String? get introduction;
  String? get mainPhoto;
  String? get email;
  int get currentPage;
  int get totalPages;
  UserRegistrationStatus get status;
  String? get errorMessage;

  /// Create a copy of UserRegistrationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UserRegistrationStateCopyWith<UserRegistrationState> get copyWith =>
      _$UserRegistrationStateCopyWithImpl<UserRegistrationState>(
          this as UserRegistrationState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserRegistrationState &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.birthDate, birthDate) ||
                other.birthDate == birthDate) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.introduction, introduction) ||
                other.introduction == introduction) &&
            (identical(other.mainPhoto, mainPhoto) ||
                other.mainPhoto == mainPhoto) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      gender,
      birthDate,
      address,
      name,
      introduction,
      mainPhoto,
      email,
      currentPage,
      totalPages,
      status,
      errorMessage);

  @override
  String toString() {
    return 'UserRegistrationState(gender: $gender, birthDate: $birthDate, address: $address, name: $name, introduction: $introduction, mainPhoto: $mainPhoto, email: $email, currentPage: $currentPage, totalPages: $totalPages, status: $status, errorMessage: $errorMessage)';
  }
}

/// @nodoc
abstract mixin class $UserRegistrationStateCopyWith<$Res> {
  factory $UserRegistrationStateCopyWith(UserRegistrationState value,
          $Res Function(UserRegistrationState) _then) =
      _$UserRegistrationStateCopyWithImpl;
  @useResult
  $Res call(
      {Gender? gender,
      DateTime? birthDate,
      Address? address,
      String? name,
      String? introduction,
      String? mainPhoto,
      String? email,
      int currentPage,
      int totalPages,
      UserRegistrationStatus status,
      String? errorMessage});
}

/// @nodoc
class _$UserRegistrationStateCopyWithImpl<$Res>
    implements $UserRegistrationStateCopyWith<$Res> {
  _$UserRegistrationStateCopyWithImpl(this._self, this._then);

  final UserRegistrationState _self;
  final $Res Function(UserRegistrationState) _then;

  /// Create a copy of UserRegistrationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gender = freezed,
    Object? birthDate = freezed,
    Object? address = freezed,
    Object? name = freezed,
    Object? introduction = freezed,
    Object? mainPhoto = freezed,
    Object? email = freezed,
    Object? currentPage = null,
    Object? totalPages = null,
    Object? status = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_self.copyWith(
      gender: freezed == gender
          ? _self.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender?,
      birthDate: freezed == birthDate
          ? _self.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      address: freezed == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address?,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      introduction: freezed == introduction
          ? _self.introduction
          : introduction // ignore: cast_nullable_to_non_nullable
              as String?,
      mainPhoto: freezed == mainPhoto
          ? _self.mainPhoto
          : mainPhoto // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      currentPage: null == currentPage
          ? _self.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _self.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as UserRegistrationStatus,
      errorMessage: freezed == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [UserRegistrationState].
extension UserRegistrationStatePatterns on UserRegistrationState {
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
    TResult Function(_UserRegistrationState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UserRegistrationState() when $default != null:
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
    TResult Function(_UserRegistrationState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserRegistrationState():
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
    TResult? Function(_UserRegistrationState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserRegistrationState() when $default != null:
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
            Gender? gender,
            DateTime? birthDate,
            Address? address,
            String? name,
            String? introduction,
            String? mainPhoto,
            String? email,
            int currentPage,
            int totalPages,
            UserRegistrationStatus status,
            String? errorMessage)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UserRegistrationState() when $default != null:
        return $default(
            _that.gender,
            _that.birthDate,
            _that.address,
            _that.name,
            _that.introduction,
            _that.mainPhoto,
            _that.email,
            _that.currentPage,
            _that.totalPages,
            _that.status,
            _that.errorMessage);
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
            Gender? gender,
            DateTime? birthDate,
            Address? address,
            String? name,
            String? introduction,
            String? mainPhoto,
            String? email,
            int currentPage,
            int totalPages,
            UserRegistrationStatus status,
            String? errorMessage)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserRegistrationState():
        return $default(
            _that.gender,
            _that.birthDate,
            _that.address,
            _that.name,
            _that.introduction,
            _that.mainPhoto,
            _that.email,
            _that.currentPage,
            _that.totalPages,
            _that.status,
            _that.errorMessage);
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
            Gender? gender,
            DateTime? birthDate,
            Address? address,
            String? name,
            String? introduction,
            String? mainPhoto,
            String? email,
            int currentPage,
            int totalPages,
            UserRegistrationStatus status,
            String? errorMessage)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserRegistrationState() when $default != null:
        return $default(
            _that.gender,
            _that.birthDate,
            _that.address,
            _that.name,
            _that.introduction,
            _that.mainPhoto,
            _that.email,
            _that.currentPage,
            _that.totalPages,
            _that.status,
            _that.errorMessage);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _UserRegistrationState extends UserRegistrationState {
  const _UserRegistrationState(
      {this.gender,
      this.birthDate,
      this.address,
      this.name,
      this.introduction,
      this.mainPhoto,
      this.email,
      this.currentPage = 1,
      this.totalPages = 6,
      this.status = UserRegistrationStatus.idle,
      this.errorMessage})
      : super._();

  @override
  final Gender? gender;
  @override
  final DateTime? birthDate;
  @override
  final Address? address;
  @override
  final String? name;
  @override
  final String? introduction;
  @override
  final String? mainPhoto;
  @override
  final String? email;
  @override
  @JsonKey()
  final int currentPage;
  @override
  @JsonKey()
  final int totalPages;
  @override
  @JsonKey()
  final UserRegistrationStatus status;
  @override
  final String? errorMessage;

  /// Create a copy of UserRegistrationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UserRegistrationStateCopyWith<_UserRegistrationState> get copyWith =>
      __$UserRegistrationStateCopyWithImpl<_UserRegistrationState>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserRegistrationState &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.birthDate, birthDate) ||
                other.birthDate == birthDate) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.introduction, introduction) ||
                other.introduction == introduction) &&
            (identical(other.mainPhoto, mainPhoto) ||
                other.mainPhoto == mainPhoto) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      gender,
      birthDate,
      address,
      name,
      introduction,
      mainPhoto,
      email,
      currentPage,
      totalPages,
      status,
      errorMessage);

  @override
  String toString() {
    return 'UserRegistrationState(gender: $gender, birthDate: $birthDate, address: $address, name: $name, introduction: $introduction, mainPhoto: $mainPhoto, email: $email, currentPage: $currentPage, totalPages: $totalPages, status: $status, errorMessage: $errorMessage)';
  }
}

/// @nodoc
abstract mixin class _$UserRegistrationStateCopyWith<$Res>
    implements $UserRegistrationStateCopyWith<$Res> {
  factory _$UserRegistrationStateCopyWith(_UserRegistrationState value,
          $Res Function(_UserRegistrationState) _then) =
      __$UserRegistrationStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {Gender? gender,
      DateTime? birthDate,
      Address? address,
      String? name,
      String? introduction,
      String? mainPhoto,
      String? email,
      int currentPage,
      int totalPages,
      UserRegistrationStatus status,
      String? errorMessage});
}

/// @nodoc
class __$UserRegistrationStateCopyWithImpl<$Res>
    implements _$UserRegistrationStateCopyWith<$Res> {
  __$UserRegistrationStateCopyWithImpl(this._self, this._then);

  final _UserRegistrationState _self;
  final $Res Function(_UserRegistrationState) _then;

  /// Create a copy of UserRegistrationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? gender = freezed,
    Object? birthDate = freezed,
    Object? address = freezed,
    Object? name = freezed,
    Object? introduction = freezed,
    Object? mainPhoto = freezed,
    Object? email = freezed,
    Object? currentPage = null,
    Object? totalPages = null,
    Object? status = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_UserRegistrationState(
      gender: freezed == gender
          ? _self.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender?,
      birthDate: freezed == birthDate
          ? _self.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      address: freezed == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address?,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      introduction: freezed == introduction
          ? _self.introduction
          : introduction // ignore: cast_nullable_to_non_nullable
              as String?,
      mainPhoto: freezed == mainPhoto
          ? _self.mainPhoto
          : mainPhoto // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      currentPage: null == currentPage
          ? _self.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _self.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as UserRegistrationStatus,
      errorMessage: freezed == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
