import 'package:flutter/material.dart';
import 'package:open_wifi_share/fragments/about-fragment.dart';
import 'package:open_wifi_share/fragments/contribute-fragment.dart';
import 'package:open_wifi_share/fragments/settings-fragment.dart';
import 'package:open_wifi_share/fragments/wifi-list.dart';
import 'package:open_wifi_share/screens/home/add-new-page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          actions: [
            GestureDetector(
              onTap: () {
                // show action context
              },
              child: Icon(Icons.more_vert),
            )
          ],
          bottom: TabBar(
            isScrollable: true,
            tabs: [
              Tab(
                text: "Saved",
              ),
              Tab(
                text: "Contribute",
              ),
              Tab(
                text: "About",
              ),
              Tab(
                text: "Settings",
              ),
            ],
          ),
          title: Text('WP Manager'),
          centerTitle: true,
          leading: Icon(Icons.signal_cellular_alt_outlined),
        ),
        body: TabBarView(
          children: [
            WifiList(),
            ContributeFragment(),
            AboutFragment(),
            SettingsFragment(),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.purple,
          foregroundColor: Colors.white,
          child: Icon(Icons.add),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (BuildContext con) => AddNewPage()));
          },
        ),
      ),
    );
  }
}
