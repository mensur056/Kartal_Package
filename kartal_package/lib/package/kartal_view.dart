import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class KartalView extends StatefulWidget {
  const KartalView({Key? key}) : super(key: key);

  @override
  State<KartalView> createState() => _KartalViewState();
}

class _KartalViewState extends State<KartalView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Text('Mansur', style: context.textTheme.headline1),
          AnimatedContainer(
            duration: context.durationLow,
            color: Colors.red,
            height: context.isKeyBoardOpen ? 0 : context.dynamicHeight(0.3),
          ),
          const TextField()
        ],
      ),
    );
  }
}
