// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ai_matching_user_read_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AIMatchingUserReadModel {
  String get id;
  String get name;
  @YyyyMmDdDateConverter()
  DateTime get birthDate;
  Address get address;
  String get mainPhotoUrl;
  String get typeImageUrl;
  WeatherPersonalityCode get typeCode;
  String get typeName;
  bool? get isTodayReported;

  /// Create a copy of AIMatchingUserReadModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AIMatchingUserReadModelCopyWith<AIMatchingUserReadModel> get copyWith =>
      _$AIMatchingUserReadModelCopyWithImpl<AIMatchingUserReadModel>(
          this as AIMatchingUserReadModel, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AIMatchingUserReadModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.birthDate, birthDate) ||
                other.birthDate == birthDate) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.mainPhotoUrl, mainPhotoUrl) ||
                other.mainPhotoUrl == mainPhotoUrl) &&
            (identical(other.typeImageUrl, typeImageUrl) ||
                other.typeImageUrl == typeImageUrl) &&
            (identical(other.typeCode, typeCode) ||
                other.typeCode == typeCode) &&
            (identical(other.typeName, typeName) ||
                other.typeName == typeName) &&
            (identical(other.isTodayReported, isTodayReported) ||
                other.isTodayReported == isTodayReported));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, birthDate, address,
      mainPhotoUrl, typeImageUrl, typeCode, typeName, isTodayReported);

  @override
  String toString() {
    return 'AIMatchingUserReadModel(id: $id, name: $name, birthDate: $birthDate, address: $address, mainPhotoUrl: $mainPhotoUrl, typeImageUrl: $typeImageUrl, typeCode: $typeCode, typeName: $typeName, isTodayReported: $isTodayReported)';
  }
}

/// @nodoc
abstract mixin class $AIMatchingUserReadModelCopyWith<$Res> {
  factory $AIMatchingUserReadModelCopyWith(AIMatchingUserReadModel value,
          $Res Function(AIMatchingUserReadModel) _then) =
      _$AIMatchingUserReadModelCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String name,
      @YyyyMmDdDateConverter() DateTime birthDate,
      Address address,
      String mainPhotoUrl,
      String typeImageUrl,
      WeatherPersonalityCode typeCode,
      String typeName,
      bool? isTodayReported});
}

/// @nodoc
class _$AIMatchingUserReadModelCopyWithImpl<$Res>
    implements $AIMatchingUserReadModelCopyWith<$Res> {
  _$AIMatchingUserReadModelCopyWithImpl(this._self, this._then);

  final AIMatchingUserReadModel _self;
  final $Res Function(AIMatchingUserReadModel) _then;

  /// Create a copy of AIMatchingUserReadModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? birthDate = null,
    Object? address = null,
    Object? mainPhotoUrl = null,
    Object? typeImageUrl = null,
    Object? typeCode = null,
    Object? typeName = null,
    Object? isTodayReported = freezed,
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
      typeImageUrl: null == typeImageUrl
          ? _self.typeImageUrl
          : typeImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      typeCode: null == typeCode
          ? _self.typeCode
          : typeCode // ignore: cast_nullable_to_non_nullable
              as WeatherPersonalityCode,
      typeName: null == typeName
          ? _self.typeName
          : typeName // ignore: cast_nullable_to_non_nullable
              as String,
      isTodayReported: freezed == isTodayReported
          ? _self.isTodayReported
          : isTodayReported // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// Adds pattern-matching-related methods to [AIMatchingUserReadModel].
extension AIMatchingUserReadModelPatterns on AIMatchingUserReadModel {
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
    TResult Function(_AIMatchingUserReadModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AIMatchingUserReadModel() when $default != null:
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
    TResult Function(_AIMatchingUserReadModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AIMatchingUserReadModel():
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
    TResult? Function(_AIMatchingUserReadModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AIMatchingUserReadModel() when $default != null:
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
            @YyyyMmDdDateConverter() DateTime birthDate,
            Address address,
            String mainPhotoUrl,
            String typeImageUrl,
            WeatherPersonalityCode typeCode,
            String typeName,
            bool? isTodayReported)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AIMatchingUserReadModel() when $default != null:
        return $default(
            _that.id,
            _that.name,
            _that.birthDate,
            _that.address,
            _that.mainPhotoUrl,
            _that.typeImageUrl,
            _that.typeCode,
            _that.typeName,
            _that.isTodayReported);
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
            @YyyyMmDdDateConverter() DateTime birthDate,
            Address address,
            String mainPhotoUrl,
            String typeImageUrl,
            WeatherPersonalityCode typeCode,
            String typeName,
            bool? isTodayReported)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AIMatchingUserReadModel():
        return $default(
            _that.id,
            _that.name,
            _that.birthDate,
            _that.address,
            _that.mainPhotoUrl,
            _that.typeImageUrl,
            _that.typeCode,
            _that.typeName,
            _that.isTodayReported);
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
            @YyyyMmDdDateConverter() DateTime birthDate,
            Address address,
            String mainPhotoUrl,
            String typeImageUrl,
            WeatherPersonalityCode typeCode,
            String typeName,
            bool? isTodayReported)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AIMatchingUserReadModel() when $default != null:
        return $default(
            _that.id,
            _that.name,
            _that.birthDate,
            _that.address,
            _that.mainPhotoUrl,
            _that.typeImageUrl,
            _that.typeCode,
            _that.typeName,
            _that.isTodayReported);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _AIMatchingUserReadModel implements AIMatchingUserReadModel {
  const _AIMatchingUserReadModel(
      {required this.id,
      required this.name,
      @YyyyMmDdDateConverter() required this.birthDate,
      required this.address,
      required this.mainPhotoUrl,
      required this.typeImageUrl,
      required this.typeCode,
      required this.typeName,
      this.isTodayReported});

  @override
  final String id;
  @override
  final String name;
  @override
  @YyyyMmDdDateConverter()
  final DateTime birthDate;
  @override
  final Address address;
  @override
  final String mainPhotoUrl;
  @override
  final String typeImageUrl;
  @override
  final WeatherPersonalityCode typeCode;
  @override
  final String typeName;
  @override
  final bool? isTodayReported;

  /// Create a copy of AIMatchingUserReadModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AIMatchingUserReadModelCopyWith<_AIMatchingUserReadModel> get copyWith =>
      __$AIMatchingUserReadModelCopyWithImpl<_AIMatchingUserReadModel>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AIMatchingUserReadModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.birthDate, birthDate) ||
                other.birthDate == birthDate) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.mainPhotoUrl, mainPhotoUrl) ||
                other.mainPhotoUrl == mainPhotoUrl) &&
            (identical(other.typeImageUrl, typeImageUrl) ||
                other.typeImageUrl == typeImageUrl) &&
            (identical(other.typeCode, typeCode) ||
                other.typeCode == typeCode) &&
            (identical(other.typeName, typeName) ||
                other.typeName == typeName) &&
            (identical(other.isTodayReported, isTodayReported) ||
                other.isTodayReported == isTodayReported));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, birthDate, address,
      mainPhotoUrl, typeImageUrl, typeCode, typeName, isTodayReported);

  @override
  String toString() {
    return 'AIMatchingUserReadModel(id: $id, name: $name, birthDate: $birthDate, address: $address, mainPhotoUrl: $mainPhotoUrl, typeImageUrl: $typeImageUrl, typeCode: $typeCode, typeName: $typeName, isTodayReported: $isTodayReported)';
  }
}

/// @nodoc
abstract mixin class _$AIMatchingUserReadModelCopyWith<$Res>
    implements $AIMatchingUserReadModelCopyWith<$Res> {
  factory _$AIMatchingUserReadModelCopyWith(_AIMatchingUserReadModel value,
          $Res Function(_AIMatchingUserReadModel) _then) =
      __$AIMatchingUserReadModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      @YyyyMmDdDateConverter() DateTime birthDate,
      Address address,
      String mainPhotoUrl,
      String typeImageUrl,
      WeatherPersonalityCode typeCode,
      String typeName,
      bool? isTodayReported});
}

/// @nodoc
class __$AIMatchingUserReadModelCopyWithImpl<$Res>
    implements _$AIMatchingUserReadModelCopyWith<$Res> {
  __$AIMatchingUserReadModelCopyWithImpl(this._self, this._then);

  final _AIMatchingUserReadModel _self;
  final $Res Function(_AIMatchingUserReadModel) _then;

  /// Create a copy of AIMatchingUserReadModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? birthDate = null,
    Object? address = null,
    Object? mainPhotoUrl = null,
    Object? typeImageUrl = null,
    Object? typeCode = null,
    Object? typeName = null,
    Object? isTodayReported = freezed,
  }) {
    return _then(_AIMatchingUserReadModel(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
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
      typeImageUrl: null == typeImageUrl
          ? _self.typeImageUrl
          : typeImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      typeCode: null == typeCode
          ? _self.typeCode
          : typeCode // ignore: cast_nullable_to_non_nullable
              as WeatherPersonalityCode,
      typeName: null == typeName
          ? _self.typeName
          : typeName // ignore: cast_nullable_to_non_nullable
              as String,
      isTodayReported: freezed == isTodayReported
          ? _self.isTodayReported
          : isTodayReported // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

// dart format on
