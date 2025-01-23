import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class ThreeDotsLoading extends StatelessWidget {
  const ThreeDotsLoading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SpinKitThreeBounce(
        duration: const Duration(seconds: 1),
        size: 20,
        itemBuilder: (BuildContext context, int index) {
          return const DecoratedBox(
            decoration: BoxDecoration(
              color: Color.fromARGB(156, 0, 0, 0),
            ),
          );
        });
  }
}
