import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_practice_project/common/configs/locators.dart';
import 'package:my_practice_project/presentations/bloc/food/food_bloc.dart';

class MainBloc {
  static List<BlocProvider> allBlocs() =>
      [BlocProvider<FoodBloc>(create: (_) => getIt<FoodBloc>())];
}
