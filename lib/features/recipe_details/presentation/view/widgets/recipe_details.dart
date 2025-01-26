import 'package:flutter/material.dart';
import 'package:mealin/features/category/presentation/view/widgets/rating.dart';
import 'package:mealin/features/home/data/manager/models/recipe_model.dart';
import 'package:mealin/features/recipe_details/presentation/view/widgets/recipe_details_app_bar.dart';
import 'package:mealin/features/recipe_details/presentation/view/widgets/selection_details.dart';

class RecipeDetails extends StatelessWidget {
  const RecipeDetails({super.key, required this.recipe});
  final RecipeModel recipe;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RecipedetailsAppBar(
              recipeName: recipe.name!,
            ),
            const SizedBox(
              height: 8,
            ),
            Rating(
              rating: recipe.rating!,
              textColor: Colors.black,
              iconColor: Colors.amber,
            ),
            SelectionDetails(
              recipe: recipe,
            )
          ],
        ),
      ),
    );
  }
}
