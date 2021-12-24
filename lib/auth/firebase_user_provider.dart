import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class UrFineFirebaseUser {
  UrFineFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

UrFineFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<UrFineFirebaseUser> urFineFirebaseUserStream() => FirebaseAuth.instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<UrFineFirebaseUser>((user) => currentUser = UrFineFirebaseUser(user));
