import 'package:e_commerece_sun3_c13/core/errors/failures.dart';
import 'package:e_commerece_sun3_c13/domain/entities/AddCartResponseEntity.dart';
import 'package:e_commerece_sun3_c13/domain/entities/ProductResponseEntity.dart';

abstract class ProductTabStates {}

class ProductTabInitialState extends ProductTabStates {}

class ProductTabLoadingState extends ProductTabStates {}

class ProductTabErrorState extends ProductTabStates {
  Failures failures;

  ProductTabErrorState({required this.failures});
}

class ProductTabSuccessState extends ProductTabStates {
  ProductResponseEntity responseEntity;

  ProductTabSuccessState({required this.responseEntity});
}

class AddToCartLoadingState extends ProductTabStates {}

class AddToCartErrorState extends ProductTabStates {
  Failures failures;

  AddToCartErrorState({required this.failures});
}

class AddToCartSuccessState extends ProductTabStates {
  AddCartResponseEntity responseEntity;

  AddToCartSuccessState({required this.responseEntity});
}
