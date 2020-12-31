import 'package:get_it/get_it.dart';
import 'package:gpu_flutter_app/bloc_helpers/bloc_event_state.dart';
import 'package:gpu_flutter_app/blocs/home_bloc/home_slider_bloc/slider_home_event.dart';
import 'Slider_home_state.dart';
import 'package:gpu_flutter_app/data_layer/model/request/request_body.dart';
import 'package:gpu_flutter_app/data_layer/model/request/request_data.dart';
import 'package:gpu_flutter_app/data_layer/model/response/response.dart';
import 'package:gpu_flutter_app/data_layer/repository/repositoty.dart';

class HomePageBloc extends BlocEventStateBase<HomePageEvent, HomePageState> {
  final Repository _repository = GetIt.instance.get<Repository>();
  HomeResponse _homeSliderResponse;

  final requestBody = RequestBody();
  final propertyListRequestBody = RequestBody(data:RequestData());

  HomePageBloc() : super(initialState: HomePageState.loading());

  @override
  Stream<HomePageState> eventHandler(
      HomePageEvent event, HomePageState currentState) async* {
    if (event.eventType == HomePageEventType.getHomeSlider) {
      try {
        _homeSliderResponse = await _repository.getHomeSlider(requestBody);
      } catch (e) {
        print(e);
        yield HomePageState.failure(e.toString());
      }

      if (_homeSliderResponse != null) {
        yield HomePageState.success(_homeSliderResponse);
      }
    }

  }

}
