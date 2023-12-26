import '../../data/model/food_model.dart';

abstract class FoodRepository{
  Future<List<FoodModel>> getFood();
  Future<void> createFood(FoodModel food);
  Future<void> updateFood(String id, FoodModel food);
  Future<void> deleteFood(String id);
}