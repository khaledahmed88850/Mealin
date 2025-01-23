import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:mealin/core/errors/failure.dart';
import 'package:mealin/core/utils/api_services.dart';
import 'package:mealin/features/home/data/repo/home_repo.dart';
import 'package:mealin/features/home/data/manager/models/recipe_model.dart';

class HomeRepoImplemetation extends HomeRepo {
  final ApiServices apiServices;

  HomeRepoImplemetation({required this.apiServices});
  @override
  Future<Either<Failure, List<RecipeModel>>> fetchRecipe() async {
    try {
      var data = await apiServices.get(endPoint: '?limit=20&skip=10');
      List<RecipeModel> recipesList = [];
      for (var item in data['recipes']) {
        recipesList.add(RecipeModel.fromJson(item));
      }
      return right(recipesList);
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure(errMesage: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<RecipeModel>>> fetchRecipeByCategory(
      {required String tag}) async {
    try {
      var data = await apiServices.get(endPoint: '/tag/$tag');
      List<RecipeModel> recipesList = [];
      for (var item in data['recipes']) {
        recipesList.add(RecipeModel.fromJson(item));
      }
      return right(recipesList);
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure(errMesage: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<RecipeModel>>> fetchRecipeByName(
      {required String recipeName}) async {
    try {
      var data = await apiServices.get(endPoint: '/search?q=$recipeName');
      List<RecipeModel> recipesList = [];
      for (var item in data['recipes']) {
        recipesList.add(RecipeModel.fromJson(item));
      }
      return right(recipesList);
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure(errMesage: e.toString()));
    }
  }
}
