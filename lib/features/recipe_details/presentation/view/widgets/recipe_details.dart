import 'package:flutter/material.dart';
import 'package:mealin/core/utils/styles.dart';
import 'package:mealin/features/category/presentation/view/widgets/rating.dart';
import 'package:mealin/features/home/data/manager/models/recipe_model.dart';
import 'package:mealin/features/recipe_details/presentation/view/widgets/caloriesservingtimebuilder.dart';
import 'package:mealin/features/recipe_details/presentation/view/widgets/ingredients_builder.dart';
import 'package:mealin/features/recipe_details/presentation/view/widgets/instruction_builder.dart';
import 'package:mealin/features/recipe_details/presentation/view/widgets/recipe_details_app_bar.dart';

class RecipeDetails extends StatelessWidget {
  const RecipeDetails({super.key, required this.recipe});
  final RecipeModel recipe;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16 , vertical: 12),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RecipedetailsAppBar(
              recipeName: recipe.name!,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Rating(
                rating: recipe.rating!,
                textColor: Colors.black,
                iconColor: Colors.amber,
              ),
            ),
            CaloriesServingTimeBuilder(
              caloriesValue: recipe.caloriesPerServing!,
              servingValue: recipe.servings!,
              timeValue: recipe.cookTimeMinutes!,
            ),
            const Text(
              'Ingredients',
              style: Styles.textStyle20,
            ),
            IngredientsBuilder(
              recipeModel: recipe,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 16, top: 5),
              child: Text(
                'Instructions',
                style: Styles.textStyle30,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: InstructionsBuilder(recipeModel: recipe,),
            ),
            const SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}
