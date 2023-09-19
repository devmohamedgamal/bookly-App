import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

abstract class Failure {
  final String errorMessage;

  const Failure({required this.errorMessage});
}

class ServerFailure extends Failure {
  ServerFailure({required super.errorMessage});

  factory ServerFailure.fromDioError(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(
            errorMessage: "Connection timeout with api servir");
      case DioExceptionType.sendTimeout:
        return ServerFailure(errorMessage: "Send timeout with api servir");
      case DioExceptionType.receiveTimeout:
        return ServerFailure(errorMessage: "Receive timeout with api servir");
      case DioExceptionType.badCertificate:
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
          dioException.response!.statusCode,
          dioException.response!.data,
        );
      case DioExceptionType.cancel:
        return ServerFailure(
            errorMessage: "request with api servir was canceled");
      case DioExceptionType.connectionError:
        return ServerFailure(errorMessage: "please check your internet");
      case DioExceptionType.unknown:
        if (dioException.message!.contains('socketException')) {
          return ServerFailure(errorMessage: "please check your internet");
        }
        return ServerFailure(errorMessage: "Unexpected error, try later");

      default:
        return ServerFailure(
            errorMessage: "oops there is was error, try later");
    }
  }
  factory ServerFailure.fromResponse(int? statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(errorMessage: response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure(errorMessage: "method not found");
    } else if (statusCode == 500) {
      return ServerFailure(errorMessage: "internal server error , try later");
    } else {
      return ServerFailure(errorMessage: "oops there is was error, try later");
    }
  }
}
