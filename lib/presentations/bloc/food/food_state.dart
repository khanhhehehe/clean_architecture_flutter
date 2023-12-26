import 'package:equatable/equatable.dart';
import '../../../domain/entities/food.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'food_state.g.dart';

enum FoodStatus { init, start, success, fail }

enum CreateFoodStatus { init, start, success, fail }

enum UpdateFoodStatus { init, start, success, fail }

enum DeleteFoodStatus { init, start, success, fail }

@JsonSerializable()
@CopyWith()
class FoodState extends Equatable {
  final List<Food> foods;
  final FoodStatus foodStatus;
  final CreateFoodStatus createFoodStatus;
  final UpdateFoodStatus updateFoodStatus;
  final DeleteFoodStatus deleteFoodStatus;

  const FoodState(
      {this.foods = const [],
      this.foodStatus = FoodStatus.fail,
      this.createFoodStatus = CreateFoodStatus.fail,
      this.updateFoodStatus = UpdateFoodStatus.fail,
      this.deleteFoodStatus = DeleteFoodStatus.fail});

  @override
  List<Object?> get props =>
      [foods, foodStatus, createFoodStatus, updateFoodStatus, deleteFoodStatus];

  factory FoodState.fromJson(Map<String, dynamic> json) =>
      _$FoodStateFromJson(json);

  Map<String, dynamic> toJson() => _$FoodStateToJson(this);
}

class FoodInitial extends FoodState {}
