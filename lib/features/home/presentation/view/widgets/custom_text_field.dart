
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mealin/core/utils/app_routers.dart';
import 'package:mealin/features/home/data/manager/cubit/recipes_by_name_cubit/recipes_by_name_cubit.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      onSubmitted: (value) {
        BlocProvider.of<RecipesByNameCubit>(context).fetchRecipeByName(recipeName: value);
        GoRouter.of(context).push(AppRouters.kCategoryView , extra: value);
      },
      decoration: InputDecoration(
          prefixIcon: const Icon(
            Icons.search,
            color: Colors.black38,
          ),
          hintStyle: const TextStyle(color: Colors.black38),
          hintText: 'Search recipes',
          enabledBorder: customBorder(),
          border: customBorder(),
          focusedBorder: customBorder()),
    );
  }

  OutlineInputBorder customBorder() {
    return OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.black12),
      borderRadius: BorderRadius.circular(16),
    );
  }
}
