import 'package:clot_ecommerce/data/auth/repository/auth_repo_impl.dart';
import 'package:clot_ecommerce/data/auth/source/auth_firebase_service.dart';
import 'package:clot_ecommerce/domain/auth/repository/auth_repo.dart';
import 'package:clot_ecommerce/domain/auth/use_cases/sign_up.dart';
import 'package:get_it/get_it.dart';

final s1 = GetIt.instance;

Future<void> initializeDependencies() async {
  s1.registerSingleton<AuthRepo>(AuthRepoImpl());
  s1.registerSingleton<AuthFirebaseService>(AuthFirebaseServiceImpl());
  s1.registerSingleton<SignUpUseCase>(SignUpUseCase());
}