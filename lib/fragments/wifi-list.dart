import 'package:flutter/material.dart';
import 'package:open_wifi_share/mocks/mock-data.dart';
import 'package:open_wifi_share/model/base-model.dart';
import 'package:open_wifi_share/ui/wifi-list-item.dart';

class WifiList extends StatefulWidget {
  @override
  _WifiListState createState() => _WifiListState();
}

class _WifiListState extends State<WifiList> {
  MockData _mockData = MockData();
  List<BaseModel> _list = [];


  @override
  void initState() {
    _list.clear();
    _list = _mockData.getMockList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: _list.length,
        itemBuilder: (BuildContext context, int c) => WifiListItem(baseModel: _list[c],));
  }
}
