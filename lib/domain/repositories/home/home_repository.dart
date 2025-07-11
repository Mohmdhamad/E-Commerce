import 'package:dartz/dartz.dart';
import 'package:e_commerece_sun3_c13/domain/entities/AddCartResponseEntity.dart';
import 'package:e_commerece_sun3_c13/domain/entities/CategoryOrBrandResponseEntity.dart';
import 'package:e_commerece_sun3_c13/domain/entities/ProductResponseEntity.dart';

import '../../../core/errors/failures.dart';

abstract class HomeRepository {
  Future<Either<Failures, CategoryOrBrandResponseEntity>> getAllCategories();

  Future<Either<Failures, CategoryOrBrandResponseEntity>> getAllBrands();

  Future<Either<Failures, ProductResponseEntity>> getAllProducts();

  Future<Either<Failures, AddCartResponseEntity>> addToCart(String productId);
}
