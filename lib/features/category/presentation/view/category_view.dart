import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mealin/features/category/presentation/view/widgets/category_view_body.dart';
import 'package:mealin/features/home/data/manager/cubit/recipes_by_category_cubit/recipes_by_category_cubit.dart';

class CategoryView extends StatefulWidget {
  const CategoryView({super.key,  this.tag, this.name});
  final String? tag;
  final String? name;

  @override
  State<CategoryView> createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView> {
  late String data;
  @override
  void initState() {
    if (widget.tag != null) {
      BlocProvider.of<RecipesByCategoryCubit>(context)
          .fetchRecipeByCategory(tag: widget.tag!);
          data = widget.tag!;
    }
    else if(widget.name != null)
    {
      data = widget.name!;
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CategoryViewBody(
          tag: data,
        ),
      ),
    );
  }
}
