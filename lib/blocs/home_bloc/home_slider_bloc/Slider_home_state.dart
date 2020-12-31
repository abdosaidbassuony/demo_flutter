import 'package:gpu_flutter_app/bloc_helpers/bloc_event_state.dart';
import 'package:gpu_flutter_app/data_layer/model/response/response.dart';

class HomePageState extends BlocState {
  bool isSuccess;
  bool isFailure;
  bool isLoading;
  String errorMessage;
  HomeResponse homeResponse;

  HomePageState(
      {this.isFailure,
      this.isLoading,
      this.isSuccess,
      this.errorMessage,
      this.homeResponse});

  factory HomePageState.loading() {
    return HomePageState(isLoading: true, isSuccess: false, isFailure: false);
  }

  factory HomePageState.success(HomeResponse homeResponse) {
    return HomePageState(
        isSuccess: true,
        isLoading: false,
        isFailure: false,
        homeResponse: homeResponse);
  }

  factory HomePageState.getPropertyListSuccess(HomeResponse homeResponse) {
    return HomePageState(
        isSuccess: true,
        isLoading: false,
        isFailure: false,
        homeResponse: homeResponse);
  }

  factory HomePageState.failure(String errorMessage) {
    return HomePageState(
        isSuccess: false,
        isFailure: true,
        isLoading: false,
        errorMessage: errorMessage);
  }
}
