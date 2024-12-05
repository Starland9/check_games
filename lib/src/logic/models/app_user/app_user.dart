import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_user.freezed.dart';
part 'app_user.g.dart';

@freezed
class AppUser with _$AppUser {
  AppUser._();

  factory AppUser({
    required String id,
    required String email,
    required String username,
    String? imageUrl,
  }) = _AppUser;

  factory AppUser.cpu() => AppUser(
        id: DateTime.now().toIso8601String(),
        email: 'cpu',
        username: 'CPU',
        imageUrl: '',
      );

  factory AppUser.fromJson(Map<String, dynamic> json) =>
      _$AppUserFromJson(json);

  factory AppUser.fromFireAuthUser(User user) => AppUser(
        id: user.uid,
        email: user.email ?? '',
        username: user.displayName ?? '',
        imageUrl: user.photoURL,
      );

  bool get isCpu => email == 'cpu';
}
