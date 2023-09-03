import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tch_indonesia/src/app/util/date.dart';

part 'doctor_schedule.freezed.dart';
part 'doctor_schedule.g.dart';

@freezed
class DoctorSchedule with _$DoctorSchedule {
  factory DoctorSchedule(
    @JsonKey(name: 'schedule_one', fromJson: isoDateToDateTime)
    DateTime? scheduleOne,
    @JsonKey(name: 'schedule_two', fromJson: isoDateToDateTime)
    DateTime? scheduleTwo,
    @JsonKey(name: 'schedule_three', fromJson: isoDateToDateTime)
    DateTime? scheduleThree,
    @JsonKey(name: 'schedule_for', fromJson: isoDateToDateTime)
    DateTime? scheduleFor,
    @JsonKey(name: 'schedule_five', fromJson: isoDateToDateTime)
    DateTime? scheduleFive,
  ) = _DoctorSchedule;
  const DoctorSchedule._();

  factory DoctorSchedule.fromJson(Map<String, dynamic> json) =>
      _$DoctorScheduleFromJson(json);
}
