import 'package:flutter/material.dart';
import 'package:route_task/utils/utils_class.dart';

class TextfieldWidget extends StatelessWidget {
  const TextfieldWidget({super.key});

  @override
  Widget build(BuildContext ontext) {
    return const Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 21.0),
        child: TextField(
            decoration: InputDecoration(
          hintText: 'What do you search for? ',
          prefixIcon: Icon(
            Icons.search_sharp,
            color: Styles.primaryColor,
            size: 30,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(25.0)),
            borderSide: BorderSide(
              color: Styles.primaryColor,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(25.0)),
            borderSide: BorderSide(
              color: Styles.primaryColor,
              width: 1.5,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(25.0)),
            borderSide: BorderSide(
              color: Styles.primaryColor,
              width: 1.5,
            ),
          ),
        )),
      ),
    );
  }
}
