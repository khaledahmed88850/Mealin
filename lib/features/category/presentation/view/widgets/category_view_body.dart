import 'package:flutter/material.dart';
import 'package:mealin/features/category/presentation/view/widgets/category_app_bar.dart';
import 'package:mealin/features/category/presentation/view/widgets/recipe_type_items_list_view_builder.dart';
import 'package:mealin/features/home/presentation/view/widgets/custom_navigation_bar.dart';

class CategoryViewBody extends StatelessWidget {
  const CategoryViewBody({super.key, required this.tag, });
  final String tag;
  
  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         Padding(
          padding:const EdgeInsets.only(left: 10, right: 10, top: 30, bottom: 10),
          child: CategoryAppBar(tag: tag,),
        ),
       const Expanded(
            child: RecipeTypeItemsListViewBuilder(
        )),
        const CustomNavigationBar()
      ],
    );
  }
}
