import 'package:flutter/material.dart';
import 'package:mealin/constants.dart';
import 'package:mealin/features/home/data/manager/models/recipe_model.dart';
import 'package:mealin/features/recipe_details/presentation/view/widgets/caloriesservingtimebuilder.dart';
import 'package:mealin/features/recipe_details/presentation/view/widgets/ingredients_builder.dart';
import 'package:mealin/features/recipe_details/presentation/view/widgets/instruction_builder.dart';

class SelectionDetails extends StatefulWidget {
  const SelectionDetails({super.key, required this.recipe});
  final RecipeModel recipe;

  @override
  State<SelectionDetails> createState() => _SelectionDetailsState();
}

class _SelectionDetailsState extends State<SelectionDetails>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height *0.45,
      child: Column(
        children: [
          TabBar(
              controller: _tabController,
              dividerHeight: 0,
              indicatorColor: kPrimaryColor,
              labelColor: kPrimaryColor,
              indicatorPadding: const EdgeInsets.symmetric(horizontal: 50),
              indicatorSize: TabBarIndicatorSize.tab,
              splashBorderRadius: BorderRadius.circular(12),
              tabs: const [
                Tab(
                  text: 'Details',
                ),
                Tab(
                  text: 'Ingredients',
                ),
                Tab(
                  text: 'Instructions',
                ),
              ]),
              SizedBox(height: 10,),
          Expanded(
            child: TabBarView(controller: _tabController, children: [
              Align(
                alignment: Alignment.topCenter,
                child: CaloriesServingTimeBuilder(
                  caloriesValue: widget.recipe.caloriesPerServing!,
                  servingValue: widget.recipe.servings!,
                  timeValue: widget.recipe.cookTimeMinutes!,
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: IngredientsBuilder(
                  recipeModel: widget.recipe,
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: InstructionsBuilder(
                  recipeModel: widget.recipe,
                ),
              ),
            ]),
          )
        ],
      ),
    );
  }
}
