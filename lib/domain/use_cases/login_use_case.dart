import 'package:dartz/dartz.dart';
import 'package:e_commerece_sun3_c13/domain/entities/LoginResponseEntity.dart';
import 'package:e_commerece_sun3_c13/domain/repositories/auth/auth_repository.dart';
import 'package:injectable/injectable.dart';

import '../../core/errors/failures.dart';

@injectable
class LoginUseCase {
  AuthRepository authRepository;

  LoginUseCase({required this.authRepository});

  Future<Either<Failures, LoginResponseEntity>> invoke(
      String email, String password) {
    return authRepository.login(email, password);
  }
}
