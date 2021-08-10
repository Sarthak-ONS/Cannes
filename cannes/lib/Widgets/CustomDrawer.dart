import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: Color(0xff3742FA),
            ),
            currentAccountPicture: ClipOval(
              child: Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTfy4ghPOuzQrDlEff3cTr-oR-HpxzJf3ZihYYbDyzijMEC95cn4unnPn2WVA3x3tcKoIc&usqp=CAU",
              ),
            ),
            accountName: Text('Sarthak Agawral'),
            accountEmail: Text('agarwalsarthak456@gmail.com'),
          ),
          ListTile(
            title: Text('My Orders'),
            trailing: Icon(Icons.money_rounded),
          ),
          ListTile(title: Text('Profile'), trailing: Icon(Icons.account_box)),
          ListTile(
            title: Text('Premium'),
            trailing: Icon(Icons.update),
          ),
          ListTile(
            title: Text('Settings'),
            trailing: Icon(Icons.settings),
          ),
          ListTile(title: Text('Logout'), trailing: Icon(Icons.logout)),
        ],
      ),
    );
  }
}
