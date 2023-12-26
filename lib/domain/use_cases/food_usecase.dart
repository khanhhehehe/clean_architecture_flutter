import 'package:my_practice_project/data/model/food_model.dart';
import 'package:my_practice_project/domain/entities/food.dart';

abstract class FoodUseCase {
  Future<List<Food>> getFood();
  Future<void> createFood(FoodModel food);
  Future<void> updateFood(String id, FoodModel food);
  Future<void> deleteFood(String id);
}
