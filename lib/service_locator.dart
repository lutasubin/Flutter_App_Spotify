import 'package:get_it/get_it.dart';
import 'package:spotify/data/repository/auth/auth_repository_impl.dart';
import 'package:spotify/data/sources/auth/auth_firebase_service.dart';
import 'package:spotify/domain/repository/auth/auth_repository.dart';
import 'package:spotify/domain/usecase/signin.dart';
import 'package:spotify/domain/usecase/signup.dart';

final sl = GetIt.instance;

Future<void> initializeDependecies() async {
  sl.registerSingleton<AuthFirebaseService>(
     AuthFirebaseServiceImpl()
    );
     sl.registerSingleton<AuthRepository>(
      AuthRepositoryImpl()
    );
    sl.registerSingleton<SignupUseCase>(
      SignupUseCase()
    );
    sl.registerSingleton<SigninUseCase>(
      SigninUseCase()
    );
}
