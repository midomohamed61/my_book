import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

abstract class Failure {
  final String message;
  Failure(this.message);
}

class ServerFailure extends Failure {
  ServerFailure(super.messege);

  factory ServerFailure.fromDioError(DioError dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure("connectionTimeout with apiServer");
      case DioExceptionType.sendTimeout:
        return ServerFailure("sendTimeout with apiServer");
      case DioExceptionType.receiveTimeout:
        return ServerFailure("receiveTimeout with apiServer");
      case DioExceptionType.badCertificate:
        return ServerFailure("badCertificate with apiServer");
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioError.response!.statusCode!, dioError.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure('Request from api was canceld');
      case DioExceptionType.connectionError:
        return ServerFailure("connectionError with apiServer");
      case DioExceptionType.unknown:
        if (dioError.message!.contains('SocketException')) {
          return ServerFailure("No Internet Connection");
        }
        return ServerFailure('UnExpected Error');
      default:
        return ServerFailure('oops , Try later');
    }
  }
  factory ServerFailure.fromResponse(int? statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure((response['error']['message']));
    } else if (statusCode == 404) {
      return ServerFailure('Not Found , caal the supporter');
    } else if (statusCode == 500) {
      return ServerFailure('Internet Server error , plz try again');
    } else {
      return ServerFailure('oops , Try later');
    }
  }
}
