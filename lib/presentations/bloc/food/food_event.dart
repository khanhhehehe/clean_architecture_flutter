part of 'food_bloc.dart';

class FoodEvent extends Equatable {
  const FoodEvent();

  @override
  List<Object?> get props => [];
}

class GetFoods extends FoodEvent {
  const GetFoods();

  @override
  List<Object?> get props => [];
}

class CreateFood extends FoodEvent {
  final FoodModel food;

  const CreateFood({this.food = const FoodModel.initFood()});

  @override
  List<Object?> get props => [food];
}

class UpdateFood extends FoodEvent {
  final String id;
  final FoodModel food;
  const UpdateFood({this.id = '', this.food = const FoodModel.initFood()});
  @override
  List<Object?> get props => [id, food];
}

class DeleteFood extends FoodEvent {
  final String id;
  const DeleteFood({this.id = ''});
  @override
  List<Object?> get props => [id];
}
