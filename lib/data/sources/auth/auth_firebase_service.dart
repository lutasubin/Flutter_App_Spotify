import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:spotify/data/model/auth/create_user_rq.dart';
import 'package:spotify/data/model/auth/signin_user_rq.dart';

abstract class AuthFirebaseService {
  Future<Either> signup(CreateUserRq createUserRq);

  Future<Either> signin(SigninUserRq signinUserRq);
}

class AuthFirebaseServiceImpl extends AuthFirebaseService {
  @override
  Future<Either> signin(SigninUserRq signinUserRq) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: signinUserRq.email, password: signinUserRq.password);
          return Right('Signin successful');
    } on FirebaseAuthException catch (e) {
      String message = '';
      if (e.code=='invalid-email') {
        message = 'Not user found for that email';
      } else if (e.code=='invalid_credential') {
        message = 'Wrong password provided for that user';
      }
      return Left(message);
    }
  }

  @override
  Future<Either> signup(CreateUserRq createUserRq) async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: createUserRq.email, password: createUserRq.password);
          return Right('Signup successful');
    } on FirebaseAuthException catch (e) {
      String message = '';
      if (e.code=='weak-password') {
        message = 'The password provided is too weak.';
      } else if (e.code=='email-already-in-use') {
        message = 'The account already exists for that email.';
      }
      return Left(message);
    }
  }
}
