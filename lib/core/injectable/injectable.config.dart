// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../data/data_Source/Auth/AuthDataSource.dart' as _i43;
import '../../data/data_Source/Auth/AuthDataSourceImp.dart' as _i548;
import '../../data/data_Source/Cart/CartDataSource.dart' as _i190;
import '../../data/data_Source/Cart/CartDataSourceImp.dart' as _i689;
import '../../data/data_Source/Payment/PaymentDataSource.dart' as _i218;
import '../../data/data_Source/Payment/PaymentDataSourceImp.dart' as _i435;
import '../../data/data_Source/Persondata/PersonDataSourceimp.dart' as _i109;
import '../../data/data_Source/Persondata/pesrondatsource.dart' as _i489;
import '../../data/Repository/AuthRepositoryimp.dart' as _i540;
import '../../data/Repository/CartRepositoryImp.dart' as _i636;
import '../../data/Repository/PaymentRepositoryintentImp.dart' as _i57;
import '../../data/Repository/PersonRepositoryImp.dart' as _i494;
import '../../domain/Repository/AuthRepo.dart' as _i443;
import '../../domain/Repository/CartRepository.dart' as _i709;
import '../../domain/Repository/paymentRespositoryintents.dart' as _i656;
import '../../domain/Repository/PersonRepository.dart' as _i473;
import '../../domain/usecase/AddtoCartUsecase.dart' as _i856;
import '../../domain/usecase/deletordersCart.dart' as _i768;
import '../../domain/usecase/getCartUseCase.dart' as _i867;
import '../../domain/usecase/LoginUscase.dart' as _i353;
import '../../domain/usecase/PaymentUsecasintent.dart' as _i424;
import '../../domain/usecase/PersonUsecase.dart' as _i5;
import '../../domain/usecase/SignUpUsecase.dart' as _i179;
import '../../ui/auth/Login/Cubit/LoginViewmodel.dart' as _i965;
import '../../ui/auth/Signup/Cubit/SignUpViewmodel.dart' as _i24;
import '../../ui/cart/Cubit/CartViewModel.dart' as _i143;
import '../../ui/cart/Cubit/Paymentviewmodel.dart' as _i526;
import '../../ui/details/cubit/DetailsViewmodel.dart' as _i257;
import '../../ui/person/Cubit/PersonViewModel.dart' as _i489;
import '../Api/Dio.dart' as _i795;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.singleton<_i795.ApiManger>(() => _i795.ApiManger());
    gh.factory<_i218.PaymentDataSource>(
        () => _i435.PaymentDataSourceimp(apiManger: gh<_i795.ApiManger>()));
    gh.factory<_i43.Authdatasource>(() => _i548.Authdatasourceimp());
    gh.factory<_i190.CartDataSource>(() => _i689.CartDataSourceImpl());
    gh.factory<_i656.PaymentRepositoryintent>(() =>
        _i57.PaymentRepositoryintentImp(data: gh<_i218.PaymentDataSource>()));
    gh.factory<_i489.PersonDataSource>(() => _i109.PersonDataSourceimpl());
    gh.factory<_i443.AuthRepository>(
        () => _i540.Authrepositoryimp(data: gh<_i43.Authdatasource>()));
    gh.factory<_i179.Signupusecase>(
        () => _i179.Signupusecase(repo: gh<_i443.AuthRepository>()));
    gh.factory<_i424.PaymentUsecaseintent>(() => _i424.PaymentUsecaseintent(
        repository: gh<_i656.PaymentRepositoryintent>()));
    gh.factory<_i709.CartRepository>(
        () => _i636.CartRepositoryImp(dataSource: gh<_i190.CartDataSource>()));
    gh.factory<_i24.SignUpViewModel>(
        () => _i24.SignUpViewModel(usecase: gh<_i179.Signupusecase>()));
    gh.factory<_i856.CartUseCase>(
        () => _i856.CartUseCase(repository: gh<_i709.CartRepository>()));
    gh.factory<_i768.DeletorderesUsecase>(() =>
        _i768.DeletorderesUsecase(repository: gh<_i709.CartRepository>()));
    gh.factory<_i867.getCartUsecase>(
        () => _i867.getCartUsecase(repository: gh<_i709.CartRepository>()));
    gh.factory<_i353.Loginuscase>(
        () => _i353.Loginuscase(repository: gh<_i443.AuthRepository>()));
    gh.factory<_i473.PersonRepository>(() =>
        _i494.PersonRepositoryImp(dataSource: gh<_i489.PersonDataSource>()));
    gh.factory<_i143.CartViewModel>(() => _i143.CartViewModel(
          usecase: gh<_i867.getCartUsecase>(),
          delet: gh<_i768.DeletorderesUsecase>(),
        ));
    gh.factory<_i526.PaymentViewModel>(() =>
        _i526.PaymentViewModel(usecase: gh<_i424.PaymentUsecaseintent>()));
    gh.factory<_i257.DetaielsViewmodel>(
        () => _i257.DetaielsViewmodel(useCase: gh<_i856.CartUseCase>()));
    gh.factory<_i965.Loginviewmodel>(
        () => _i965.Loginviewmodel(usecase: gh<_i353.Loginuscase>()));
    gh.factory<_i5.PersonUsecase>(
        () => _i5.PersonUsecase(repository: gh<_i473.PersonRepository>()));
    gh.factory<_i489.PersonViewModel>(
        () => _i489.PersonViewModel(usecase: gh<_i5.PersonUsecase>()));
    return this;
  }
}
