import '../../data/model/food_model.dart';

abstract class FoodService {
  Future<List<FoodModel>> getFood();
  Future<void> createFood(FoodModel food);
  Future<void> updateFood(String id, FoodModel food);
  Future<void> updatePartOfFood(String id, value);
  Future<void> deleteFood(String id);
}
