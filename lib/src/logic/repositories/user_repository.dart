import 'package:check_games/src/logic/models/app_user/app_user.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class UserRepository {
  final CollectionReference<Map<String, dynamic>> _collection =
      FirebaseFirestore.instance.collection('users');

  Future<AppUser?> getUserById(String id) async {
    try {
      final doc = await _collection.doc(id).get();
      return AppUser.fromJson(doc.data()!);
    } catch (e) {
      return null;
    }
  }

  Future<List<AppUser>> getUsersByIds(List<String> ids) async {
    try {
      final docs = await _collection.get();
      return docs.docs.map((doc) => AppUser.fromJson(doc.data())).toList();
    } catch (e) {
      return [];
    }
  }
}
