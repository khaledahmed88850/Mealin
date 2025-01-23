import 'package:flutter/material.dart';
import 'package:mealin/features/home/data/manager/models/types_model.dart';
import 'package:mealin/features/home/presentation/view/widgets/recipe_types.dart';

class RecipeTypesListViewBuilder extends StatelessWidget {
  RecipeTypesListViewBuilder({super.key});
  final List<TypesModel> tags = [
    TypesModel(
      name: "Italian",
      image: 'https://cdn.dummyjson.com/recipe-images/1.webp',
    ),
    TypesModel(
      name: "Asian",
      image: 'https://cdn.dummyjson.com/recipe-images/8.webp',
    ),
    TypesModel(
      name: "Pasta",
      image: 'https://cdn.dummyjson.com/recipe-images/4.webp',
    ),
    TypesModel(
      name: "Chicken",
      image: 'https://cdn.dummyjson.com/recipe-images/12.webp',
    ),
    TypesModel(
      name: "Salad",
      image: 'https://cdn.dummyjson.com/recipe-images/9.webp',
    ),
    TypesModel(
      name: "Beef",
      image: 'https://cdn.dummyjson.com/recipe-images/8.webp',
    ),
    TypesModel(
      name: "Indian",
      image: 'https://cdn.dummyjson.com/recipe-images/15.webp',
    ),
    TypesModel(
      name: "Pakistani",
      image: 'https://cdn.dummyjson.com/recipe-images/20.webp',
    ),
    TypesModel(
      name: "Kebabs",
      image: 'https://cdn.dummyjson.com/recipe-images/24.webp',
    ),
    TypesModel(
      name: "Japanese",
      image: 'https://cdn.dummyjson.com/recipe-images/16.webp',
    ),
    TypesModel(
      name: "Soup",
      image: 'https://cdn.dummyjson.com/recipe-images/27.webp',
    ),
    TypesModel(
      name: "Moroccan",
      image: 'https://cdn.dummyjson.com/recipe-images/39.webp',
    ),
    TypesModel(
      name: "Greek",
      image: 'https://cdn.dummyjson.com/recipe-images/38.webp',
    ),
    TypesModel(
      name: "Mexican",
      image: 'https://cdn.dummyjson.com/recipe-images/36.webp',
    ),
    TypesModel(
      name: "Smoothie",
      image: 'https://cdn.dummyjson.com/recipe-images/25.webp',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tags.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return RecipeTypes(
          typesModel: tags[index],
        );
      },
    );
  }
}
