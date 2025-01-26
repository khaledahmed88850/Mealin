import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mealin/core/utils/app_routers.dart';
import 'package:mealin/features/category/presentation/view/widgets/food_item_card.dart';
import 'package:mealin/features/home/data/manager/cubit/recipes_by_category_cubit/recipes_by_category_cubit.dart';

class RecipeTypeItemsListViewBuilder extends StatelessWidget {
  const RecipeTypeItemsListViewBuilder({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RecipesByCategoryCubit, RecipesByCategoryState>(
      builder: (context, state) {
        if (state is RecipesByCategorySuccess) {
          return ListView.builder(
            itemCount: state.recipes.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.25,
                  child: FoodItemCard(
                      recipe: state.recipes[index],
                      onPressed: () {
                        GoRouter.of(context).push(AppRouters.kRecipeDetailsView,
                            extra: state.recipes[index]);
                      },
                      aspectRatio: 1.9),
                ),
              );
            },
          );
        } else if (state is RecipesByCategoryLoading) {
          return const Center(
              child: CircularProgressIndicator(
            strokeAlign: 5,
          ));
        } else if (state is RecipesByCategoryFailure) {
          return Center(
              child: Text(
            state.errMesage,
            style: const TextStyle(color: Colors.black, fontSize: 30),
          ));
        } else {
          return const Text('');
        }
      },
    );
  }
}
