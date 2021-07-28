import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child:Scaffold(
        appBar: AppBar(
          title: Text("TabBar"),
         bottom: (
         TabBar(
           tabs: [
             Tab(text: "Tab Bar1",icon: Icon(Icons.grade),),
             Tab(text: "Tab Bar2",icon: Icon(Icons.shopping_cart),),
           ],
         )
         ),
        ),
        body: TabBarView(
                          children: [
                            Scaffold(
                              body: Center(
                                child: Text("Tab Bar1"),
                              ),
                            ),
                            Scaffold(
                              body: Center(
                                child: Text("Tab Bar2"),
                              ),
                            ),
                          ],
        ),
      ) ,

    );
  }
}
