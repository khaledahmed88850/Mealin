import 'package:flutter/material.dart';
import 'package:mealin/features/category/presentation/view/widgets/rating.dart';
import 'package:mealin/features/home/data/manager/models/recipe_model.dart';
import 'package:mealin/features/home/presentation/view/widgets/custom_recipe_image.dart';

import 'calories_time.dart';

class FoodItemCard extends StatelessWidget {
  const FoodItemCard({
    super.key,
    this.caloriesTimeExist = true,
    this.ratingExist = true,
    this.onPressed,
    required this.aspectRatio,
    required this.recipe,
  });

  final bool caloriesTimeExist;
  final bool ratingExist;
  final void Function()? onPressed;
  final double aspectRatio;

  final RecipeModel recipe;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0),
        child: Stack(children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: CustomRecipeImage(
              aspectRatio: aspectRatio,
              imageUrl: recipe.image! ,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                gradient: const LinearGradient(
                  begin: Alignment.bottomLeft,
                  colors: [
                    Color.fromARGB(137, 0, 0, 0),
                    Color.fromARGB(0, 37, 36, 36)
                  ],
                ),
              ),
            ),
          ),
          Positioned(
              left: 20,
              top: 20,
              child: Text(
                recipe.name!,
                style: const TextStyle(color: Colors.white, fontSize: 20),
              )),
          Positioned(
              bottom: 10,
              left: 20,
              child: caloriesTimeExist == true
                  ? CaloriesTime(
                      recipe: recipe,
                    )
                  : const Text('')),
          Positioned(
            right: 20,
            bottom: 10,
            child: ratingExist == true ?  Rating(rating: recipe.rating!,) : const Text(''),
          ),
        ]),
      ),
    );
  }
}
