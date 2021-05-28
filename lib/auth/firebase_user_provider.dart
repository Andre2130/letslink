import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class LetsLinkAppFirebaseUser {
  LetsLinkAppFirebaseUser(this.user);
  final User user;
  bool get loggedIn => user != null;
}

LetsLinkAppFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<LetsLinkAppFirebaseUser> letsLinkAppFirebaseUserStream() => FirebaseAuth
    .instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<LetsLinkAppFirebaseUser>(
        (user) => currentUser = LetsLinkAppFirebaseUser(user));
