import 'package:flutter/material.dart';
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
            Container(
              width: 180,
              // padding: EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(color: Colors.grey),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 1,
                    blurRadius: 3,
                    offset: const Offset(0, 1), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(10),
                            topLeft: Radius.circular(10)),
                        child: Image.network(
                          'https://th.bing.com/th/id/OIP.tXQaubbYRZfiOBVdmQLugAHaH3?w=183&h=194&c=7&r=0&o=5&dpr=1.3&pid=1.7',
                          height: 115,
                          width: double.infinity,
                          fit: BoxFit.fill,
                        ),
                      ),
                      const Positioned(
                        top: 8,
                        right: 8,
                        child: CircleAvatar(
                          radius: 14,
                          child: Icon(
                            Icons.favorite_border,
                            color: Styles.primaryColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 5.0),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5.0),
                    child: Text(
                      'Nike Air Jordan',
                      style: Styles.itemTextStyle,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5.0),
                    child: Text(
                      'Nike shoes flexible for wo...',
                      style: Styles.itemTextStyle,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(height: 4.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: Row(
                      children: [
                        const Text(
                          'EGP 1,200',
                          style: Styles.itemTextStyle,
                        ),
                        const SizedBox(width: 10.0),
                        Text('2000 EGP',
                            style: Styles.itemTextStyle.copyWith(
                                decoration: TextDecoration.lineThrough,
                                fontSize: 14,
                                color: Colors.blue),),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Review (4.6)',
                              style: Styles.itemTextStyle,
                            ),
                            SizedBox(width: 1.0),
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 20.0,
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.all(3.0),
                          child: CircleAvatar(
                            radius: 14.0,
                            backgroundColor: Color(0xff014089),
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 20.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
