import 'package:clot_ecommerce/data/auth/model/user_creation_req.dart';
import 'package:dartz/dartz.dart';

abstract class AuthRepo {
  Future<Either> signUp(UserCreationReq user);
}