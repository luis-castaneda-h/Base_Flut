import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class BaseFlutFirebaseUser {
  BaseFlutFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

BaseFlutFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<BaseFlutFirebaseUser> baseFlutFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<BaseFlutFirebaseUser>(
            (user) => currentUser = BaseFlutFirebaseUser(user));
