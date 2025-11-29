import 'package:flutter/material.dart';
import 'package:reimi_app/shared/widgets/background_container.dart';

class LikeScreen extends StatelessWidget {
  const LikeScreen({super.key});
  static String get routeName => 'like';
  static String get routeLocation => '/$routeName';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundContainer(
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'いいね画面',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
