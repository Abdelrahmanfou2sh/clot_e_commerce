import 'package:clot_ecommerce/data/auth/model/user_creation_req.dart';
import 'package:clot_ecommerce/data/auth/source/auth_firebase_service.dart';
import 'package:clot_ecommerce/domain/auth/repository/auth_repo.dart';
import 'package:clot_ecommerce/service_locator.dart';
import 'package:dartz/dartz.dart';

class AuthRepoImpl extends AuthRepo{
  @override
  Future<Either> signUp(UserCreationReq user) async{
    return await s1<AuthFirebaseService>().signUp(user);
  }

}