import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:mealin/features/home/data/manager/models/recipe_model.dart';
import 'package:mealin/features/home/data/repo/home_repo.dart';

part 'recipe_state.dart';

class RecipeCubit extends Cubit<RecipeState> {
  RecipeCubit(this.homeRepo) : super(RecipeInitial());
  final HomeRepo homeRepo;
  Future<void> fetchRecipe () async
  {
    emit(RecipeLoading());

    var result = await homeRepo.fetchRecipe();
    result.fold((Failure) {
      emit(RecipeFailure(errMesage: Failure.errMesage));
    }, (recipes)
    {
      emit(RecipeSuccess(recipes: recipes));
    });

  }
}
