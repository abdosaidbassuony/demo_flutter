import 'package:gpu_flutter_app/bloc_helpers/bloc_event_state.dart';
import 'package:gpu_flutter_app/data_layer/model/response/response.dart';

class PropertyListState extends BlocState {
  bool isSuccess;
  bool isFailure;
  bool isLoading;
  String errorMessage;
  HomeResponse homeResponse;

  PropertyListState(
      {this.isFailure,
      this.isLoading,
      this.isSuccess,
      this.errorMessage,
      this.homeResponse});

  factory PropertyListState.loading() {
    return PropertyListState(
        isLoading: true, isSuccess: false, isFailure: false);
  }

  factory PropertyListState.success(HomeResponse homeResponse) {
    return PropertyListState(
        isSuccess: true,
        isLoading: false,
        isFailure: false,
        homeResponse: homeResponse);
  }

  factory PropertyListState.failure(String errorMessage) {
    return PropertyListState(
        isSuccess: false,
        isFailure: true,
        isLoading: false,
        errorMessage: errorMessage);
  }
}
