import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: const EdgeInsets.all(0),
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("Welcome !"),
            currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://images.pexels.com/photos/4974914/pexels-photo-4974914.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500")),
          ),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text("Dibyajyoti Mishra"),
            subtitle: Text("Developer"),
            trailing: Icon(Icons.expand_less),
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text("dibyajyotimishra4@gmail.com"),
            trailing: Icon(Icons.enhanced_encryption),
          ),
          ListTile(
            leading: Icon(Icons.phone_in_talk),
            title: Text("7675852414"),
            trailing: Icon(Icons.edit),
          ),
        ],
      ),
    );
  }
}
