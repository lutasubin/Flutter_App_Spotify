import 'package:dartz/dartz.dart';
import 'package:spotify/data/model/auth/create_user_rq.dart';
import 'package:spotify/data/model/auth/signin_user_rq.dart';

abstract class AuthRepository {
  
  Future<Either> signup(CreateUserRq createUserRq);
  
  Future<Either> signin(SigninUserRq signinUserRq);
}