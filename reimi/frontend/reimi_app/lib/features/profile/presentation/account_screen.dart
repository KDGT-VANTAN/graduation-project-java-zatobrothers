import 'package:flutter/material.dart';
import 'package:reimi_app/features/profile/presentation/widgets/account_header.dart';
import 'package:reimi_app/shared/widgets/background_container.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});
  static String get routeName => 'account';
  static String get routeLocation => '/$routeName';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const AccountHeader(),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: const BackgroundContainer(
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
              ],
            ),
          ),
        ),
      ),
    );
  }
}
