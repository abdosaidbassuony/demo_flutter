import 'package:get_it/get_it.dart';
import 'package:gpu_flutter_app/bloc_helpers/bloc_event_state.dart';
import 'package:gpu_flutter_app/blocs/home_bloc/property_list_bloc/property_list_event.dart';
import 'package:gpu_flutter_app/blocs/home_bloc/property_list_bloc/property_list_state.dart';
import 'package:gpu_flutter_app/data_layer/model/request/request_body.dart';
import 'package:gpu_flutter_app/data_layer/model/request/request_data.dart';
import 'package:gpu_flutter_app/data_layer/model/response/response.dart';
import 'package:gpu_flutter_app/data_layer/repository/repositoty.dart';

class PropertyListBloc
    extends BlocEventStateBase<PropertyListEvent, PropertyListState> {
  final Repository _repository = GetIt.instance.get<Repository>();
  HomeResponse _homeSliderResponse;

  final propertyListRequestBody = RequestBody(data: RequestData());

  PropertyListBloc() : super(initialState: PropertyListState.loading());

  @override
  Stream<PropertyListState> eventHandler(
      PropertyListEvent event, PropertyListState currentState) async* {
    if (event.eventType == PropertyListEventType.getPropertyList) {
      try {
        _homeSliderResponse =
            await _repository.getPropertyList(propertyListRequestBody);
      } catch (e) {
        print(e);
        yield PropertyListState.failure(e.toString());
      }

      if (_homeSliderResponse != null) {
        yield PropertyListState.success(_homeSliderResponse);
      }
    }
  }
}
