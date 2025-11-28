import 'package:flutter/material.dart';
import 'package:reimi_app/shared/widgets/background_container.dart';

class WeatherReportScreen extends StatelessWidget {
  const WeatherReportScreen({super.key});
  static String get routeName => 'weather_report';
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
                  'ウェザーリポート画面',
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
