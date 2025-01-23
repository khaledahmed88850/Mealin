import 'package:flutter/material.dart';
import 'package:mealin/features/recipe_details/presentation/view/widgets/calories_serving_time_box.dart';

class CaloriesServingTimeBuilder extends StatelessWidget {
  const CaloriesServingTimeBuilder({
    super.key,
    required this.caloriesValue,
    required this.servingValue,
    required this.timeValue,
  });
  final int caloriesValue;
  final int servingValue;
  final int timeValue;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CaloriesServingTimeBox(
         icon: const Icon(Icons.local_fire_department , color:  Color.fromARGB(255, 255, 94, 7) ,) ,
          value: '$caloriesValue Cal.',
        ),
        CaloriesServingTimeBox(
           icon:const Icon(Icons.group , color:  Color.fromARGB(255, 39, 211, 230) ,) ,
          value: '$servingValue',
        ),
        CaloriesServingTimeBox(
          icon:const Icon(Icons.timer , color: Colors.green ,) ,
          value: '$timeValue Min.',
        ),
      ],
    );
  }
}
