import 'package:json_annotation/json_annotation.dart';

part 'food.g.dart';

@JsonSerializable()
class Food {
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

  Food({
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

  factory Food.fromJson(Map<String, dynamic> json) => _$FoodFromJson(json);

  Map<String, dynamic> toJson() => _$FoodToJson(this);
}
