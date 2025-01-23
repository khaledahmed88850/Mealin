part of 'recipes_by_name_cubit.dart';

sealed class RecipesByNameState extends Equatable {
  const RecipesByNameState();

  @override
  List<Object> get props => [];
}

final class RecipesByNameInitial extends RecipesByNameState {}

final class RecipesByNameLoading extends RecipesByNameState {}

final class RecipesByNameFailure extends RecipesByNameState {
  final String errMesage;

  const RecipesByNameFailure({required this.errMesage});
}

final class RecipesByNameSuccess extends RecipesByNameState {
  final List<RecipeModel> recipes;

  const RecipesByNameSuccess({required this.recipes});
}
