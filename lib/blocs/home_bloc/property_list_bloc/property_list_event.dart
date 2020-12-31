import 'package:gpu_flutter_app/bloc_helpers/bloc_event_state.dart';

class PropertyListEvent extends BlocEvent {
  final PropertyListEventType eventType;

  PropertyListEvent(this.eventType);
}

enum PropertyListEventType {  getPropertyList }