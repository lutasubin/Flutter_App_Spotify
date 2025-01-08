import 'package:dartz/dartz.dart';
import 'package:spotify/data/model/auth/create_user_rq.dart';
import 'package:spotify/data/model/auth/signin_user_rq.dart';
import 'package:spotify/data/sources/auth/auth_firebase_service.dart';
import 'package:spotify/domain/repository/auth/auth_repository.dart';
import 'package:spotify/service_locator.dart';

class AuthRepositoryImpl extends AuthRepository {

  
  @override
  Future<Either> signin(SigninUserRq signinUserRq) async {
        return await sl<AuthFirebaseService>().signin(signinUserRq);

  }

  @override
  Future<Either> signup(CreateUserRq createUserRq) async {
    return await sl<AuthFirebaseService>().signup(createUserRq);
  }
  
}