import 'package:go_router/go_router.dart';
import 'package:mealin/features/category/presentation/view/category_view.dart';
import 'package:mealin/features/home/data/manager/models/recipe_model.dart';
import 'package:mealin/features/home/presentation/view/home_view.dart';
import 'package:mealin/features/home/presentation/view/search_view.dart';
import 'package:mealin/features/recipe_details/presentation/view/recipe_details_view.dart';
import 'package:mealin/features/splash/presentation/view/splash_view.dart';

abstract class AppRouters {
  static const kHomeView = '/HomeView';
  static const kCategoryView = '/CategoryView';
  static const kRecipeDetailsView = '/RecipeDetailsView';
  static const kSearchView = '/SearchView';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: '/HomeView',
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: '/SearchView',
        builder: (context, state) => const SearchView(),
      ),
      GoRoute(
        path: '/CategoryView',
        builder: (context, state) => CategoryView(
          tag: state.extra as String,
        ),
      ),
      GoRoute(
        path: '/RecipeDetailsView',
        builder: (context, state) =>
            RecipeDetailsView(recipe: state.extra as RecipeModel),
      ),
    ],
  );
}
