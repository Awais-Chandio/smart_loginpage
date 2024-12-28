import 'package:flutter/material.dart';

class DemoBranch extends StatefulWidget {
  const DemoBranch({super.key});

  @override
  State<DemoBranch> createState() => _DemoBranchState();
}

class _DemoBranchState extends State<DemoBranch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Demo Branch"),
    ),
    body: const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("Demo Branch"),
        ],
      ),)
    );
  }
}