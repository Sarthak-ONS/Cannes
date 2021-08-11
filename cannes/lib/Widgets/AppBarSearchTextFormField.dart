import 'package:flutter/material.dart';

var kborderStyle = OutlineInputBorder(
    borderSide: BorderSide(color: Color(0xff7e84f7), width: 5.0));

class AppBarSearchTextFormField extends StatelessWidget {
  const AppBarSearchTextFormField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.black38,
          blurRadius: 25,
          offset: const Offset(0, 10),
        ),
      ]),
      height: 50,
      child: TextFormField(
        style: TextStyle(color: Colors.black),
        decoration: InputDecoration(
          suffixIcon: Icon(
            Icons.search,
            color: Colors.white,
          ),
          filled: true,
          focusedBorder: kborderStyle,
          enabledBorder: kborderStyle,
          border: kborderStyle,
          hintText: 'Search for Products',
          hintStyle: TextStyle(color: Colors.black54),
          fillColor: Colors.white,
        ),
      ),
    );
  }
}
