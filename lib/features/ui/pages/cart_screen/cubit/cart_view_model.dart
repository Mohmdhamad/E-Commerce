import 'package:e_commerece_sun3_c13/domain/entities/GetCartResponseEntity.dart';
import 'package:e_commerece_sun3_c13/domain/use_cases/delete_items_in_cart_use_case.dart';
import 'package:e_commerece_sun3_c13/domain/use_cases/get_items_in_cart_use_case.dart';
import 'package:e_commerece_sun3_c13/domain/use_cases/update_count_in_cart_use_case.dart';
import 'package:e_commerece_sun3_c13/features/ui/pages/cart_screen/cubit/cart_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class CartViewModel extends Cubit<CartStates> {
  GetItemsInCartUseCase getItemsInCartUseCase;
  DeleteItemsInCartUseCase deleteItemsInCartUseCase;

  UpdateCountInCartUseCase updateCountInCartUseCase;

  CartViewModel(
      {required this.getItemsInCartUseCase,
      required this.deleteItemsInCartUseCase,
      required this.updateCountInCartUseCase})
      : super(GetCartLoadingState());

  //todo: hold data - handle logic
  List<GetProductEntity> productsList = [];

  static CartViewModel get(context) => BlocProvider.of<CartViewModel>(context);

  void getItemsInCart() async {
    emit(GetCartLoadingState());
    var either = await getItemsInCartUseCase.invoke();
    either.fold((error) {
      emit(GetCartErrorState(failures: error));
    }, (response) {
      productsList = response.data!.products!;
      emit(GetCartSuccessState(responseEntity: response));
    });
  }

  void deleteItemsInCart(String productId) async {
    var either = await deleteItemsInCartUseCase.invoke(productId);
    either.fold((error) {
      emit(DeleteItemsInCartErrorState(failures: error));
    }, (response) {
      // productsList = response.data!.products!;
      print('deleted successfully.');
      emit(GetCartSuccessState(responseEntity: response));
    });
  }

  void updateCountInCart(String productId, int count) async {
    var either = await updateCountInCartUseCase.invoke(productId, count);
    either.fold((error) {
      emit(UpdateCountInCartErrorState(failures: error));
    }, (response) {
      // productsList = response.data!.products!;
      print('updated successfully.');
      emit(GetCartSuccessState(responseEntity: response));
    });
  }
}
