import 'package:dio/dio.dart';


class PlacesInterceptor extends Interceptor {
  
  final accessToken = 'pk.eyJ1IjoiYmFrYXBwIiwiYSI6ImNsYzZtejcxajB1d3Uzb3czZXlxc3RjbDUifQ._i73gx_oqZJqwc828hUi9w';

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    
    options.queryParameters.addAll({
      'access_token': accessToken,
      'language': 'es',
    });


    super.onRequest(options, handler);
  }

}
