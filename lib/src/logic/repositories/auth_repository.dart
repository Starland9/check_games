import 'package:check_games/src/logic/models/app_user/app_user.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthRepository {
  final _auth = FirebaseAuth.instance;

  final _collectionName = 'cg_users';

  CollectionReference<Map<String, dynamic>> get _collection =>
      FirebaseFirestore.instance.collection(_collectionName);

  Future<AppUser> register(
    String name,
    String email,
    String password,
  ) async {
    final response = await _auth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );

    final user = response.user;
    if (user == null) {
      throw Exception('User not found');
    }

    final appUser = AppUser.fromFireAuthUser(user).copyWith(username: name);
    await _collection.doc(appUser.id).set(appUser.toJson());
    return appUser;
  }

  Future<AppUser> login(String email, String password) async {
    final response = await _auth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );

    final user = response.user;
    if (user == null) {
      throw Exception('User not found');
    }

    final userDoc = await _collection.doc(user.uid).get();
    if (!userDoc.exists) {
      throw Exception('User not found');
    }

    return AppUser.fromJson(userDoc.data()!);
  }

  Future<void> logout() async {
    await _auth.signOut();
  }

  Future<void> resetPassword(String email) async {
    await _auth.sendPasswordResetEmail(email: email);
  }

  Future<AppUser> getCurrentUser() async {
    final user = _auth.currentUser;
    if (user == null) {
      throw Exception('User not found');
    }

    final userDoc = await _collection.doc(user.uid).get();
    if (!userDoc.exists) {
      throw Exception('User not found');
    }

    return AppUser.fromJson(userDoc.data()!);
  }
}
