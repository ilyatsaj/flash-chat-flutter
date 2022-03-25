import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthController {
  AuthController();

  static final auth = FirebaseAuth.instance;
  static FirebaseUser loggedInUser;
  static final storage = Firestore.instance;
  String message;

  static void getCurrentUser() async {
    try {
      final user = await auth.currentUser();
      if (user != null) {
        loggedInUser = user;
        print(loggedInUser.email);
      }
    } catch (e) {
      print(e);
    }
  }
}
