import 'package:flutter/material.dart';
import 'package:mealin/features/home/data/manager/models/recipe_model.dart';
import 'package:mealin/features/recipe_details/presentation/view/widgets/recipe_details_view_body.dart';

class RecipeDetailsView extends StatelessWidget {
  const RecipeDetailsView({super.key, required this.recipe});
  final RecipeModel? recipe;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RecipeDetailsViewBody(
        recipe: recipe!,
      ),
    );
  }
}
