import 'package:dio/dio.dart';

abstract class Failure {
  String messages;
  Failure(this.messages);
}

class ServerFailuer extends Failure {
  ServerFailuer(super.messages);

  factory ServerFailuer.fromDioError(DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailuer('Connection Timeout whit api server');
      case DioExceptionType.sendTimeout:
        return ServerFailuer('Send Timeout whit api server');

      case DioExceptionType.receiveTimeout:
        return ServerFailuer('Receive Timeout whit api server');

      case DioExceptionType.badCertificate:
        return ServerFailuer('Bad Certificate whit api server');

      case DioExceptionType.badResponse:
        return ServerFailuer.fromResponse(
            e.response!.statusCode!, e.response!.data);
      case DioExceptionType.cancel:
        return ServerFailuer('Requset To Apiserver was Canceld');

      case DioExceptionType.connectionError:
        return ServerFailuer('No Internet Connection');

      case DioExceptionType.unknown:
        return ServerFailuer('Opps Ther was an Error , Please try again');
    }
  }
  factory ServerFailuer.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 404) {
      return ServerFailuer('Your requst was not found , pleas try later');
    } else if (statusCode == 500) {
      return ServerFailuer('There is a promlem with server , pleas try later');
    } else if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailuer(response['error']['message']);
    } else {
      return ServerFailuer('Ther was an Error , pleas try again');
    }
  }
}
