import 'package:e_commerece_sun3_c13/core/errors/failures.dart';
import 'package:e_commerece_sun3_c13/domain/entities/LoginResponseEntity.dart';

abstract class LoginStates {}

class LoginInitialState extends LoginStates {}

class LoginLoadingState extends LoginStates {}

class LoginErrorState extends LoginStates {
  Failures errors;

  LoginErrorState({required this.errors});
}

class LoginSuccessState extends LoginStates {
  LoginResponseEntity responseEntity;

  LoginSuccessState({required this.responseEntity});
}
