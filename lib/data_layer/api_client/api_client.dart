import 'package:dio/dio.dart';
import 'package:gpu_flutter_app/data_layer/model/request/request_body.dart';
import 'package:gpu_flutter_app/data_layer/model/response/response.dart';
import 'package:retrofit/http.dart';

part 'api_client.g.dart';

@RestApi(baseUrl: 'http://45.35.169.130/UGPRealEstate_Test/api/Property/')
abstract class ApiClient {
  factory ApiClient(Dio dio) = _ApiClient;

  @POST("SliderImagesProperty")
  Future<HomeResponse> homeSlider(@Body() RequestBody requestBody);

  @POST("PropertyList")
  Future<HomeResponse> propertyList(@Body() RequestBody requestBody);
}
