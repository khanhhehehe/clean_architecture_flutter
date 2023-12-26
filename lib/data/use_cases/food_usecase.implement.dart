import 'package:injectable/injectable.dart';
import 'package:my_practice_project/common/configs/locators.dart';
import 'package:my_practice_project/data/model/food_model.dart';
import 'package:my_practice_project/domain/entities/food.dart';
import 'package:my_practice_project/domain/repositories/food.repositories.dart';
import 'package:my_practice_project/domain/use_cases/food_usecase.dart';

@LazySingleton(as: FoodUseCase)
class FoodUseCaseImp extends FoodUseCase {
  final FoodRepository _foodRepository;
  FoodUseCaseImp() : _foodRepository = getIt<FoodRepository>();
  @override
  Future<List<Food>> getFood() async {
    List<FoodModel> foodModels = await _foodRepository.getFood();
    return foodModels
        .map((e) => Food(
            color: e.color,
            image: e.image,
            calories: e.calories,
            description: e.description,
            difficulty: e.difficulty,
            id: e.id,
            ingredients: e.ingredients,
            name: e.name,
            rating: e.rating,
            steps: e.steps,
            time: e.time,
            type: e.type))
        .toList();
  }

  @override
  Future<void> createFood(FoodModel food) async {
    await _foodRepository.createFood(food);
  }

  @override
  Future<void> deleteFood(String id) async {
    await _foodRepository.deleteFood(id);
  }

  @override
  Future<void> updateFood(String id, FoodModel food) async {
    await _foodRepository.updateFood(id, food);
  }
}
