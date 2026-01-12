import 'package:flutter/widgets.dart';

class BackgroundContainerNight extends StatelessWidget {
  const BackgroundContainerNight({super.key, required this.child});
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFF2E4154),
            Color(0xFF3F566B),
          ],
        ),
      ),
      child: child,
    );
  }
}
