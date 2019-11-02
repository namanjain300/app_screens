import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Multi Screen",
    home: TabLayoutDemo(),
  ));
}

class TabLayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      color: Colors.yellow,
      home: DefaultTabController(
        length: 4,
        child: new Scaffold(
          body: TabBarView(
            children: [
              new Container(
                  color: Colors.yellow,
                  child: Center(
                      child: Text("This is page 1",
                          style: TextStyle(
                              fontSize: 22.0, fontWeight: FontWeight.bold)))),
              new Container(
                  color: Colors.orange,
                  child: Center(
                      child: Text("This is page 2",
                          style: TextStyle(
                              fontSize: 22.0, fontWeight: FontWeight.bold)))),
              new Container(
                  color: Colors.lightGreen,
                  child: Center(
                      child: Text("This is page 3",
                          style: TextStyle(
                              fontSize: 22.0, fontWeight: FontWeight.bold)))),
              new Container(
                  color: Colors.red,
                  child: Center(
                      child: Text("This is page 4",
                          style: TextStyle(
                              fontSize: 22.0, fontWeight: FontWeight.bold)))),
            ],
          ),
          bottomNavigationBar: new TabBar(
            tabs: [
              Tab(
                icon: new Icon(Icons.home),
              ),
              Tab(
                icon: new Icon(Icons.rss_feed),
              ),
              Tab(
                icon: new Icon(Icons.perm_identity),
              ),
              Tab(
                icon: new Icon(Icons.settings),
              )
            ],
            labelColor: Colors.yellow,
            unselectedLabelColor: Colors.blue,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorPadding: EdgeInsets.all(5.0),
            indicatorColor: Colors.red,
          ),
          backgroundColor: Colors.black,
        ),
      ),
    );
  }
}
