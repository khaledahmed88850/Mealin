import 'package:flutter/material.dart';
import 'package:mealin/core/utils/styles.dart';

class RecipedetailsAppBar extends StatelessWidget {
  const RecipedetailsAppBar({super.key, required this.recipeName});
  final String recipeName;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
         Text(
          recipeName ,
          style: Styles.textStyle20,
        ),
        IconButton(onPressed: () {}, icon: const Icon(Icons.favorite_border_sharp))
      ],
    );
  }
}
