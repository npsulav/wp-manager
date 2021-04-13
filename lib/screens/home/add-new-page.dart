import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AddNewPage extends StatefulWidget {
  @override
  _AddNewPageState createState() => _AddNewPageState();
}

class _AddNewPageState extends State<AddNewPage> {

  TextEditingController ssid = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController country = TextEditingController();
  TextEditingController remarks = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text("Add New"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
           _title(),

           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Column(
               children: [
                 Text("SSID"),
                 TextField(
                   controller: ssid,
                 ),
               ],
             ),
           ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text("Password"),
                  TextField(
                    controller: password,
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text("Country"),
                  TextField(
                    controller: country,
                  ),
                ],
              ),
            ),


            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text("Remarks"),
                  TextField(
                    controller: remarks,
                  ),
                ],
              ),
            ),


            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.maxFinite,
                height: 50,
                child: FlatButton(
                  color: Colors.purple,
                  onPressed: () {  },
                  child: Text("Save",style: TextStyle(color: Colors.white),),
                ),
              )
            ),
          ],
        ),
      ),
    );
  }

  Widget _title() {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
          child: Text(
            "You can add new WIFI Credentials to your WIFI Manager database.",
            textAlign: TextAlign.start,
            style: TextStyle(color: Colors.grey),
          )),
    );
  }

  void saveToMockBase(){
    // implement provider based mock data add
  }


}
