import 'package:flutter/cupertino.dart';
import 'package:kotobaty_app/core/utils/assets_manager.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsManager.logo),
        const SizedBox(
          height: 4.0,
        ),
        const Text(
          "Read Free and Paid Books",
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
