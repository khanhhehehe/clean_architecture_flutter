import 'package:injectable/injectable.dart';
import 'package:my_practice_project/common/configs/locators.dart';
import 'package:my_practice_project/data/model/food_model.dart';
import 'package:my_practice_project/domain/repositories/food.repositories.dart';
import 'package:my_practice_project/domain/services/food_service.dart';

@LazySingleton(as: FoodRepository)
class FoodRepositoryImp extends FoodRepository {
  final FoodService _foodService;

  FoodRepositoryImp() : _foodService = getIt<FoodService>();

  @override
  Future<List<FoodModel>> getFood() async {
    List<FoodModel> foods = await _foodService.getFood();
    return foods;
  }

  @override
  Future<void> createFood(FoodModel food) async {
    await _foodService.createFood(food);
  }

  @override
  Future<void> deleteFood(String id) async {
    await _foodService.deleteFood(id);
  }

  @override
  Future<void> updateFood(String id, FoodModel food) async {
    await _foodService.updateFood(id, food);
  }
}
