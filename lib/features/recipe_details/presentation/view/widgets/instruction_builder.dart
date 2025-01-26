import 'package:flutter/material.dart';
import 'package:mealin/core/utils/styles.dart';
import 'package:mealin/features/home/data/manager/models/recipe_model.dart';

class InstructionsBuilder extends StatelessWidget {
  const InstructionsBuilder({super.key, required this.recipeModel});
 final RecipeModel recipeModel;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(8),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: recipeModel.instructions!.length,
      itemBuilder: (context, index) {
        return Text(
          '${index+1}) ${recipeModel.instructions![index]}',
          style: Styles.textStyle16.copyWith(fontWeight: FontWeight.normal),
        );
      },
    );
  }
}
