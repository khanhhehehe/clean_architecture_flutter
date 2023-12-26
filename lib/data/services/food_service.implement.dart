import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:my_practice_project/common/configs/path_config.dart';
import 'package:my_practice_project/data/model/food_model.dart';
import 'package:my_practice_project/data/services/base.service.dart';
import 'package:my_practice_project/domain/services/food_service.dart';

@LazySingleton(as: FoodService)
class FoodServiceImp extends BaseService implements FoodService {
  @override
  Future<List<FoodModel>> getFood() async {
    final url = '${PathConfig.baseUrl}/${PathConfig.getFood}';
    final response = await client.get(url);
    List result = json.decode(response.body);
    List<FoodModel> foods = [];
    for (int i = result.length - 1; i >= 0; i--) {
      foods.add(FoodModel.fromJson(result[i]));
    }
    return foods;
  }

  @override
  Future<void> createFood(FoodModel food) async {
    final url = '${PathConfig.baseUrl}/${PathConfig.getFood}';
    final body = json.encode(food);
    await client.post(url, body: body);
  }

  @override
  Future<void> deleteFood(String id) async {
    final url = '${PathConfig.baseUrl}/${PathConfig.getFood}/$id';
    await client.delete(url);
  }

  @override
  Future<void> updateFood(String id, FoodModel food) async {
    final url = '${PathConfig.baseUrl}/${PathConfig.getFood}/$id';
    final body = json.encode(food);
    await client.put(url, body: body);
  }

  @override
  Future<void> updatePartOfFood(String id, value) async {
    //TODO: api chua co patch
    final url = '${PathConfig.baseUrl}/${PathConfig.getFood}';
    await client.patch(url);
  }
}
