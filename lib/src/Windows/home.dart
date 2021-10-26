import 'package:flutter/material.dart';
import 'package:floricultura/src/Windows/donate.dart';
import 'package:floricultura/src/Windows/data.dart';
import 'package:floricultura/src/Windows/blog.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        initialIndex: 1,
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () => Navigator.of(context).pop(),
            ),
            bottom: const TabBar(
              tabs: <Widget>[
                Tab(
                  icon: Icon(Icons.info_outline),
                ),
                Tab(
                  icon: Icon(Icons.attribution),
                ),
                Tab(
                  icon: Icon(Icons.account_circle_outlined),
                ),
              ],
            ),
          ),
          backgroundColor: Color.fromRGBO(237, 232, 236, 10),
          body: TabBarView(
            children: <Widget>[
              Center(
                child: MaterialApp(title: 'DonatePage Demo', home: BlogPage()),
              ),
              Center(
                child:
                    MaterialApp(title: 'DonatePage Demo', home: DonatePage()),
              ),
              Center(
                child: MaterialApp(title: 'DataPage Demo', home: DataPage()),
              ),
            ],
          ),
        ));
  }
}
