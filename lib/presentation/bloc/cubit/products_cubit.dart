// ignore_for_file: avoid_print

import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:route_task/data/dataSources/remote/dio_helper.dart';
import 'package:route_task/data/models/product_model.dart';

part 'products_state.dart';

class ProductsCubit extends Cubit<ProductsState> {
  ProductsCubit() : super(ProductsInitial());
  static ProductsCubit get(context) => BlocProvider.of(context);
  ProductsModel? productsModel;
  void getProducts() {
    emit(ProductsLoadingState());
    DioHelper.getData(url: 'products').then((value) {
      productsModel = ProductsModel.fromJson(value.data);
      print(value.data);
      emit(ProductsSuccessState());
    }).catchError((error) {
      emit(ProductsErrorState(error: error));
      print(error.toString());
    });
  }
}
