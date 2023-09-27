// import 'package:bloc/bloc.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:hydrated_bloc/hydrated_bloc.dart';
// import 'package:tch_indonesia/src/app/constant/string.dart';
// import 'package:tch_indonesia/src/app/model/doctor_list.dart';

// part 'booking_doctor_bloc.freezed.dart';

// @freezed
// class BookingDoctorState with _$BookingDoctorState {
//   const factory BookingDoctorState.initial() = _Initial;
//   const factory BookingDoctorState.loading() = _Loading;
//   const factory BookingDoctorState.loaded(
//     List<DoctorList> doctorLList,
//   ) = _Success;
//   const factory BookingDoctorState.error(String error) = _Error;
// }

// @freezed
// class BookingDoctorEvent with _$BookingDoctorEvent {
//   const factory BookingDoctorEvent.addDoctor({
//     required DoctorList doctorList,
//   }) = _AddDoctor;
//   const factory BookingDoctorEvent.removeDoctor() = _RemoveDoctor;
// }

// class BookingDoctorBloc
//     extends HydratedBloc<BookingDoctorEvent, BookingDoctorState> {
//   BookingDoctorBloc() : super(const _Success([])) {
//     on<BookingDoctorEvent>((event, emit) async {
//       await event.when(
//         addDoctor: (doctorList) {
//           emit(const _Loading());
//           try {
//             emit(_Success(List.from(List.from())));
//           } catch (error) {
//             emit(const _Error(errorSomethingWentWrong));
//           }
//         },
//         removeDoctor: () {},
//       );
//     });
//   }

//   @override
//   BookingDoctorState? fromJson(Map<String, dynamic> json) {
//     // TODO: implement fromJson
//     throw UnimplementedError();
//   }

//   @override
//   Map<String, dynamic>? toJson(BookingDoctorState state) {
//     // TODO: implement toJson
//     throw UnimplementedError();
//   }
// }
