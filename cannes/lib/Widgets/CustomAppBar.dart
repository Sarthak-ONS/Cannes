import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'AppBarSearchTextFormField.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverPersistentHeader(
      delegate: CustomSliverAppBarDelegate(expandedHeight: 200),
      pinned: true,
      floating: true,
    );
  }
}

class CustomSliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  final double expandedHeight;

  const CustomSliverAppBarDelegate({
    @required this.expandedHeight,
  });

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    final size = 70;
    final top = expandedHeight - shrinkOffset - size / 2;

    return Stack(
      fit: StackFit.expand,
      overflow: Overflow.visible,
      children: [
        buildBackground(shrinkOffset),
        buildAppBar(shrinkOffset),
        Positioned(
          top: top,
          left: 20,
          right: 20,
          child: buildFloating(shrinkOffset),
        ),
      ],
    );
  }

  double appear(double shrinkOffset) => shrinkOffset / expandedHeight;

  double disappear(double shrinkOffset) => 1 - shrinkOffset / expandedHeight;

  Widget buildAppBar(double shrinkOffset) => Opacity(
        opacity: appear(shrinkOffset),
        child: AppBar(
          backgroundColor: Color(0xff3742FA),
          automaticallyImplyLeading: false,
          title: Text(
            'Cannes',
            style: GoogleFonts.pacifico(
              letterSpacing: 2,
              decorationThickness: 0.5,
              fontSize: 30,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
        ),
      );

  Widget buildBackground(double shrinkOffset) => Opacity(
        opacity: disappear(shrinkOffset),
        child: Stack(
          children: [
            Container(
              width: double.maxFinite,
              child: Image.network(
                'https://wallpaperaccess.com/full/1437673.jpg',
                fit: BoxFit.fill,
              ),
            ),
            Positioned(
              right: 15,
              top: 15,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {
                    print("Opening Drawer");
                  },
                  child: Container(
                    child: CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.black,
                      foregroundImage: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgyKqUxXJQ_QID_uh2caE3ho9suuYvMBH1UwI0dHGpowIZKabwHgEci1wTdUUN_2GTODE&usqp=CAU"),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      );

  Widget buildFloating(double shrinkOffset) => Opacity(
        opacity: disappear(shrinkOffset),
        child: AppBarSearchTextFormField(),
      );

  Widget buildButton({
    @required String text,
    @required IconData icon,
  }) =>
      TextButton(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon),
            const SizedBox(width: 12),
            Text(text, style: TextStyle(fontSize: 20)),
          ],
        ),
        onPressed: () {},
      );

  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => kToolbarHeight + 30;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
}
