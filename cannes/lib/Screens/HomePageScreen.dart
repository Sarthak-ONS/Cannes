import 'package:cannes/Widgets/CustomDrawer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({Key key}) : super(key: key);

  @override
  _HomePageScreenState createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  final _scaffoldKey = GlobalKey();
  openEndDrawer() {}
  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        flexibleSpace: PreferredSize(
          preferredSize: Size(double.maxFinite, 300),
          child: Text('kdvbsdv'),
        ),
        backgroundColor: Color(0xff3742FA),
        title: Text(
          'Cannes',
          style:
              GoogleFonts.pacifico(fontSize: 25, fontWeight: FontWeight.w300),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          Builder(
            builder: (_) => IconButton(
              icon: Icon(Icons.menu_rounded),
              onPressed: () {
                Scaffold.of(_).openEndDrawer();
              },
            ),
          )
        ],
      ),
      endDrawer: CustomDrawer(),
      body: ListView(
        
      ),
    );
  }
}
