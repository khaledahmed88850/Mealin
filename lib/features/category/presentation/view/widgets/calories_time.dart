import 'package:flutter/material.dart';
import 'package:mealin/features/home/data/manager/models/recipe_model.dart';

class CaloriesTime extends StatelessWidget {
  const CaloriesTime({super.key, required this.recipe});
  final RecipeModel recipe;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(left: 10, top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(
                Icons.access_time_rounded,
                color: Colors.white,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
            '${recipe.cookTimeMinutes} Min.',
                style: const TextStyle(color: Colors.white),
              ),
            ],
          ),
          Row(
            children: [
              const Icon(
                Icons.local_fire_department_outlined,
                color: Colors.white,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                '${recipe.caloriesPerServing} Cal.',
                style: const TextStyle(color: Colors.white),
              ),
            ],
          ),
          Row(
            children: [
              const Icon(
                Icons.group,
                color: Colors.white,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                '${recipe.servings} Person',
                style: const TextStyle(color: Colors.white),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
