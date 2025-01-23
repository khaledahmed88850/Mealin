import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:mealin/features/home/data/manager/models/recipe_model.dart';
import 'package:mealin/features/home/data/repo/home_repo.dart';

part 'recipes_by_category_state.dart';

class RecipesByCategoryCubit extends Cubit<RecipesByCategoryState> {
  RecipesByCategoryCubit(this.homeRepo) : super(RecipesByCategoryInitial());
  final HomeRepo homeRepo;

  Future<void> fetchRecipeByCategory({required String tag}) async {
    emit(RecipesByCategoryLoading());
    var result = await homeRepo.fetchRecipeByCategory(tag: tag);
    result.fold((Failure) {
      emit(RecipesByCategoryFailure(errMesage: Failure.errMesage));
    }, (recipes) {
      emit(RecipesByCategorySuccess(recipes: recipes));
    });
  }
}
