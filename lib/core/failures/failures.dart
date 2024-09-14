import 'package:dio/dio.dart';

abstract class Failures {
  final String errMsg;

  const Failures(this.errMsg);
}

class ServerFailure extends Failures {
  ServerFailure(super.errMsg);

  factory ServerFailure.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection Timeout with ApiServer');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Sent timeout Timeout with ApiServer');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive timeout Timeout with ApiServer');
      case DioExceptionType.badCertificate:
        return ServerFailure('Bad certificate');
      case DioExceptionType.badResponse:
        return ServerFailure.fromDioResponse(
            dioException.response!.statusCode!, dioException.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure('Request to ApiServer was canceled');
      case DioExceptionType.connectionError:
        return ServerFailure('No Internet Connection');

      case DioExceptionType.unknown:
        if (dioException.message!.contains('SocketException')) {
          return ServerFailure('Connection error with Api');
        }
        return ServerFailure('UnExpected Error, please try again!');
      default:
        return ServerFailure('Opps there was an error, please try again!');
    }
  }

  factory ServerFailure.fromDioResponse(int statusCode, dynamic response) {
    if (statusCode == 400 ||
        statusCode == 401 ||
        statusCode == 403 ||
        statusCode == 422) {
      if (statusCode == 422) {
        List<String> errors = [];

        if (response['data'] != null) {
          if (response['data']['name'] != null) {
            errors.add(response['data']['name'][0]);
          }
          if (response['data']['email'] != null) {
            errors.add(response['data']['email'][0]);
          }
          if (response['data']['phone'] != null) {
            errors.add(response['data']['phone'][0]);
          }
          if (response['data']['gender'] != null) {
            errors.add(response['data']['gender'][0]);
          }
          if (response['data']['password'] != null) {
            errors.add(response['data']['password'][0]);
          }
        }

        return ServerFailure(
            errors.isNotEmpty ? errors.join('\n') : "Unknown error");
      }

      return ServerFailure(response['message']);
    } else if (statusCode == 404) {
      return ServerFailure('Your request not found, please try later!');
    } else if (statusCode == 500) {
      return ServerFailure('Internal Server error, please try later!');
    } else {
      return ServerFailure('Oops, there was an error, please try again!');
    }
  }
}
