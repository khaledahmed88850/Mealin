import 'package:flutter/material.dart';
import 'package:mealin/core/utils/styles.dart';

class CaloriesServingTimeBox extends StatelessWidget {
  const CaloriesServingTimeBox(
      {super.key,  required this.value, required this.icon});
  final String value;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: SizedBox(
        height: 80,
        width: 100,
        child: Card(
          shadowColor: const Color.fromARGB(180, 214, 168, 31),
          elevation: 5,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             icon,
              Text(
                '$value ',
                style: Styles.textStyle14,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
