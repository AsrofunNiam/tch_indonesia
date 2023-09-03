// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'doctor_schedule.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DoctorSchedule _$DoctorScheduleFromJson(Map<String, dynamic> json) {
  return _DoctorSchedule.fromJson(json);
}

/// @nodoc
mixin _$DoctorSchedule {
  @JsonKey(name: 'schedule_one', fromJson: isoDateToDateTime)
  DateTime? get scheduleOne => throw _privateConstructorUsedError;
  @JsonKey(name: 'schedule_two', fromJson: isoDateToDateTime)
  DateTime? get scheduleTwo => throw _privateConstructorUsedError;
  @JsonKey(name: 'schedule_three', fromJson: isoDateToDateTime)
  DateTime? get scheduleThree => throw _privateConstructorUsedError;
  @JsonKey(name: 'schedule_for', fromJson: isoDateToDateTime)
  DateTime? get scheduleFor => throw _privateConstructorUsedError;
  @JsonKey(name: 'schedule_five', fromJson: isoDateToDateTime)
  DateTime? get scheduleFive => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DoctorScheduleCopyWith<DoctorSchedule> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoctorScheduleCopyWith<$Res> {
  factory $DoctorScheduleCopyWith(
          DoctorSchedule value, $Res Function(DoctorSchedule) then) =
      _$DoctorScheduleCopyWithImpl<$Res, DoctorSchedule>;
  @useResult
  $Res call(
      {@JsonKey(name: 'schedule_one', fromJson: isoDateToDateTime)
      DateTime? scheduleOne,
      @JsonKey(name: 'schedule_two', fromJson: isoDateToDateTime)
      DateTime? scheduleTwo,
      @JsonKey(name: 'schedule_three', fromJson: isoDateToDateTime)
      DateTime? scheduleThree,
      @JsonKey(name: 'schedule_for', fromJson: isoDateToDateTime)
      DateTime? scheduleFor,
      @JsonKey(name: 'schedule_five', fromJson: isoDateToDateTime)
      DateTime? scheduleFive});
}

/// @nodoc
class _$DoctorScheduleCopyWithImpl<$Res, $Val extends DoctorSchedule>
    implements $DoctorScheduleCopyWith<$Res> {
  _$DoctorScheduleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scheduleOne = freezed,
    Object? scheduleTwo = freezed,
    Object? scheduleThree = freezed,
    Object? scheduleFor = freezed,
    Object? scheduleFive = freezed,
  }) {
    return _then(_value.copyWith(
      scheduleOne: freezed == scheduleOne
          ? _value.scheduleOne
          : scheduleOne // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      scheduleTwo: freezed == scheduleTwo
          ? _value.scheduleTwo
          : scheduleTwo // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      scheduleThree: freezed == scheduleThree
          ? _value.scheduleThree
          : scheduleThree // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      scheduleFor: freezed == scheduleFor
          ? _value.scheduleFor
          : scheduleFor // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      scheduleFive: freezed == scheduleFive
          ? _value.scheduleFive
          : scheduleFive // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DoctorScheduleCopyWith<$Res>
    implements $DoctorScheduleCopyWith<$Res> {
  factory _$$_DoctorScheduleCopyWith(
          _$_DoctorSchedule value, $Res Function(_$_DoctorSchedule) then) =
      __$$_DoctorScheduleCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'schedule_one', fromJson: isoDateToDateTime)
      DateTime? scheduleOne,
      @JsonKey(name: 'schedule_two', fromJson: isoDateToDateTime)
      DateTime? scheduleTwo,
      @JsonKey(name: 'schedule_three', fromJson: isoDateToDateTime)
      DateTime? scheduleThree,
      @JsonKey(name: 'schedule_for', fromJson: isoDateToDateTime)
      DateTime? scheduleFor,
      @JsonKey(name: 'schedule_five', fromJson: isoDateToDateTime)
      DateTime? scheduleFive});
}

/// @nodoc
class __$$_DoctorScheduleCopyWithImpl<$Res>
    extends _$DoctorScheduleCopyWithImpl<$Res, _$_DoctorSchedule>
    implements _$$_DoctorScheduleCopyWith<$Res> {
  __$$_DoctorScheduleCopyWithImpl(
      _$_DoctorSchedule _value, $Res Function(_$_DoctorSchedule) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scheduleOne = freezed,
    Object? scheduleTwo = freezed,
    Object? scheduleThree = freezed,
    Object? scheduleFor = freezed,
    Object? scheduleFive = freezed,
  }) {
    return _then(_$_DoctorSchedule(
      freezed == scheduleOne
          ? _value.scheduleOne
          : scheduleOne // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      freezed == scheduleTwo
          ? _value.scheduleTwo
          : scheduleTwo // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      freezed == scheduleThree
          ? _value.scheduleThree
          : scheduleThree // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      freezed == scheduleFor
          ? _value.scheduleFor
          : scheduleFor // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      freezed == scheduleFive
          ? _value.scheduleFive
          : scheduleFive // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DoctorSchedule extends _DoctorSchedule {
  _$_DoctorSchedule(
      @JsonKey(name: 'schedule_one', fromJson: isoDateToDateTime)
      this.scheduleOne,
      @JsonKey(name: 'schedule_two', fromJson: isoDateToDateTime)
      this.scheduleTwo,
      @JsonKey(name: 'schedule_three', fromJson: isoDateToDateTime)
      this.scheduleThree,
      @JsonKey(name: 'schedule_for', fromJson: isoDateToDateTime)
      this.scheduleFor,
      @JsonKey(name: 'schedule_five', fromJson: isoDateToDateTime)
      this.scheduleFive)
      : super._();

  factory _$_DoctorSchedule.fromJson(Map<String, dynamic> json) =>
      _$$_DoctorScheduleFromJson(json);

  @override
  @JsonKey(name: 'schedule_one', fromJson: isoDateToDateTime)
  final DateTime? scheduleOne;
  @override
  @JsonKey(name: 'schedule_two', fromJson: isoDateToDateTime)
  final DateTime? scheduleTwo;
  @override
  @JsonKey(name: 'schedule_three', fromJson: isoDateToDateTime)
  final DateTime? scheduleThree;
  @override
  @JsonKey(name: 'schedule_for', fromJson: isoDateToDateTime)
  final DateTime? scheduleFor;
  @override
  @JsonKey(name: 'schedule_five', fromJson: isoDateToDateTime)
  final DateTime? scheduleFive;

  @override
  String toString() {
    return 'DoctorSchedule(scheduleOne: $scheduleOne, scheduleTwo: $scheduleTwo, scheduleThree: $scheduleThree, scheduleFor: $scheduleFor, scheduleFive: $scheduleFive)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DoctorSchedule &&
            (identical(other.scheduleOne, scheduleOne) ||
                other.scheduleOne == scheduleOne) &&
            (identical(other.scheduleTwo, scheduleTwo) ||
                other.scheduleTwo == scheduleTwo) &&
            (identical(other.scheduleThree, scheduleThree) ||
                other.scheduleThree == scheduleThree) &&
            (identical(other.scheduleFor, scheduleFor) ||
                other.scheduleFor == scheduleFor) &&
            (identical(other.scheduleFive, scheduleFive) ||
                other.scheduleFive == scheduleFive));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, scheduleOne, scheduleTwo,
      scheduleThree, scheduleFor, scheduleFive);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DoctorScheduleCopyWith<_$_DoctorSchedule> get copyWith =>
      __$$_DoctorScheduleCopyWithImpl<_$_DoctorSchedule>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DoctorScheduleToJson(
      this,
    );
  }
}

abstract class _DoctorSchedule extends DoctorSchedule {
  factory _DoctorSchedule(
      @JsonKey(name: 'schedule_one', fromJson: isoDateToDateTime)
      final DateTime? scheduleOne,
      @JsonKey(name: 'schedule_two', fromJson: isoDateToDateTime)
      final DateTime? scheduleTwo,
      @JsonKey(name: 'schedule_three', fromJson: isoDateToDateTime)
      final DateTime? scheduleThree,
      @JsonKey(name: 'schedule_for', fromJson: isoDateToDateTime)
      final DateTime? scheduleFor,
      @JsonKey(name: 'schedule_five', fromJson: isoDateToDateTime)
      final DateTime? scheduleFive) = _$_DoctorSchedule;
  _DoctorSchedule._() : super._();

  factory _DoctorSchedule.fromJson(Map<String, dynamic> json) =
      _$_DoctorSchedule.fromJson;

  @override
  @JsonKey(name: 'schedule_one', fromJson: isoDateToDateTime)
  DateTime? get scheduleOne;
  @override
  @JsonKey(name: 'schedule_two', fromJson: isoDateToDateTime)
  DateTime? get scheduleTwo;
  @override
  @JsonKey(name: 'schedule_three', fromJson: isoDateToDateTime)
  DateTime? get scheduleThree;
  @override
  @JsonKey(name: 'schedule_for', fromJson: isoDateToDateTime)
  DateTime? get scheduleFor;
  @override
  @JsonKey(name: 'schedule_five', fromJson: isoDateToDateTime)
  DateTime? get scheduleFive;
  @override
  @JsonKey(ignore: true)
  _$$_DoctorScheduleCopyWith<_$_DoctorSchedule> get copyWith =>
      throw _privateConstructorUsedError;
}
