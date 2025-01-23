import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mealin/core/utils/assets.dart';
import 'package:mealin/core/utils/styles.dart';
import 'package:mealin/features/home/presentation/view/widgets/custom_text_field.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Row(
              children: [
                const Expanded(child: CustomTextField()),
                const SizedBox(
                  width: 8,
                ),
                GestureDetector(
                  onTap: () {
                    GoRouter.of(context).pop();
                  },
                  child: const Text(
                    'Back',
                    style: Styles.textStyle14,
                  ),
                )
              ],
            ),
          ),
          Image.asset(
            AssetsData.searchLogo,
            fit: BoxFit.fill,
            scale: 6,
          ),
          const Text(
            'What are you looking for?',
            style: Styles.textStyle20,
          ),
          Text(
            'Search with recipe name or category ',
            style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
