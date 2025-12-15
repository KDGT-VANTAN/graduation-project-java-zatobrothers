import 'package:flutter/material.dart';
import 'package:reimi_app/presentation/pages/account/components/account_header.dart';
import 'package:reimi_app/presentation/shared/widgets/background_container.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});
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
              children: <Widget>[],
            ),
          ),
        ),
      ),
    );
  }
}
