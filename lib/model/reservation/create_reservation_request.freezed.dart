// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_reservation_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateReservationRequest _$CreateReservationRequestFromJson(
    Map<String, dynamic> json) {
  return _CreateReservationRequest.fromJson(json);
}

/// @nodoc
mixin _$CreateReservationRequest {
  DateTime get pickupTime => throw _privateConstructorUsedError;
  bool get reservationIsPlastic => throw _privateConstructorUsedError;
  String get reservationRequest => throw _privateConstructorUsedError;

  /// Serializes this CreateReservationRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateReservationRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateReservationRequestCopyWith<CreateReservationRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateReservationRequestCopyWith<$Res> {
  factory $CreateReservationRequestCopyWith(CreateReservationRequest value,
          $Res Function(CreateReservationRequest) then) =
      _$CreateReservationRequestCopyWithImpl<$Res, CreateReservationRequest>;
  @useResult
  $Res call(
      {DateTime pickupTime,
      bool reservationIsPlastic,
      String reservationRequest});
}

/// @nodoc
class _$CreateReservationRequestCopyWithImpl<$Res,
        $Val extends CreateReservationRequest>
    implements $CreateReservationRequestCopyWith<$Res> {
  _$CreateReservationRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateReservationRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pickupTime = null,
    Object? reservationIsPlastic = null,
    Object? reservationRequest = null,
  }) {
    return _then(_value.copyWith(
      pickupTime: null == pickupTime
          ? _value.pickupTime
          : pickupTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      reservationIsPlastic: null == reservationIsPlastic
          ? _value.reservationIsPlastic
          : reservationIsPlastic // ignore: cast_nullable_to_non_nullable
              as bool,
      reservationRequest: null == reservationRequest
          ? _value.reservationRequest
          : reservationRequest // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateReservationRequestImplCopyWith<$Res>
    implements $CreateReservationRequestCopyWith<$Res> {
  factory _$$CreateReservationRequestImplCopyWith(
          _$CreateReservationRequestImpl value,
          $Res Function(_$CreateReservationRequestImpl) then) =
      __$$CreateReservationRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime pickupTime,
      bool reservationIsPlastic,
      String reservationRequest});
}

/// @nodoc
class __$$CreateReservationRequestImplCopyWithImpl<$Res>
    extends _$CreateReservationRequestCopyWithImpl<$Res,
        _$CreateReservationRequestImpl>
    implements _$$CreateReservationRequestImplCopyWith<$Res> {
  __$$CreateReservationRequestImplCopyWithImpl(
      _$CreateReservationRequestImpl _value,
      $Res Function(_$CreateReservationRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateReservationRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pickupTime = null,
    Object? reservationIsPlastic = null,
    Object? reservationRequest = null,
  }) {
    return _then(_$CreateReservationRequestImpl(
      pickupTime: null == pickupTime
          ? _value.pickupTime
          : pickupTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      reservationIsPlastic: null == reservationIsPlastic
          ? _value.reservationIsPlastic
          : reservationIsPlastic // ignore: cast_nullable_to_non_nullable
              as bool,
      reservationRequest: null == reservationRequest
          ? _value.reservationRequest
          : reservationRequest // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateReservationRequestImpl implements _CreateReservationRequest {
  _$CreateReservationRequestImpl(
      {required this.pickupTime,
      required this.reservationIsPlastic,
      required this.reservationRequest});

  factory _$CreateReservationRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateReservationRequestImplFromJson(json);

  @override
  final DateTime pickupTime;
  @override
  final bool reservationIsPlastic;
  @override
  final String reservationRequest;

  @override
  String toString() {
    return 'CreateReservationRequest(pickupTime: $pickupTime, reservationIsPlastic: $reservationIsPlastic, reservationRequest: $reservationRequest)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateReservationRequestImpl &&
            (identical(other.pickupTime, pickupTime) ||
                other.pickupTime == pickupTime) &&
            (identical(other.reservationIsPlastic, reservationIsPlastic) ||
                other.reservationIsPlastic == reservationIsPlastic) &&
            (identical(other.reservationRequest, reservationRequest) ||
                other.reservationRequest == reservationRequest));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, pickupTime, reservationIsPlastic, reservationRequest);

  /// Create a copy of CreateReservationRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateReservationRequestImplCopyWith<_$CreateReservationRequestImpl>
      get copyWith => __$$CreateReservationRequestImplCopyWithImpl<
          _$CreateReservationRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateReservationRequestImplToJson(
      this,
    );
  }
}

abstract class _CreateReservationRequest implements CreateReservationRequest {
  factory _CreateReservationRequest(
          {required final DateTime pickupTime,
          required final bool reservationIsPlastic,
          required final String reservationRequest}) =
      _$CreateReservationRequestImpl;

  factory _CreateReservationRequest.fromJson(Map<String, dynamic> json) =
      _$CreateReservationRequestImpl.fromJson;

  @override
  DateTime get pickupTime;
  @override
  bool get reservationIsPlastic;
  @override
  String get reservationRequest;

  /// Create a copy of CreateReservationRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateReservationRequestImplCopyWith<_$CreateReservationRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
