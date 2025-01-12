import 'package:clot_ecommerce/core/use_cases/use_cases.dart';
import 'package:clot_ecommerce/data/auth/model/user_creation_req.dart';
import 'package:clot_ecommerce/domain/auth/repository/auth_repo.dart';
import 'package:clot_ecommerce/service_locator.dart';
import 'package:dartz/dartz.dart';

class SignUpUseCase extends UseCase<Either, UserCreationReq>{
  @override
  Future<Either> call({UserCreationReq ? params}) async{
    return await s1<AuthRepo>().signUp(params!);
  }
}