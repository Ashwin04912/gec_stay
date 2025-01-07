import 'package:dartz/dartz.dart';
import 'package:gecw_lakx/domain/core/formfailures.dart';
import 'package:gecw_lakx/domain/hostel_process/hostel_resp_model.dart';
import 'package:geolocator/geolocator.dart';

import '../core/location_fetch_failures.dart';

abstract class ICreateHostelFormFacade {
  Future<Either<LocationFetchFailures, Position>> getCurrentLocation();
  Future<Either<FormFailures, Unit>> saveDataToDb({
    required String hostelName,
    required String ownerName,
    required String phoneNumber,
    required String rent,
    required String rooms,
    required Position location,
    required String personsPerRoom,
    required String vacancy,
    required String description,
  });
  Future<Either<FormFailures, List<HostelResponseModel>>> getOwnerHostelList({
    required String userId
  });
  Future<Either<FormFailures,List<HostelResponseModel>>> getAllHostelList();
}
