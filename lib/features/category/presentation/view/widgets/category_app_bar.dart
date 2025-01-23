import 'package:flutter/material.dart';
import 'package:mealin/core/utils/styles.dart';
import 'package:mealin/features/category/presentation/view/widgets/custom_icon.dart';

class CategoryAppBar extends StatelessWidget {
  const CategoryAppBar({
    super.key, required this.tag,
  });
  final String tag;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const CustomBackIcon(),
         Text(
          tag,
          style: Styles.textStyle30,
        ),
        const SizedBox(
          width: 50,
        )
      ],
    );
  }
}
