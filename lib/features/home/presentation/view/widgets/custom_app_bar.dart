import 'package:flutter/material.dart';
import 'package:mealin/core/utils/assets.dart';
import 'package:mealin/core/utils/styles.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 30),
      child: Row(
        children: [
          SizedBox(
              height: 45,
              child: Image.asset(
                AssetsData.logo,
              )),
          const SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Mealin',
                style: Styles.textStyle26,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.6,
                child: Text(
                  'Find best recipes for cooking',
                  style:
                      Styles.textStyle16.copyWith(fontWeight: FontWeight.w100),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
