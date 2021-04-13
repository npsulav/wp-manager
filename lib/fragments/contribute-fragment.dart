import 'package:flutter/material.dart';

class ContributeFragment extends StatefulWidget {
  @override
  _ContributeFragmentState createState() => _ContributeFragmentState();
}

class _ContributeFragmentState extends State<ContributeFragment> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Text('''
          WP Manager is an open source project created by Flutter. If you want to contribute to this project,
          You can Contribute Codes, report Bugs, suggest New Features, help us Share this Project.
          
          For More information, Please head over to the GitHub 
          ''')
        ],
      ),
    );
  }
}
