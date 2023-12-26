// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../data/repositories/food.repository.implement.dart' as _i6;
import '../../data/services/base.service.dart' as _i3;
import '../../data/services/food_service.implement.dart' as _i8;
import '../../data/use_cases/food_usecase.implement.dart' as _i10;
import '../../domain/repositories/food.repositories.dart' as _i5;
import '../../domain/services/food_service.dart' as _i7;
import '../../domain/use_cases/food_usecase.dart' as _i9;
import '../../presentations/bloc/food/food_bloc.dart' as _i4;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.CustomClient>(() => _i3.CustomClient());
    gh.lazySingleton<_i4.FoodBloc>(() => _i4.FoodBloc());
    gh.lazySingleton<_i5.FoodRepository>(() => _i6.FoodRepositoryImp());
    gh.lazySingleton<_i7.FoodService>(() => _i8.FoodServiceImp());
    gh.lazySingleton<_i9.FoodUseCase>(() => _i10.FoodUseCaseImp());
    return this;
  }
}
