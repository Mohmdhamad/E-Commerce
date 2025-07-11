import 'package:e_commerece_sun3_c13/core/errors/failures.dart';
import 'package:e_commerece_sun3_c13/domain/entities/RegisterResponseEntity.dart';

abstract class RegisterStates {}

class RegisterInitialState extends RegisterStates {}

class RegisterLoadingState extends RegisterStates {}

class RegisterErrorState extends RegisterStates {
  Failures errors;

  RegisterErrorState({required this.errors});
}

class RegisterSuccessState extends RegisterStates {
  RegisterResponseEntity responseEntity;

  RegisterSuccessState({required this.responseEntity});
}
