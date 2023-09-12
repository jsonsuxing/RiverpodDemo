import 'package:freezed_annotation/freezed_annotation.dart';
part 'user.freezed.dart';

// ------------------------------------------------------
// author：Allen
// date  ：2023/9/12 22:38
// usage ：模拟用户信息
// ------------------------------------------------------

@freezed
class User with _$User {
  const factory User({
    @Default('默认用户名') String name,
    @Default(18) int age,
  }) = _User;
}
