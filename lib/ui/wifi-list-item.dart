import 'package:flutter/material.dart';
import 'package:open_wifi_share/model/base-model.dart';

class WifiListItem extends StatefulWidget {

  BaseModel baseModel;
  WifiListItem({this.baseModel});

  @override
  _WifiListItemState createState() => _WifiListItemState();
}

class _WifiListItemState extends State<WifiListItem> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: () {
        Scaffold.of(context).showSnackBar(new SnackBar(content: Text("Hello")));
      },
      leading: Icon(Icons.wifi),
      trailing: Icon(Icons.download_done_outlined,color: Colors.green,),
      title: Text(widget.baseModel.ssid),
      subtitle: Text(widget.baseModel.country),
    );
  }
}
