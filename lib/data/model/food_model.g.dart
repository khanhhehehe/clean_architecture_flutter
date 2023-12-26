// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FoodModel _$FoodModelFromJson(Map<String, dynamic> json) => FoodModel(
      name: json['name'] as String? ?? '',
      image: json['image'] as String? ?? '',
      rating: json['rating'] as int? ?? 0,
      ingredients: (json['ingredients'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      time: json['time'] as String? ?? '',
      difficulty: json['difficulty'] as String? ?? '',
      calories: json['calories'] as String? ?? '',
      color: json['color'] as String? ?? '',
      description: json['description'] as String? ?? '',
      steps:
          (json['steps'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
      type: json['type'] as String? ?? '',
      id: json['id'] as String? ?? '',
    );

Map<String, dynamic> _$FoodModelToJson(FoodModel instance) => <String, dynamic>{
      'name': instance.name,
      'image': instance.image,
      'rating': instance.rating,
      'ingredients': instance.ingredients,
      'time': instance.time,
      'difficulty': instance.difficulty,
      'calories': instance.calories,
      'color': instance.color,
      'description': instance.description,
      'steps': instance.steps,
      'type': instance.type,
      'id': instance.id,
    };
