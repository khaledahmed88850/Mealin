import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mealin/core/utils/api_services.dart';
import 'package:mealin/core/utils/app_routers.dart';
import 'package:mealin/features/home/data/manager/cubit/recipe_cubit/recipe_cubit.dart';
import 'package:mealin/features/home/data/manager/cubit/recipes_by_category_cubit/recipes_by_category_cubit.dart';
import 'package:mealin/features/home/data/manager/cubit/recipes_by_name_cubit/recipes_by_name_cubit.dart';
import 'package:mealin/features/home/data/repo/home_repo_implemetation.dart';

void main() {
  runApp(const Mealin());
}

class Mealin extends StatelessWidget {
  const Mealin({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              RecipeCubit(HomeRepoImplemetation(apiServices: ApiServices()))
                ..fetchRecipe(),
        ),
        BlocProvider(
          create: (context) => RecipesByCategoryCubit(
              HomeRepoImplemetation(apiServices: ApiServices())),
        ),
        BlocProvider(
          create: (context) =>
              RecipesByNameCubit(HomeRepoImplemetation(apiServices: ApiServices())),
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: AppRouters.router,
      ),
    );
  }
}
