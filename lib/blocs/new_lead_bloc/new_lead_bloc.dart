import 'package:gpu_flutter_app/bloc_helpers/bloc_event_state.dart';
import 'package:gpu_flutter_app/blocs/new_lead_bloc/new_lead_event.dart';
import 'package:gpu_flutter_app/blocs/new_lead_bloc/new_lead_state.dart';

class NewLeadBloc extends BlocEventStateBase<NewLeadEvent, NewLeadState> {
  List<int> mobileNumberDynamicRowList = [];
  List<String> mobileList = [];
  bool itemIsAdd = false;
  bool itemIsRemove = false;
  String countryCode;
  String mobileNumber;

  addNewMobileNumberRow() {
    mobileNumberDynamicRowList.add(mobileNumberDynamicRowList.length);
    itemIsAdd = true;
  }

  addMobileNumberToList() {
    mobileList.add( mobileNumber);
  }

  removeMobileNumberRow(int index) {
    mobileNumberDynamicRowList.removeAt(index);
    itemIsRemove = true;
  }

  addFirstItem() {
    mobileNumberDynamicRowList.add(0);
  }

  NewLeadBloc() : super(initialState: NewLeadState.addNewRow());

  @override
  Stream<NewLeadState> eventHandler(
      NewLeadEvent event, NewLeadState currentState) async* {
    switch (event.eventType) {
      case NewLeadEventType.addNewMobileNumberRow:
        {
          addNewMobileNumberRow();
          yield NewLeadState.addNewRow();
        }
        break;
      case NewLeadEventType.removeMobileNumberRow:
        {
          yield NewLeadState.removeRow();
        }
        break;
      case NewLeadEventType.saveButtonClick:
        {
          addMobileNumberToList();
          yield NewLeadState.save(mobileList);
        }
    }

    if (event.eventType == NewLeadEventType.removeMobileNumberRow) {
      // removeMobileNumberRow();
      yield NewLeadState.removeRow();
    }
  }
}
