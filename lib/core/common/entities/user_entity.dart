import 'package:hive/hive.dart';

part 'user_entity.g.dart';

@HiveType(typeId: 0)
class User extends HiveObject {
  @HiveField(0)
  final String username;
  @HiveField(1)
  final String email;
  @HiveField(2)
  final String phone;
  @HiveField(3)
  final String password;
  @HiveField(4)
  final String firstTime;

  User({
    required this.username,
    required this.email,
    required this.phone,
    required this.password,
    required this.firstTime,
  });

  factory User.fromJson(Map<String, dynamic> map) {
    return User(
      username: map['username'] ?? '',
      email: map['email'] ?? '',
      phone: map['phone'] ?? '',
      password: map['password'] ?? '',
      firstTime: map['firstTime'] ?? '',
    );
  }

  User copyWith({
    String? username,
    String? email,
    String? phone,
    String? password,
    String? firstTime,
  }) {
    return User(
      username: username ?? this.username,
      email: email ?? this.email,
      phone: phone ?? this.phone,
      password: password ?? this.password,
      firstTime: firstTime ?? this.firstTime,
    );
  }
}
