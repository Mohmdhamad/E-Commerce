import 'package:dartz/dartz.dart';
import 'package:e_commerece_sun3_c13/core/errors/failures.dart';
import 'package:e_commerece_sun3_c13/domain/entities/LoginResponseEntity.dart';
import 'package:e_commerece_sun3_c13/domain/entities/RegisterResponseEntity.dart';
import 'package:e_commerece_sun3_c13/domain/repositories/auth/auth_repository.dart';
import 'package:e_commerece_sun3_c13/domain/repositories/data_sources/remote_data_sources/auth_remote_data_source.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  AuthRemoteDataSource authRemoteDataSource;

  AuthRepositoryImpl({required this.authRemoteDataSource});

  @override
  Future<Either<Failures, RegisterResponseEntity>> register(String name,
      String email, String password, String rePassword, String phone) async {
    var either = await authRemoteDataSource.register(
        name, email, password, rePassword, phone);
    return either.fold((error) => Left(error), (response) => Right(response));
  }

  @override
  Future<Either<Failures, LoginResponseEntity>> login(
      String email, String password) async {
    var either = await authRemoteDataSource.login(email, password);
    return either.fold((error) => Left(error), (response) => Right(response));
  }
}
