import 'package:equatable/equatable.dart';

class RecipeModel extends Equatable {
  final int? id;
  final String? name;
  final List<dynamic>? ingredients;
  final List<dynamic>? instructions;
  final int? prepTimeMinutes;
  final int? cookTimeMinutes;
  final int? servings;
  final String? difficulty;
  final String? cuisine;
  final int? caloriesPerServing;
  final List<dynamic>? tags;
  final int? userId;
  final String? image;
  final double? rating;
  final int? reviewCount;
  final List<dynamic>? mealType;

  const RecipeModel({
    this.id,
    this.name,
    this.ingredients,
    this.instructions,
    this.prepTimeMinutes,
    this.cookTimeMinutes,
    this.servings,
    this.difficulty,
    this.cuisine,
    this.caloriesPerServing,
    this.tags,
    this.userId,
    this.image,
    this.rating,
    this.reviewCount,
    this.mealType,
  });

  factory RecipeModel.fromJson(Map<String, dynamic> json) => RecipeModel(
        id: json['id'] as int?,
        name: json['name'] as String?,
        ingredients: json['ingredients'] as List<dynamic>?,
        instructions: json['instructions'] as List<dynamic>?,
        prepTimeMinutes: json['prepTimeMinutes'] as int?,
        cookTimeMinutes: json['cookTimeMinutes'] as int?,
        servings: json['servings'] as int?,
        difficulty: json['difficulty'] as String?,
        cuisine: json['cuisine'] as String?,
        caloriesPerServing: json['caloriesPerServing'] as int?,
        tags: json['tags'] as List<dynamic>?,
        userId: json['userId'] as int?,
        image: json['image'] as String?,
        rating: (json['rating'] as num?)?.toDouble(),
        reviewCount: json['reviewCount'] as int?,
        mealType: json['mealType'] as List<dynamic>?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'ingredients': ingredients,
        'instructions': instructions,
        'prepTimeMinutes': prepTimeMinutes,
        'cookTimeMinutes': cookTimeMinutes,
        'servings': servings,
        'difficulty': difficulty,
        'cuisine': cuisine,
        'caloriesPerServing': caloriesPerServing,
        'tags': tags,
        'userId': userId,
        'image': image,
        'rating': rating,
        'reviewCount': reviewCount,
        'mealType': mealType,
      };

  @override
  List<Object?> get props {
    return [
      id,
      name,
      ingredients,
      instructions,
      prepTimeMinutes,
      cookTimeMinutes,
      servings,
      difficulty,
      cuisine,
      caloriesPerServing,
      tags,
      userId,
      image,
      rating,
      reviewCount,
      mealType,
    ];
  }
}
