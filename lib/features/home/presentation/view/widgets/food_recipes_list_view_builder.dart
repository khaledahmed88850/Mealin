import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mealin/core/utils/app_routers.dart';
import 'package:mealin/features/category/presentation/view/widgets/food_item_card.dart';
import 'package:mealin/features/home/data/manager/cubit/recipe_cubit/recipe_cubit.dart';

class FoodRecipesListViewBuilder extends StatelessWidget {
  const FoodRecipesListViewBuilder({super.key});

  @override
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RecipeCubit, RecipeState>(
      builder: (context, state) {
        if (state is RecipeSuccess) {
          return ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: state.recipes.length,
            itemBuilder: (context, index) {
              return SizedBox(
                height: MediaQuery.of(context).size.height * 0.2,
                width: MediaQuery.of(context).size.width * 0.8,
                child: FoodItemCard(
                  onPressed: () {
                    GoRouter.of(context).push(AppRouters.kRecipeDetailsView,
                        extra: state.recipes[index]);
                  },
                  recipe: state.recipes[index],
                  aspectRatio: 1.5,
                ),
              );
            },
          );
        } else if (state is RecipeLoading) {
          return const Center(
              child: CircularProgressIndicator(
            strokeAlign: 5,
          ));
        } else if (state is RecipeFailure) {
          return Text(state.errMesage);
        } else {
          return const Text('');
        }
      },
    );
  }
}
