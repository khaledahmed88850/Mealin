import 'package:get_it/get_it.dart';
import 'package:mealin/core/utils/api_services.dart';
import 'package:mealin/features/home/data/repo/home_repo_implemetation.dart';

final getIt = GetIt.instance;
void setup() {
  getIt.registerSingleton<ApiServices>(ApiServices());
  getIt.registerSingleton<HomeRepoImplemetation>(
      HomeRepoImplemetation(apiServices: getIt.get<ApiServices>()));
}
