import 'package:flutter/material.dart';
import 'package:mealin/core/utils/styles.dart';

class RecipedetailsAppBar extends StatelessWidget {
  const RecipedetailsAppBar({super.key, required this.recipeName});
  final String recipeName;

  @override
  Widget build(BuildContext context) {
    return Text(
      recipeName,
      style: Styles.textStyle20,
    );
  }
}
