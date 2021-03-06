import 'package:BYCDelicacy/core/services/config.dart';
import 'package:dio/dio.dart';

class HttpRequest {
  static final BaseOptions baseOptions = BaseOptions(
      baseUrl: HttpConfig.baseURL,
      connectTimeout: HttpConfig.timeout
  );
  static final Dio dio = Dio(baseOptions);

  static Future<T> requst<T>(String url,{
                             String method = "get",
                             Map<String,dynamic> params,
                             Interceptor inter
                                        }) async {
    final options = Options(method: method);

    Interceptor dInter = InterceptorsWrapper(
      onRequest: (options) {
        print("请求拦截");
        return options;
      },
      onResponse: (response) {
        print("响应拦截");
        return response;
      },
      onError: (err) {
        print("错误拦截");
        return err;
      },
    );

    List<Interceptor> inters = [dInter];

    if (inter != null) {
      inters.add(inter);
    }

    dio.interceptors.addAll(inters);

    try {
      Response response = await dio.request(url,
          queryParameters: params,
          options: options);
      return response.data;
    } on DioError catch(e) {
      return Future.error(e);
    }

  }
}