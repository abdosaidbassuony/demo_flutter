import 'package:gpu_flutter_app/bloc_helpers/bloc_event_state.dart';

class NewLeadState extends BlocState {
  bool isRowAddedSuccess = false;
  bool isRowRemovedSuccess = false;
  List<String> newMobileNumber;

  NewLeadState(
      {this.isRowAddedSuccess, this.isRowRemovedSuccess, this.newMobileNumber});

  factory NewLeadState.addNewRow() {
    return NewLeadState(
        isRowAddedSuccess: true,
        isRowRemovedSuccess: false,
        newMobileNumber: []);
  }

  factory NewLeadState.noItem() {
    return NewLeadState(
        isRowAddedSuccess: false,
        isRowRemovedSuccess: false,
        newMobileNumber: []);
  }

  factory NewLeadState.removeRow() {
    return NewLeadState(
        isRowRemovedSuccess: true,
        isRowAddedSuccess: false,
        newMobileNumber: []);
  }

  factory NewLeadState.save(List<String> mobileNumber) {
    return NewLeadState(
        newMobileNumber: mobileNumber,
        isRowAddedSuccess: true,
        isRowRemovedSuccess: true);
  }
}
