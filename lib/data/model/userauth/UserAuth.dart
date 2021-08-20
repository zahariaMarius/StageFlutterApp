import 'package:json_annotation/json_annotation.dart';

part 'UserAuth.g.dart';

@JsonSerializable()
class UserAuth {
  String email;
  String password;

  UserAuth(this.email, this.password);

  Map<String, dynamic> toJson() => _$UserAuthToJson(this);
}