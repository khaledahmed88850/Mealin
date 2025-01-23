import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:go_router/go_router.dart';
import 'package:mealin/constants.dart';
import 'package:mealin/core/utils/app_routers.dart';
import 'package:mealin/core/utils/assets.dart';
import 'package:mealin/features/splash/presentation/view/widgets/three_dots_loading.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  bool isloading = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Spacer(
          flex: 1,
        ),
        Animate(
          effects: const [
            ShimmerEffect(
                duration: Duration(milliseconds: 800),
                delay: Duration(milliseconds: 200))
          ],
          child: SizedBox(
            width: double.infinity,
            child: AspectRatio(
              aspectRatio: 1.6,
              child: Image.asset(
                AssetsData.logo,
              ),
            ),
          ),
        ),
        Animate(
          onComplete: (controller) async {
            setState(() {
              isloading = true;
            });
            await Future.delayed(const Duration(seconds: 1));
            setState(() {
              isloading = false;
            });
            GoRouter.of(context).push(AppRouters.kHomeView);
          },
          effects: const [
            // FlipEffect(duration: Duration(seconds: 2)),
            TintEffect(duration: Duration(seconds: 1), color: kPrimaryColor),
            MoveEffect(
              duration: Duration(seconds: 1),
              begin: Offset(0, 20),
              end: Offset(0, 3),
            )
          ],
          child: Text(
            'Mealin',
            style: TextStyle(
              color: const Color.fromARGB(255, 125, 40, 51),
              fontSize: 42,
              fontWeight: FontWeight.bold,
              fontFamily: AssetsData.fontEdu,
            ),
          ),
        ),
        const Spacer(
          flex: 1,
        ),
        isloading == true
            ? const ThreeDotsLoading()
            : const SizedBox(
                height: 40,
              ),
        const SizedBox(
          height: 40,
        ),
      ],
    );
  }
}
