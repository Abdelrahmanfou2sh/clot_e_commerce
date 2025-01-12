class UserCreationReq {
  String? email;
  String? password;
  String? firstName;
  String? lastName;
  String? gender;
  int? age;
  UserCreationReq({required this.email, required this.password, required this.firstName, required this.lastName});
}