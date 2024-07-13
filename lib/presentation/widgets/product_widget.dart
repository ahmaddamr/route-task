import 'package:flutter/material.dart';
import 'package:route_task/utils/utils_class.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget(
      {super.key,
      required this.img,
      required this.name,
      required this.discription,
      required this.price,
      required this.oldprice,
      required this.rate});
  final String img;
  final String name;
  final String discription;
  final String price;
  final String oldprice;
  final String rate;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      // padding: EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.0),
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
                  topLeft: Radius.circular(10),
                ),
                child: Image.network(
                  img,
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: Text(
              name,
              style: Styles.itemTextStyle,
              maxLines: 1,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: Text(
              discription,
              style: Styles.itemTextStyle,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const SizedBox(height: 5.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: Row(
              children: [
                Text(
                  'EGP $oldprice',
                  style: Styles.itemTextStyle,
                ),
                const SizedBox(width: 10.0),
                Text(
                  '${(price)} EGP',
                  style: Styles.itemTextStyle.copyWith(
                      decoration: TextDecoration.lineThrough,
                      fontSize: 14,
                      color: Colors.blue),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      'Review ($rate)',
                      style: Styles.itemTextStyle,
                    ),
                    const SizedBox(width: 1.0),
                    const Icon(
                      Icons.star,
                      color: Colors.amber,
                      size: 20.0,
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.all(3.0),
                  child: CircleAvatar(
                    radius: 14.0,
                    backgroundColor: Color(0xff014089),
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 22.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
