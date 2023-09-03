import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tch_indonesia/src/app/model/clinic_list.dart';
import 'package:tch_indonesia/src/app/model/doctor_schedule.dart';

part 'doctor_list.freezed.dart';
part 'doctor_list.g.dart';

@freezed
class DoctorList with _$DoctorList {
  factory DoctorList(
    @JsonKey(name: 'id_doctor') String? idDoctor,
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
    ClinicList? clinicList,
  ) = _DoctorList;
  const DoctorList._();

  factory DoctorList.fromJson(Map<String, dynamic> json) =>
      _$DoctorListFromJson(json);
}
