import 'package:dartz/dartz.dart';
import 'package:mealin/core/errors/failure.dart';
import 'package:mealin/features/home/data/manager/models/recipe_model.dart';

abstract class HomeRepo {

  Future<Either<Failure ,List<RecipeModel>>>fetchRecipe(); 
  Future<Either<Failure ,List<RecipeModel>>>fetchRecipeByCategory({required String tag}); 
  Future<Either<Failure ,List<RecipeModel>>>fetchRecipeByName({required String recipeName}); 

}