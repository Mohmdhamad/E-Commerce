import 'package:dartz/dartz.dart';
import 'package:e_commerece_sun3_c13/core/errors/failures.dart';
import 'package:e_commerece_sun3_c13/domain/entities/GetCartResponseEntity.dart';
import 'package:e_commerece_sun3_c13/domain/repositories/cart/cart_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class DeleteItemsInCartUseCase {
  CartRepository cartRepository;

  DeleteItemsInCartUseCase({required this.cartRepository});

  Future<Either<Failures, GetCartResponseEntity>> invoke(String productId) {
    return cartRepository.deleteItemsInCart(productId);
  }
}
