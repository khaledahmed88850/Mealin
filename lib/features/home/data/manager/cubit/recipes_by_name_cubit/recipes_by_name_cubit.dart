import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:mealin/features/home/data/manager/models/recipe_model.dart';
import 'package:mealin/features/home/data/repo/home_repo.dart';

part 'recipes_by_name_state.dart';

class RecipesByNameCubit extends Cubit<RecipesByNameState> {
  RecipesByNameCubit(this.homeRepo) : super(RecipesByNameInitial());
  final HomeRepo homeRepo;
  Future<void> fetchRecipeByName({required String recipeName}) async {
    emit(RecipesByNameLoading());
    var result = await homeRepo.fetchRecipeByName(recipeName: recipeName);
    result.fold((Failure) {
      emit(RecipesByNameFailure(errMesage: Failure.errMesage));
    }, (recipes) {
      emit(RecipesByNameSuccess(recipes: recipes));
    });
  }
}
