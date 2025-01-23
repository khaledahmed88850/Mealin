part of 'recipe_cubit.dart';

sealed class RecipeState extends Equatable {
  const RecipeState();

  @override
  List<Object> get props => [];
}

final class RecipeInitial extends RecipeState {}

final class RecipeLoading extends RecipeState {}

final class RecipeFailure extends RecipeState {
  final String errMesage;

  const RecipeFailure({required this.errMesage});
}

final class RecipeSuccess extends RecipeState {
  final List<RecipeModel> recipes;

  const RecipeSuccess({required this.recipes});
}
