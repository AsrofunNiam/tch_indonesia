// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doctor_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DoctorList _$$_DoctorListFromJson(Map<String, dynamic> json) =>
    _$_DoctorList(
      json['id_doctor'] as String?,
      json['name'] as String?,
      json['description'] as String?,
      json['schedule_in'] == null
          ? null
          : DateTime.parse(json['schedule_in'] as String),
      json['schedule_out'] == null
          ? null
          : DateTime.parse(json['schedule_out'] as String),
      json['pricing'] as int?,
      json['photo'] as String?,
      (json['rating'] as num?)?.toDouble(),
      json['patient'] as int?,
      json['flight_hours'] as int?,
      DoctorSchedule.fromJson(json['schedule_ready'] as Map<String, dynamic>),
      ClinicList.fromJson(json['clinic'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DoctorListToJson(_$_DoctorList instance) =>
    <String, dynamic>{
      'id_doctor': instance.idDoctor,
      'name': instance.name,
      'description': instance.description,
      'schedule_in': instance.scheduleIn?.toIso8601String(),
      'schedule_out': instance.scheduleOut?.toIso8601String(),
      'pricing': instance.pricing,
      'photo': instance.photo,
      'rating': instance.rating,
      'patient': instance.patient,
      'flight_hours': instance.flightHours,
      'schedule_ready': instance.doctorSchedule,
      'clinic': instance.clinicList,
    };
