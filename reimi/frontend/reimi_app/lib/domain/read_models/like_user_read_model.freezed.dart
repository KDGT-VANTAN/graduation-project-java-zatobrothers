// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'like_user_read_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LikeUserReadModel {
  String get id;
  String get name;
  @YyyyMmDdDateConverter()
  DateTime get birthDate;
  Address get address;
  String get mainPhotoUrl;
  String? get introduction;
  bool? get isTodayReported;

  /// Create a copy of LikeUserReadModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LikeUserReadModelCopyWith<LikeUserReadModel> get copyWith =>
      _$LikeUserReadModelCopyWithImpl<LikeUserReadModel>(
          this as LikeUserReadModel, _$identity);

  /// Serializes this LikeUserReadModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LikeUserReadModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.birthDate, birthDate) ||
                other.birthDate == birthDate) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.mainPhotoUrl, mainPhotoUrl) ||
                other.mainPhotoUrl == mainPhotoUrl) &&
            (identical(other.introduction, introduction) ||
                other.introduction == introduction) &&
            (identical(other.isTodayReported, isTodayReported) ||
                other.isTodayReported == isTodayReported));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, birthDate, address,
      mainPhotoUrl, introduction, isTodayReported);

  @override
  String toString() {
    return 'LikeUserReadModel(id: $id, name: $name, birthDate: $birthDate, address: $address, mainPhotoUrl: $mainPhotoUrl, introduction: $introduction, isTodayReported: $isTodayReported)';
  }
}

/// @nodoc
abstract mixin class $LikeUserReadModelCopyWith<$Res> {
  factory $LikeUserReadModelCopyWith(
          LikeUserReadModel value, $Res Function(LikeUserReadModel) _then) =
      _$LikeUserReadModelCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String name,
      @YyyyMmDdDateConverter() DateTime birthDate,
      Address address,
      String mainPhotoUrl,
      String? introduction,
      bool? isTodayReported});
}

/// @nodoc
class _$LikeUserReadModelCopyWithImpl<$Res>
    implements $LikeUserReadModelCopyWith<$Res> {
  _$LikeUserReadModelCopyWithImpl(this._self, this._then);

  final LikeUserReadModel _self;
  final $Res Function(LikeUserReadModel) _then;

  /// Create a copy of LikeUserReadModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? birthDate = null,
    Object? address = null,
    Object? mainPhotoUrl = null,
    Object? introduction = freezed,
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
      introduction: freezed == introduction
          ? _self.introduction
          : introduction // ignore: cast_nullable_to_non_nullable
              as String?,
      isTodayReported: freezed == isTodayReported
          ? _self.isTodayReported
          : isTodayReported // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// Adds pattern-matching-related methods to [LikeUserReadModel].
extension LikeUserReadModelPatterns on LikeUserReadModel {
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
    TResult Function(_LikeUserReadModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LikeUserReadModel() when $default != null:
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
    TResult Function(_LikeUserReadModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LikeUserReadModel():
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
    TResult? Function(_LikeUserReadModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LikeUserReadModel() when $default != null:
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
            String? introduction,
            bool? isTodayReported)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LikeUserReadModel() when $default != null:
        return $default(_that.id, _that.name, _that.birthDate, _that.address,
            _that.mainPhotoUrl, _that.introduction, _that.isTodayReported);
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
            String? introduction,
            bool? isTodayReported)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LikeUserReadModel():
        return $default(_that.id, _that.name, _that.birthDate, _that.address,
            _that.mainPhotoUrl, _that.introduction, _that.isTodayReported);
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
            String? introduction,
            bool? isTodayReported)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LikeUserReadModel() when $default != null:
        return $default(_that.id, _that.name, _that.birthDate, _that.address,
            _that.mainPhotoUrl, _that.introduction, _that.isTodayReported);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _LikeUserReadModel implements LikeUserReadModel {
  const _LikeUserReadModel(
      {required this.id,
      required this.name,
      @YyyyMmDdDateConverter() required this.birthDate,
      required this.address,
      required this.mainPhotoUrl,
      this.introduction,
      this.isTodayReported});
  factory _LikeUserReadModel.fromJson(Map<String, dynamic> json) =>
      _$LikeUserReadModelFromJson(json);

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
  final String? introduction;
  @override
  final bool? isTodayReported;

  /// Create a copy of LikeUserReadModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LikeUserReadModelCopyWith<_LikeUserReadModel> get copyWith =>
      __$LikeUserReadModelCopyWithImpl<_LikeUserReadModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$LikeUserReadModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LikeUserReadModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.birthDate, birthDate) ||
                other.birthDate == birthDate) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.mainPhotoUrl, mainPhotoUrl) ||
                other.mainPhotoUrl == mainPhotoUrl) &&
            (identical(other.introduction, introduction) ||
                other.introduction == introduction) &&
            (identical(other.isTodayReported, isTodayReported) ||
                other.isTodayReported == isTodayReported));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, birthDate, address,
      mainPhotoUrl, introduction, isTodayReported);

  @override
  String toString() {
    return 'LikeUserReadModel(id: $id, name: $name, birthDate: $birthDate, address: $address, mainPhotoUrl: $mainPhotoUrl, introduction: $introduction, isTodayReported: $isTodayReported)';
  }
}

/// @nodoc
abstract mixin class _$LikeUserReadModelCopyWith<$Res>
    implements $LikeUserReadModelCopyWith<$Res> {
  factory _$LikeUserReadModelCopyWith(
          _LikeUserReadModel value, $Res Function(_LikeUserReadModel) _then) =
      __$LikeUserReadModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      @YyyyMmDdDateConverter() DateTime birthDate,
      Address address,
      String mainPhotoUrl,
      String? introduction,
      bool? isTodayReported});
}

/// @nodoc
class __$LikeUserReadModelCopyWithImpl<$Res>
    implements _$LikeUserReadModelCopyWith<$Res> {
  __$LikeUserReadModelCopyWithImpl(this._self, this._then);

  final _LikeUserReadModel _self;
  final $Res Function(_LikeUserReadModel) _then;

  /// Create a copy of LikeUserReadModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? birthDate = null,
    Object? address = null,
    Object? mainPhotoUrl = null,
    Object? introduction = freezed,
    Object? isTodayReported = freezed,
  }) {
    return _then(_LikeUserReadModel(
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
      introduction: freezed == introduction
          ? _self.introduction
          : introduction // ignore: cast_nullable_to_non_nullable
              as String?,
      isTodayReported: freezed == isTodayReported
          ? _self.isTodayReported
          : isTodayReported // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

// dart format on
