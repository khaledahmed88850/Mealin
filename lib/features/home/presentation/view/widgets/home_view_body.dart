import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mealin/core/utils/app_routers.dart';
import 'package:mealin/core/utils/styles.dart';
import 'package:mealin/features/home/presentation/view/widgets/custom_app_bar.dart';
import 'package:mealin/features/home/presentation/view/widgets/custom_navigation_bar.dart';
import 'package:mealin/features/home/presentation/view/widgets/food_recipes_list_view_builder.dart';
import 'package:mealin/features/home/presentation/view/widgets/recipe_types_list_view_builder.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const NeverScrollableScrollPhysics(),
      slivers: [
        const SliverToBoxAdapter(child: CustomAppBar()),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 10,
          ),
        ),
        SliverToBoxAdapter(
          child: GestureDetector(
            onTap: () {
              GoRouter.of(context).push(AppRouters.kSearchView);
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                padding: const EdgeInsets.all(8),
                height: 55,
                width: double.infinity,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                      side: const BorderSide(width: 0.2)),
                  color: Colors.transparent,
                ),
                child: Row(
                  children: [
                    const Icon(Icons.search),
                    const SizedBox(
                      width: 16,
                    ),
                    Text('Search recipes',
                        style:
                            Styles.textStyle16.copyWith(color: Colors.black38))
                  ],
                ),
              ),
            ),
          ),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 15,
          ),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.2,
              child: RecipeTypesListViewBuilder()),
        ),
        const SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.only(left: 25, top: 10),
            child: Text(
              'Popular',
              style: Styles.textStyle20,
            ),
          ),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 20,
          ),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.36,
              child: const FoodRecipesListViewBuilder()),
        ),
        const SliverFillRemaining(
            child: Align(
                alignment: Alignment.bottomCenter,
                child: CustomNavigationBar()))
      ],
    );
  }
}
