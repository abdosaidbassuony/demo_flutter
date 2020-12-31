import 'package:gpu_flutter_app/bloc_helpers/bloc_event_state.dart';

class NewLeadEvent extends BlocEvent {
  final NewLeadEventType eventType;
  NewLeadEvent({this.eventType});
}

enum NewLeadEventType { addNewMobileNumberRow ,removeMobileNumberRow,saveButtonClick}
