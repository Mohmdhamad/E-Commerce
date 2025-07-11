import 'package:dartz/dartz.dart';
import 'package:e_commerece_sun3_c13/core/errors/failures.dart';
import 'package:e_commerece_sun3_c13/domain/entities/AddCartResponseEntity.dart';
import 'package:e_commerece_sun3_c13/domain/repositories/home/home_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class AddToCartUseCase {
  HomeRepository homeRepository;

  AddToCartUseCase({required this.homeRepository});

  Future<Either<Failures, AddCartResponseEntity>> invoke(String productId) {
    return homeRepository.addToCart(productId);
  }
}
