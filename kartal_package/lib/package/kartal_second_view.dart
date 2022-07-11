import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class KartalSecondView extends StatefulWidget {
  const KartalSecondView({Key? key}) : super(key: key);

  @override
  State<KartalSecondView> createState() => _KartalSecondViewState();
}

class _KartalSecondViewState extends State<KartalSecondView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        color: Colors.green,
        height: context.dynamicHeight(0.9),
      ),
    );
  }
}
