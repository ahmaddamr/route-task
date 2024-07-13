import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:route_task/presentation/widgets/textfield_widget.dart';
import 'package:route_task/utils/utils_class.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Image.asset('assets/images/route.png'),
        ),
        body: const Column(
          children: [
            Row(
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
            
          ],
        ),
      ),
    );
  }
}
