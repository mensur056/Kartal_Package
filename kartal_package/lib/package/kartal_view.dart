import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:kartal_package/package/kartal_second_view.dart';

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
          InkWell(
            onTap: () {
              context.navigateToPage(const KartalSecondView(),
                  type: SlideType.LEFT);
            },
            child: Text('Mansur', style: context.textTheme.headline1),
          ),
          InkWell(
            onTap: () {
              'https://github.com/mensur056/Flutter_Lessons/blob/main/day_2/pubspec.yaml'
                  .launchWebsite;
            },
            child: Text('github', style: context.textTheme.headline5),
          ),
          AnimatedContainer(
            duration: context.durationLow,
            color: Colors.red,
            height: context.isKeyBoardOpen ? 0 : context.dynamicHeight(0.1),
          ),
          const TextField(
            autocorrect: false,
          ),
          Image.network(NetworkImageExtension('').randomImage)
        ],
      ),
    );
  }
}
