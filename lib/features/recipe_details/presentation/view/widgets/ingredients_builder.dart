import 'package:flutter/material.dart';
import 'package:mealin/core/utils/styles.dart';
import 'package:mealin/features/home/data/manager/models/recipe_model.dart';

class IngredientsBuilder extends StatelessWidget {
  const IngredientsBuilder({super.key, required this.recipeModel});
  final RecipeModel recipeModel;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: recipeModel.ingredients!.length ,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Text(
             ' (${index +1}) ${recipeModel.ingredients![index]}',
            style: Styles.textStyle16.copyWith(fontWeight: FontWeight.normal),
          ),
        );
      },
    );
  }
}
