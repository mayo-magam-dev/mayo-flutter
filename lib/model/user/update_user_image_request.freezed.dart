// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_user_image_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UpdateUserImageRequest _$UpdateUserImageRequestFromJson(
    Map<String, dynamic> json) {
  return _UpdateUserImageRequest.fromJson(json);
}

/// @nodoc
mixin _$UpdateUserImageRequest {
  String get file => throw _privateConstructorUsedError;

  /// Serializes this UpdateUserImageRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateUserImageRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateUserImageRequestCopyWith<UpdateUserImageRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateUserImageRequestCopyWith<$Res> {
  factory $UpdateUserImageRequestCopyWith(UpdateUserImageRequest value,
          $Res Function(UpdateUserImageRequest) then) =
      _$UpdateUserImageRequestCopyWithImpl<$Res, UpdateUserImageRequest>;
  @useResult
  $Res call({String file});
}

/// @nodoc
class _$UpdateUserImageRequestCopyWithImpl<$Res,
        $Val extends UpdateUserImageRequest>
    implements $UpdateUserImageRequestCopyWith<$Res> {
  _$UpdateUserImageRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateUserImageRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? file = null,
  }) {
    return _then(_value.copyWith(
      file: null == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateUserImageRequestImplCopyWith<$Res>
    implements $UpdateUserImageRequestCopyWith<$Res> {
  factory _$$UpdateUserImageRequestImplCopyWith(
          _$UpdateUserImageRequestImpl value,
          $Res Function(_$UpdateUserImageRequestImpl) then) =
      __$$UpdateUserImageRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String file});
}

/// @nodoc
class __$$UpdateUserImageRequestImplCopyWithImpl<$Res>
    extends _$UpdateUserImageRequestCopyWithImpl<$Res,
        _$UpdateUserImageRequestImpl>
    implements _$$UpdateUserImageRequestImplCopyWith<$Res> {
  __$$UpdateUserImageRequestImplCopyWithImpl(
      _$UpdateUserImageRequestImpl _value,
      $Res Function(_$UpdateUserImageRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateUserImageRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? file = null,
  }) {
    return _then(_$UpdateUserImageRequestImpl(
      file: null == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateUserImageRequestImpl implements _UpdateUserImageRequest {
  _$UpdateUserImageRequestImpl({required this.file});

  factory _$UpdateUserImageRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateUserImageRequestImplFromJson(json);

  @override
  final String file;

  @override
  String toString() {
    return 'UpdateUserImageRequest(file: $file)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateUserImageRequestImpl &&
            (identical(other.file, file) || other.file == file));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, file);

  /// Create a copy of UpdateUserImageRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateUserImageRequestImplCopyWith<_$UpdateUserImageRequestImpl>
      get copyWith => __$$UpdateUserImageRequestImplCopyWithImpl<
          _$UpdateUserImageRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateUserImageRequestImplToJson(
      this,
    );
  }
}

abstract class _UpdateUserImageRequest implements UpdateUserImageRequest {
  factory _UpdateUserImageRequest({required final String file}) =
      _$UpdateUserImageRequestImpl;

  factory _UpdateUserImageRequest.fromJson(Map<String, dynamic> json) =
      _$UpdateUserImageRequestImpl.fromJson;

  @override
  String get file;

  /// Create a copy of UpdateUserImageRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateUserImageRequestImplCopyWith<_$UpdateUserImageRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
