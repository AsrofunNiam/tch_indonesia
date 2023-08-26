import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tch_indonesia/src/app/model/user.dart';

part 'authentication.freezed.dart';
part 'authentication.g.dart';

@freezed
class Authentication with _$Authentication {
  factory Authentication({
    User? user,
    @JsonKey(name: 'jwt') required String authentication,
  }) = _Authentication;

  factory Authentication.fromJson(Map<String, dynamic> json) =>
      _$AuthenticationFromJson(json);
}
