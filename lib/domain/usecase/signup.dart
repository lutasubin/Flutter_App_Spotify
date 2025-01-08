import 'package:dartz/dartz.dart';
import 'package:spotify/core/usecase/usecase.dart';
import 'package:spotify/data/model/auth/create_user_rq.dart';
import 'package:spotify/domain/repository/auth/auth_repository.dart';
import 'package:spotify/service_locator.dart';

class SignupUseCase implements UseCase<Either, CreateUserRq> {
  @override
  Future<Either> call({CreateUserRq ?params}) async{
    return sl<AuthRepository>().signup(params!);
  }
 

}
