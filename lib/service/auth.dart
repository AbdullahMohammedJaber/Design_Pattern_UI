import 'package:firebase_auth/firebase_auth.dart';
import 'package:hexa/log/sigin.dart';

class Auth {
  final _auth = FirebaseAuth.instance;

  Sigup(String email, String password) async {
    final authResult = await _auth.createUserWithEmailAndPassword(
        email: email, password: password);

    return authResult;
  }

  Sigin(String email, String password) async {
    final authResult = await _auth.signInWithEmailAndPassword(
        email: email, password: password);

    return authResult;
  }
}
