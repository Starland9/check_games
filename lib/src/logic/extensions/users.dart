import 'package:check_games/src/logic/models/app_user/app_user.dart';

extension UsersListX on List<AppUser> {
  List<String> getIds() => map((e) => e.id).toList();

  bool get isAllCpu => every((e) => e.isCpu);
}
