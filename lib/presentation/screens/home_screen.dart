import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:route_task/presentation/bloc/cubit/products_cubit.dart';
import 'package:route_task/presentation/widgets/product_widget.dart';
import 'package:route_task/presentation/widgets/textfield_widget.dart';
import 'package:route_task/utils/utils_class.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProductsCubit, ProductsState>(
      listener: (context, state) {
      },
      builder: (context, state) {
        var model = context.read<ProductsCubit>().productsModel;
        if (state is ProductsLoadingState) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is ProductsErrorState) {
          return Center(child: Text(state.error.toString()));
        } else if (model != null) {
          return SafeArea(
            child: Scaffold(
              backgroundColor: Colors.white,
              appBar: AppBar(
                backgroundColor: Colors.white,
                title: Image.asset('assets/images/route.png'),
              ),
              body: Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      TextfieldWidget(),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15.0),
                        child: Icon(Icons.shopping_cart_outlined,
                            color: Styles.primaryColor, size: 30),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10.0),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GridView.builder(
                        physics: const BouncingScrollPhysics(),
                        itemCount: model.products?.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                mainAxisSpacing: 18,
                                crossAxisSpacing: 15,
                                childAspectRatio: 1 / 1.1),
                        itemBuilder: (context, index) {
                          return ProductWidget(
                            img: model.products?[index].images?.first ?? "",
                            name: model.products?[index].title ?? "",
                            discription:
                                model.products?[index].description ?? "",
                            price:
                                model.products?[index].price.toString() ?? '',
                            oldprice: model.products?[index].discountPercentage
                                    .toString() ??
                                "",
                            rate:
                                model.products?[index].rating.toString() ?? "",
                          );
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
