import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'User.freezed.dart';
part 'User.g.dart';

@freezed
class User with _$User {
  const User._();

  @HiveType(typeId: 2, adapterName: 'UserAdapter')
  const factory User({
    @HiveField(0) int? id,
    @HiveField(1) String? name,
    @HiveField(2) String? lastname,
    @HiveField(3) String? email,
    @HiveField(4) String? password,
    @HiveField(5) int? role
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) =>
      _$UserFromJson(json['data']);

  String getFullName() => '$name $lastname';

}
