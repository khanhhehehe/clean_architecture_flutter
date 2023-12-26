import 'package:json_annotation/json_annotation.dart';

part 'food_model.g.dart';

@JsonSerializable()
class FoodModel {
  final String name;
  final String image;
  final int rating;
  final List<String> ingredients;
  final String time;
  final String difficulty;
  final String calories;
  final String color;
  final String description;
  final List<String> steps;
  final String type;
  final String id;

  FoodModel({
    this.name = '',
    this.image = '',
    this.rating = 0,
    this.ingredients = const [],
    this.time = '',
    this.difficulty = '',
    this.calories = '',
    this.color = '',
    this.description = '',
    this.steps = const [],
    this.type = '',
    this.id = '',
  });

  const FoodModel.initFood()
      : name = '',
        image = '',
        rating = 0,
        ingredients = const [],
        time = '',
        difficulty = '',
        calories = '',
        color = '',
        description = '',
        steps = const [],
        type = '',
        id = '';

  factory FoodModel.fromJson(Map<String, dynamic> json) =>
      _$FoodModelFromJson(json);

  Map<String, dynamic> toJson() => _$FoodModelToJson(this);
}
