import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      primary: true,
      backgroundColor: Color(0xff3742FA),
      automaticallyImplyLeading: false,
      toolbarHeight: 170,
      centerTitle: true,
      title: Text(
        'Cannes',
        style: GoogleFonts.pacifico(
          letterSpacing: 2,
          decoration: TextDecoration.underline,
          decorationThickness: 0.5,
          fontSize: 35,
          color: Colors.white,
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            foregroundColor: Colors.red,
          ),
        ),
      ],
      bottom: PreferredSize(
        preferredSize: Size(double.minPositive, 50),
        child: Column(
          children: [
            Text(
              'Search for 1000+ Products',
              style: TextStyle(
                decorationThickness: 0.5,
                fontSize: 13,
                color: Colors.white,
              ),
            ),
            Container(
              height: 80,
              padding: EdgeInsets.all(8.0),
              margin: EdgeInsets.all(8.0),
              child: TextFormField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  suffixIcon: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  filled: true,
                  border: InputBorder.none,
                  hintText: 'Search for Products',
                  hintStyle: TextStyle(color: Colors.white54),
                  fillColor: Color(0xff737afa),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
