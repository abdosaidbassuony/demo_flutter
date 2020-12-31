import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:gpu_flutter_app/bloc_helpers/bloc_provider.dart';
import 'package:gpu_flutter_app/blocs/new_lead_bloc/new_lead_bloc.dart';
import 'package:gpu_flutter_app/blocs/new_lead_bloc/new_lead_event.dart';

class MobileNumberDynamicRow extends StatelessWidget {
  final int index;
  final bool isItemAdded;

  final bool isItemRemoved;
  int count;

  MobileNumberDynamicRow(
      {this.index,
      this.isItemAdded = false,
      this.isItemRemoved = false,
      this.count});

  NewLeadBloc bloc;
  String _countryCode;
  String _mobileNumber;
  List<String> mobileNumberWithCode = [];
  var myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    bloc = BlocProvider.of<NewLeadBloc>(context);
    if (myController.text.isNotEmpty) {
      _mobileNumber = _countryCode + myController.text;
      mobileNumberWithCode.add(_mobileNumber);
      print(mobileNumberWithCode);
    }
    if (isItemAdded) {
      if (index == bloc.mobileNumberDynamicRowList.length - 1) {
        return mobileNumberWithAddIcon(bloc);
      }
      return mobileNumberWithRemoveIcon(bloc);
    }
    return mobileNumberWithAddIcon(bloc);
  }

  Widget mobileNumberWithAddIcon(NewLeadBloc bloc) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.only(top: 8, right: 4),
              child: CountryCodePicker(
                initialSelection: 'EG',
                onInit: (value) => bloc.countryCode = value.code,
                alignLeft: true,
                showFlag: true,
                onChanged: (value) => bloc.countryCode = value.code,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Mobile Number",
                ),
                onChanged: (val) {
                  if (val.length == 10) {
                    print(val);
                    bloc.mobileNumber = val;
                  }
                },
                onSubmitted: (value) {
                  if (value.length == 10) {
                    bloc.mobileNumber = value;
                    print(value);
                  }
                },
                controller: myController,
                keyboardType: TextInputType.phone,
              ),
            ),
          ),
          Expanded(
            flex: 0,
            child: Padding(
              padding: const EdgeInsets.only(top: 20.0, left: 50),
              child: IconButton(
                icon: Icon(Icons.add),
                onPressed: () {
                  count = count + 1;
                  bloc.emitEvent(NewLeadEvent(
                      eventType: NewLeadEventType.addNewMobileNumberRow));
                },
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget mobileNumberWithRemoveIcon(NewLeadBloc bloc) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.only(top: 8, right: 4),
              child: CountryCodePicker(
                initialSelection: 'EG',
                alignLeft: true,
                showFlag: true,
                onChanged: (value) => bloc.countryCode = value.code,
                onInit: (value) => bloc.countryCode = value.code,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Mobile Number",
                ),
                onChanged: (val) {
                  if (val.length == 10) {
                    bloc.mobileNumber = val;
                    print(val);
                  }
                },
                onSubmitted: (value) {
                  if (value.length == 10) {
                    bloc.mobileNumber = value;
                    print(value);
                  }
                },
                controller: myController,
                keyboardType: TextInputType.phone,
              ),
            ),
          ),
          Expanded(
            flex: 0,
            child: Padding(
              padding: const EdgeInsets.only(top: 20.0, left: 50),
              child: IconButton(
                icon: Icon(Icons.close),
                onPressed: () {
                  count = count - 1;
                  // print(index);
                  bloc.removeMobileNumberRow(index);
                  print("delete index {$index}");
                  bloc.emitEvent(NewLeadEvent(
                      eventType: NewLeadEventType.removeMobileNumberRow));
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
