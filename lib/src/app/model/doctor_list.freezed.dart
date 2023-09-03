// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'doctor_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DoctorList _$DoctorListFromJson(Map<String, dynamic> json) {
  return _DoctorList.fromJson(json);
}

/// @nodoc
mixin _$DoctorList {
  @JsonKey(name: 'id_doctor')
  String? get idDoctor => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'schedule_in')
  DateTime? get scheduleIn => throw _privateConstructorUsedError;
  @JsonKey(name: 'schedule_out')
  DateTime? get scheduleOut => throw _privateConstructorUsedError;
  int? get pricing => throw _privateConstructorUsedError;
  String? get photo => throw _privateConstructorUsedError;
  double? get rating => throw _privateConstructorUsedError;
  int? get patient => throw _privateConstructorUsedError;
  @JsonKey(name: 'flight_hours')
  int? get flightHours => throw _privateConstructorUsedError;
  @JsonKey(name: 'schedule_ready', fromJson: DoctorSchedule.fromJson)
  DoctorSchedule? get doctorSchedule => throw _privateConstructorUsedError;
  @JsonKey(name: 'clinic', fromJson: ClinicList.fromJson)
  ClinicList? get clinicList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DoctorListCopyWith<DoctorList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoctorListCopyWith<$Res> {
  factory $DoctorListCopyWith(
          DoctorList value, $Res Function(DoctorList) then) =
      _$DoctorListCopyWithImpl<$Res, DoctorList>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id_doctor') String? idDoctor,
      String? name,
      String? description,
      @JsonKey(name: 'schedule_in') DateTime? scheduleIn,
      @JsonKey(name: 'schedule_out') DateTime? scheduleOut,
      int? pricing,
      String? photo,
      double? rating,
      int? patient,
      @JsonKey(name: 'flight_hours') int? flightHours,
      @JsonKey(name: 'schedule_ready', fromJson: DoctorSchedule.fromJson)
      DoctorSchedule? doctorSchedule,
      @JsonKey(name: 'clinic', fromJson: ClinicList.fromJson)
      ClinicList? clinicList});

  $DoctorScheduleCopyWith<$Res>? get doctorSchedule;
  $ClinicListCopyWith<$Res>? get clinicList;
}

/// @nodoc
class _$DoctorListCopyWithImpl<$Res, $Val extends DoctorList>
    implements $DoctorListCopyWith<$Res> {
  _$DoctorListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idDoctor = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? scheduleIn = freezed,
    Object? scheduleOut = freezed,
    Object? pricing = freezed,
    Object? photo = freezed,
    Object? rating = freezed,
    Object? patient = freezed,
    Object? flightHours = freezed,
    Object? doctorSchedule = freezed,
    Object? clinicList = freezed,
  }) {
    return _then(_value.copyWith(
      idDoctor: freezed == idDoctor
          ? _value.idDoctor
          : idDoctor // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      scheduleIn: freezed == scheduleIn
          ? _value.scheduleIn
          : scheduleIn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      scheduleOut: freezed == scheduleOut
          ? _value.scheduleOut
          : scheduleOut // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      pricing: freezed == pricing
          ? _value.pricing
          : pricing // ignore: cast_nullable_to_non_nullable
              as int?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      patient: freezed == patient
          ? _value.patient
          : patient // ignore: cast_nullable_to_non_nullable
              as int?,
      flightHours: freezed == flightHours
          ? _value.flightHours
          : flightHours // ignore: cast_nullable_to_non_nullable
              as int?,
      doctorSchedule: freezed == doctorSchedule
          ? _value.doctorSchedule
          : doctorSchedule // ignore: cast_nullable_to_non_nullable
              as DoctorSchedule?,
      clinicList: freezed == clinicList
          ? _value.clinicList
          : clinicList // ignore: cast_nullable_to_non_nullable
              as ClinicList?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DoctorScheduleCopyWith<$Res>? get doctorSchedule {
    if (_value.doctorSchedule == null) {
      return null;
    }

    return $DoctorScheduleCopyWith<$Res>(_value.doctorSchedule!, (value) {
      return _then(_value.copyWith(doctorSchedule: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ClinicListCopyWith<$Res>? get clinicList {
    if (_value.clinicList == null) {
      return null;
    }

    return $ClinicListCopyWith<$Res>(_value.clinicList!, (value) {
      return _then(_value.copyWith(clinicList: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DoctorListCopyWith<$Res>
    implements $DoctorListCopyWith<$Res> {
  factory _$$_DoctorListCopyWith(
          _$_DoctorList value, $Res Function(_$_DoctorList) then) =
      __$$_DoctorListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id_doctor') String? idDoctor,
      String? name,
      String? description,
      @JsonKey(name: 'schedule_in') DateTime? scheduleIn,
      @JsonKey(name: 'schedule_out') DateTime? scheduleOut,
      int? pricing,
      String? photo,
      double? rating,
      int? patient,
      @JsonKey(name: 'flight_hours') int? flightHours,
      @JsonKey(name: 'schedule_ready', fromJson: DoctorSchedule.fromJson)
      DoctorSchedule? doctorSchedule,
      @JsonKey(name: 'clinic', fromJson: ClinicList.fromJson)
      ClinicList? clinicList});

  @override
  $DoctorScheduleCopyWith<$Res>? get doctorSchedule;
  @override
  $ClinicListCopyWith<$Res>? get clinicList;
}

/// @nodoc
class __$$_DoctorListCopyWithImpl<$Res>
    extends _$DoctorListCopyWithImpl<$Res, _$_DoctorList>
    implements _$$_DoctorListCopyWith<$Res> {
  __$$_DoctorListCopyWithImpl(
      _$_DoctorList _value, $Res Function(_$_DoctorList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idDoctor = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? scheduleIn = freezed,
    Object? scheduleOut = freezed,
    Object? pricing = freezed,
    Object? photo = freezed,
    Object? rating = freezed,
    Object? patient = freezed,
    Object? flightHours = freezed,
    Object? doctorSchedule = freezed,
    Object? clinicList = freezed,
  }) {
    return _then(_$_DoctorList(
      freezed == idDoctor
          ? _value.idDoctor
          : idDoctor // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == scheduleIn
          ? _value.scheduleIn
          : scheduleIn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      freezed == scheduleOut
          ? _value.scheduleOut
          : scheduleOut // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      freezed == pricing
          ? _value.pricing
          : pricing // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      freezed == patient
          ? _value.patient
          : patient // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == flightHours
          ? _value.flightHours
          : flightHours // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == doctorSchedule
          ? _value.doctorSchedule
          : doctorSchedule // ignore: cast_nullable_to_non_nullable
              as DoctorSchedule?,
      freezed == clinicList
          ? _value.clinicList
          : clinicList // ignore: cast_nullable_to_non_nullable
              as ClinicList?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DoctorList extends _DoctorList {
  _$_DoctorList(
      @JsonKey(name: 'id_doctor') this.idDoctor,
      this.name,
      this.description,
      @JsonKey(name: 'schedule_in') this.scheduleIn,
      @JsonKey(name: 'schedule_out') this.scheduleOut,
      this.pricing,
      this.photo,
      this.rating,
      this.patient,
      @JsonKey(name: 'flight_hours') this.flightHours,
      @JsonKey(name: 'schedule_ready', fromJson: DoctorSchedule.fromJson)
      this.doctorSchedule,
      @JsonKey(name: 'clinic', fromJson: ClinicList.fromJson) this.clinicList)
      : super._();

  factory _$_DoctorList.fromJson(Map<String, dynamic> json) =>
      _$$_DoctorListFromJson(json);

  @override
  @JsonKey(name: 'id_doctor')
  final String? idDoctor;
  @override
  final String? name;
  @override
  final String? description;
  @override
  @JsonKey(name: 'schedule_in')
  final DateTime? scheduleIn;
  @override
  @JsonKey(name: 'schedule_out')
  final DateTime? scheduleOut;
  @override
  final int? pricing;
  @override
  final String? photo;
  @override
  final double? rating;
  @override
  final int? patient;
  @override
  @JsonKey(name: 'flight_hours')
  final int? flightHours;
  @override
  @JsonKey(name: 'schedule_ready', fromJson: DoctorSchedule.fromJson)
  final DoctorSchedule? doctorSchedule;
  @override
  @JsonKey(name: 'clinic', fromJson: ClinicList.fromJson)
  final ClinicList? clinicList;

  @override
  String toString() {
    return 'DoctorList(idDoctor: $idDoctor, name: $name, description: $description, scheduleIn: $scheduleIn, scheduleOut: $scheduleOut, pricing: $pricing, photo: $photo, rating: $rating, patient: $patient, flightHours: $flightHours, doctorSchedule: $doctorSchedule, clinicList: $clinicList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DoctorList &&
            (identical(other.idDoctor, idDoctor) ||
                other.idDoctor == idDoctor) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.scheduleIn, scheduleIn) ||
                other.scheduleIn == scheduleIn) &&
            (identical(other.scheduleOut, scheduleOut) ||
                other.scheduleOut == scheduleOut) &&
            (identical(other.pricing, pricing) || other.pricing == pricing) &&
            (identical(other.photo, photo) || other.photo == photo) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.patient, patient) || other.patient == patient) &&
            (identical(other.flightHours, flightHours) ||
                other.flightHours == flightHours) &&
            (identical(other.doctorSchedule, doctorSchedule) ||
                other.doctorSchedule == doctorSchedule) &&
            (identical(other.clinicList, clinicList) ||
                other.clinicList == clinicList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      idDoctor,
      name,
      description,
      scheduleIn,
      scheduleOut,
      pricing,
      photo,
      rating,
      patient,
      flightHours,
      doctorSchedule,
      clinicList);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DoctorListCopyWith<_$_DoctorList> get copyWith =>
      __$$_DoctorListCopyWithImpl<_$_DoctorList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DoctorListToJson(
      this,
    );
  }
}

abstract class _DoctorList extends DoctorList {
  factory _DoctorList(
      @JsonKey(name: 'id_doctor') final String? idDoctor,
      final String? name,
      final String? description,
      @JsonKey(name: 'schedule_in') final DateTime? scheduleIn,
      @JsonKey(name: 'schedule_out') final DateTime? scheduleOut,
      final int? pricing,
      final String? photo,
      final double? rating,
      final int? patient,
      @JsonKey(name: 'flight_hours') final int? flightHours,
      @JsonKey(name: 'schedule_ready', fromJson: DoctorSchedule.fromJson)
      final DoctorSchedule? doctorSchedule,
      @JsonKey(name: 'clinic', fromJson: ClinicList.fromJson)
      final ClinicList? clinicList) = _$_DoctorList;
  _DoctorList._() : super._();

  factory _DoctorList.fromJson(Map<String, dynamic> json) =
      _$_DoctorList.fromJson;

  @override
  @JsonKey(name: 'id_doctor')
  String? get idDoctor;
  @override
  String? get name;
  @override
  String? get description;
  @override
  @JsonKey(name: 'schedule_in')
  DateTime? get scheduleIn;
  @override
  @JsonKey(name: 'schedule_out')
  DateTime? get scheduleOut;
  @override
  int? get pricing;
  @override
  String? get photo;
  @override
  double? get rating;
  @override
  int? get patient;
  @override
  @JsonKey(name: 'flight_hours')
  int? get flightHours;
  @override
  @JsonKey(name: 'schedule_ready', fromJson: DoctorSchedule.fromJson)
  DoctorSchedule? get doctorSchedule;
  @override
  @JsonKey(name: 'clinic', fromJson: ClinicList.fromJson)
  ClinicList? get clinicList;
  @override
  @JsonKey(ignore: true)
  _$$_DoctorListCopyWith<_$_DoctorList> get copyWith =>
      throw _privateConstructorUsedError;
}
