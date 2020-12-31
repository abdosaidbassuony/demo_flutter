import 'package:gpu_flutter_app/data_layer/api_client/api_client.dart';
import 'package:gpu_flutter_app/data_layer/model/request/request_body.dart';
import 'package:gpu_flutter_app/data_layer/model/response/response.dart';

class Repository {
  final ApiClient _apiClient;

  Repository(this._apiClient);

  Future<HomeResponse> getHomeSlider(RequestBody requestBody) async {
    return await _apiClient.homeSlider(requestBody);
  }

  Future<HomeResponse> getPropertyList(RequestBody requestBody) async {
    return await _apiClient.propertyList(requestBody);
  }
}
