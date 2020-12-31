import 'package:gpu_flutter_app/bloc_helpers/bloc_event_state.dart';

class HomePageEvent extends BlocEvent {
  final HomePageEventType eventType;

  HomePageEvent(this.eventType);
}

enum HomePageEventType { getHomeSlider, getPropertyList }
