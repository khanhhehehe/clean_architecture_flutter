// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food_state.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$FoodStateCWProxy {
  FoodState createFoodStatus(CreateFoodStatus createFoodStatus);

  FoodState deleteFoodStatus(DeleteFoodStatus deleteFoodStatus);

  FoodState foodStatus(FoodStatus foodStatus);

  FoodState foods(List<Food> foods);

  FoodState updateFoodStatus(UpdateFoodStatus updateFoodStatus);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `FoodState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// FoodState(...).copyWith(id: 12, name: "My name")
  /// ````
  FoodState call({
    CreateFoodStatus? createFoodStatus,
    DeleteFoodStatus? deleteFoodStatus,
    FoodStatus? foodStatus,
    List<Food>? foods,
    UpdateFoodStatus? updateFoodStatus,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfFoodState.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfFoodState.copyWith.fieldName(...)`
class _$FoodStateCWProxyImpl implements _$FoodStateCWProxy {
  final FoodState _value;

  const _$FoodStateCWProxyImpl(this._value);

  @override
  FoodState createFoodStatus(CreateFoodStatus createFoodStatus) =>
      this(createFoodStatus: createFoodStatus);

  @override
  FoodState deleteFoodStatus(DeleteFoodStatus deleteFoodStatus) =>
      this(deleteFoodStatus: deleteFoodStatus);

  @override
  FoodState foodStatus(FoodStatus foodStatus) => this(foodStatus: foodStatus);

  @override
  FoodState foods(List<Food> foods) => this(foods: foods);

  @override
  FoodState updateFoodStatus(UpdateFoodStatus updateFoodStatus) =>
      this(updateFoodStatus: updateFoodStatus);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `FoodState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// FoodState(...).copyWith(id: 12, name: "My name")
  /// ````
  FoodState call({
    Object? createFoodStatus = const $CopyWithPlaceholder(),
    Object? deleteFoodStatus = const $CopyWithPlaceholder(),
    Object? foodStatus = const $CopyWithPlaceholder(),
    Object? foods = const $CopyWithPlaceholder(),
    Object? updateFoodStatus = const $CopyWithPlaceholder(),
  }) {
    return FoodState(
      createFoodStatus: createFoodStatus == const $CopyWithPlaceholder() ||
              createFoodStatus == null
          ? _value.createFoodStatus
          // ignore: cast_nullable_to_non_nullable
          : createFoodStatus as CreateFoodStatus,
      deleteFoodStatus: deleteFoodStatus == const $CopyWithPlaceholder() ||
              deleteFoodStatus == null
          ? _value.deleteFoodStatus
          // ignore: cast_nullable_to_non_nullable
          : deleteFoodStatus as DeleteFoodStatus,
      foodStatus:
          foodStatus == const $CopyWithPlaceholder() || foodStatus == null
              ? _value.foodStatus
              // ignore: cast_nullable_to_non_nullable
              : foodStatus as FoodStatus,
      foods: foods == const $CopyWithPlaceholder() || foods == null
          ? _value.foods
          // ignore: cast_nullable_to_non_nullable
          : foods as List<Food>,
      updateFoodStatus: updateFoodStatus == const $CopyWithPlaceholder() ||
              updateFoodStatus == null
          ? _value.updateFoodStatus
          // ignore: cast_nullable_to_non_nullable
          : updateFoodStatus as UpdateFoodStatus,
    );
  }
}

extension $FoodStateCopyWith on FoodState {
  /// Returns a callable class that can be used as follows: `instanceOfFoodState.copyWith(...)` or like so:`instanceOfFoodState.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$FoodStateCWProxy get copyWith => _$FoodStateCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FoodState _$FoodStateFromJson(Map<String, dynamic> json) => FoodState(
      foods: (json['foods'] as List<dynamic>?)
              ?.map((e) => Food.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      foodStatus:
          $enumDecodeNullable(_$FoodStatusEnumMap, json['foodStatus']) ??
              FoodStatus.fail,
      createFoodStatus: $enumDecodeNullable(
              _$CreateFoodStatusEnumMap, json['createFoodStatus']) ??
          CreateFoodStatus.fail,
      updateFoodStatus: $enumDecodeNullable(
              _$UpdateFoodStatusEnumMap, json['updateFoodStatus']) ??
          UpdateFoodStatus.fail,
      deleteFoodStatus: $enumDecodeNullable(
              _$DeleteFoodStatusEnumMap, json['deleteFoodStatus']) ??
          DeleteFoodStatus.fail,
    );

Map<String, dynamic> _$FoodStateToJson(FoodState instance) => <String, dynamic>{
      'foods': instance.foods,
      'foodStatus': _$FoodStatusEnumMap[instance.foodStatus]!,
      'createFoodStatus': _$CreateFoodStatusEnumMap[instance.createFoodStatus]!,
      'updateFoodStatus': _$UpdateFoodStatusEnumMap[instance.updateFoodStatus]!,
      'deleteFoodStatus': _$DeleteFoodStatusEnumMap[instance.deleteFoodStatus]!,
    };

const _$FoodStatusEnumMap = {
  FoodStatus.init: 'init',
  FoodStatus.start: 'start',
  FoodStatus.success: 'success',
  FoodStatus.fail: 'fail',
};

const _$CreateFoodStatusEnumMap = {
  CreateFoodStatus.init: 'init',
  CreateFoodStatus.start: 'start',
  CreateFoodStatus.success: 'success',
  CreateFoodStatus.fail: 'fail',
};

const _$UpdateFoodStatusEnumMap = {
  UpdateFoodStatus.init: 'init',
  UpdateFoodStatus.start: 'start',
  UpdateFoodStatus.success: 'success',
  UpdateFoodStatus.fail: 'fail',
};

const _$DeleteFoodStatusEnumMap = {
  DeleteFoodStatus.init: 'init',
  DeleteFoodStatus.start: 'start',
  DeleteFoodStatus.success: 'success',
  DeleteFoodStatus.fail: 'fail',
};
