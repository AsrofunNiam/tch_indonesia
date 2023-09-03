import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tch_indonesia/src/app/constant/string.dart';
import 'package:tch_indonesia/src/app/model/doctor_list.dart';
import 'package:tch_indonesia/src/app/resource/doctor_repository.dart';
import 'package:tch_indonesia/src/app/resource/user_repository.dart';

part 'doctor_list_query_bloc.freezed.dart';

@freezed
class DoctorListQueryState with _$DoctorListQueryState {
  const factory DoctorListQueryState.initial() = _Initial;
  const factory DoctorListQueryState.loading() = _Loading;
  const factory DoctorListQueryState.loaded(
    List<DoctorList> doctorList,
  ) = _Success;
  const factory DoctorListQueryState.error(String error) = _Error;
}

@freezed
class DoctorListQueryEvent with _$DoctorListQueryEvent {
  const factory DoctorListQueryEvent.get() = _Get;
}

class DoctorListQueryBloc
    extends Bloc<DoctorListQueryEvent, DoctorListQueryState> {
  DoctorListQueryBloc() : super(_Initial()) {
    on<DoctorListQueryEvent>((event, emit) async {
      await event.when(get: () async {
        emit(const _Loading());
        try {
          final doctorList = await DoctorListRepository.instance
              .doctorListFetch(
                  accessToken: UserRepository.instance.tokenRepository!);
          emit(_Success(doctorList));
        } catch (error) {
          emit(const _Error(errorSomethingWentWrong));
        }
      });
    });
  }
}
