// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i974;
import 'package:firebase_auth/firebase_auth.dart' as _i59;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import 'application/approval_process/approval_process_bloc.dart' as _i481;
import 'application/auth/sign_in_form/sign_in_form_bloc.dart' as _i966;
import 'application/hostel_process/common_hostel_process/common_hostel_process_bloc.dart'
    as _i1039;
import 'application/room_details_owner/room_details_bloc.dart' as _i898;
import 'domain/auth/i_auth_facade.dart' as _i878;
import 'domain/hostel_process/i_hostel_process_facade.dart' as _i922;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i1019;
import 'infrastructure/core/firebase_injectable_module.dart' as _i462;
import 'infrastructure/hostel_process/firebase_hostel_process_facade.dart'
    as _i903;

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
    final injectableModule = _$InjectableModule();
    gh.lazySingleton<_i59.FirebaseAuth>(() => injectableModule.firebaseAuth);
    gh.lazySingleton<_i974.FirebaseFirestore>(
        () => injectableModule.firebaseFire);
    gh.lazySingleton<_i922.IHostelProcessFacade>(() =>
        _i903.FirebaseHostelProcessFacade(
            fireStore: gh<_i974.FirebaseFirestore>()));
    gh.lazySingleton<_i878.IAuthFacade>(
        () => _i1019.FirebaseAuthFacade(gh<_i59.FirebaseAuth>()));
    gh.factory<_i481.ApprovalProcessBloc>(
        () => _i481.ApprovalProcessBloc(gh<_i922.IHostelProcessFacade>()));
    gh.factory<_i1039.CommonHostelProcessBloc>(
        () => _i1039.CommonHostelProcessBloc(gh<_i922.IHostelProcessFacade>()));
    gh.factory<_i898.RoomDetailsBloc>(
        () => _i898.RoomDetailsBloc(gh<_i922.IHostelProcessFacade>()));
    gh.factory<_i966.SignInFormBloc>(
        () => _i966.SignInFormBloc(gh<_i878.IAuthFacade>()));
    return this;
  }
}

class _$InjectableModule extends _i462.InjectableModule {}
