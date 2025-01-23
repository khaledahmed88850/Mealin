import 'package:flutter/material.dart';
import 'package:mealin/features/splash/presentation/view/widgets/splash_view_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
      body: SplashViewBody(),
    ));
  }
}
