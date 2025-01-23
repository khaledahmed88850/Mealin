import 'package:flutter/material.dart';
import 'package:mealin/features/category/presentation/view/widgets/custom_icon.dart';
import 'package:mealin/features/home/data/manager/models/recipe_model.dart';
import 'package:mealin/features/home/presentation/view/widgets/custom_recipe_image.dart';
import 'package:mealin/features/recipe_details/presentation/view/widgets/recipe_details.dart';

class RecipeDetailsViewBody extends StatelessWidget {
  const RecipeDetailsViewBody({super.key, required this.recipe});
  final RecipeModel recipe;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.45,
            child: CustomRecipeImage(
              imageUrl: recipe.image!,
              aspectRatio: 1.3,
            ),
          ),
          const Positioned(
            left: 10,
            top: 30,
            child: CustomBackIcon(),
          ),
        ]),
        Expanded(
    
          child: RecipeDetails(
            recipe: recipe,
          ),
        ),
      ],
    );
  }
}
