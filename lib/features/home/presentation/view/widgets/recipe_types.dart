import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mealin/core/utils/app_routers.dart';
import 'package:mealin/core/utils/styles.dart';
import 'package:mealin/features/home/data/manager/models/types_model.dart';
import 'package:mealin/features/home/presentation/view/widgets/custom_recipe_image.dart';

class RecipeTypes extends StatelessWidget {
  const RecipeTypes({super.key, required this.typesModel, });
  final TypesModel typesModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 130,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: CustomRecipeImage(
              onPressed: () {
                GoRouter.of(context).push(AppRouters.kCategoryView , extra: typesModel.name);
              },
              imageUrl: typesModel.image,
              aspectRatio: 1.1,
            ),
          ),
        ),
        Text(
          typesModel.name,
          style: Styles.textStyle18,
        ),
      ],
    );
  }
}
