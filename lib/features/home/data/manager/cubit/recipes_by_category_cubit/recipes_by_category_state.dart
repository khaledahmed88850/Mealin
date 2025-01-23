part of 'recipes_by_category_cubit.dart';

sealed class RecipesByCategoryState extends Equatable {
  const RecipesByCategoryState();

  @override
  List<Object> get props => [];
}

final class RecipesByCategoryInitial extends RecipesByCategoryState {}

final class RecipesByCategoryLoading extends RecipesByCategoryState {}

final class RecipesByCategoryFailure extends RecipesByCategoryState {
  final String errMesage;

  const RecipesByCategoryFailure({required this.errMesage});
}

final class RecipesByCategorySuccess extends RecipesByCategoryState {
  final List<RecipeModel> recipes;

  const RecipesByCategorySuccess({required this.recipes});
}
