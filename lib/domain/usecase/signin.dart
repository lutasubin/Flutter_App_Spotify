import 'package:dartz/dartz.dart';
import 'package:spotify/core/usecase/usecase.dart';
import 'package:spotify/data/model/auth/signin_user_rq.dart';
import 'package:spotify/domain/repository/auth/auth_repository.dart';
import 'package:spotify/service_locator.dart';

class SigninUseCase implements UseCase<Either, SigninUserRq> {
  @override
  Future<Either> call({SigninUserRq ?params}) async{
    return sl<AuthRepository>().signin(params!);
  }
 

}
