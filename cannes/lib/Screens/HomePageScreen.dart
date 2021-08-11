import 'package:cannes/Widgets/CustomAppBar.dart';
import 'package:cannes/Widgets/CustomDrawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
      drawer: CustomDrawer(),
      body: CustomScrollView(
        slivers: [
          CustomAppBar(),
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200.0,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
              childAspectRatio: 4.0,
            ),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  alignment: Alignment.center,
                  color: Colors.lightBlue[100 * (index % 8)],
                  child: Text('grid item ${index+1}'),
                );
              },
              childCount: 50,
            ),
          ),
        ],
      ),
    );
  }
}
