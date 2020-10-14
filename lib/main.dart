import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
    theme: ThemeData(
      primarySwatch: Colors.purpleAccent[100],
    ),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var myText = "Some Name should be here";
  TextEditingController _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
        title: Text("Hii"),
      ),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Card(
            child: Column(children: <Widget>[
              Image.asset(
                "assets/image.png",
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                myText,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: _nameController,
                  decoration: InputDecoration(
                      hintText: "Enter a name",
                      labelText: "Name",
                      border: OutlineInputBorder()),
                ),
              )
            ]),
          ),
        ),
      )),
      drawer: Drawer(
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
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          myText = _nameController.text;
          setState(() {});
        },
        child: Icon(Icons.stars),
      ),
    );
  }
}
