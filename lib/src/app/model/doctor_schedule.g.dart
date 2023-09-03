// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doctor_schedule.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DoctorSchedule _$$_DoctorScheduleFromJson(Map<String, dynamic> json) =>
    _$_DoctorSchedule(
      isoDateToDateTime(json['schedule_one'] as String?),
      isoDateToDateTime(json['schedule_two'] as String?),
      isoDateToDateTime(json['schedule_three'] as String?),
      isoDateToDateTime(json['schedule_for'] as String?),
      isoDateToDateTime(json['schedule_five'] as String?),
    );

Map<String, dynamic> _$$_DoctorScheduleToJson(_$_DoctorSchedule instance) =>
    <String, dynamic>{
      'schedule_one': instance.scheduleOne?.toIso8601String(),
      'schedule_two': instance.scheduleTwo?.toIso8601String(),
      'schedule_three': instance.scheduleThree?.toIso8601String(),
      'schedule_for': instance.scheduleFor?.toIso8601String(),
      'schedule_five': instance.scheduleFive?.toIso8601String(),
    };
