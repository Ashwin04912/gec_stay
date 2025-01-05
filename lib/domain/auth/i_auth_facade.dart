import 'package:dartz/dartz.dart';
import 'package:gecw_lakx/domain/auth/auth_failures.dart';
import 'package:gecw_lakx/domain/auth/value_objects.dart';


abstract class IAuthFacade {
  Future<Either<AuthFailures, Unit>> registerWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  });

    Future<Either<AuthFailures, Unit>> sighInWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  });

}
