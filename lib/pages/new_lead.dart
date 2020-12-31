import 'package:flutter/material.dart';
import 'package:gpu_flutter_app/bloc_helpers/bloc_provider.dart';
import 'package:gpu_flutter_app/bloc_widgets/bloc_state_builder.dart';
import 'package:gpu_flutter_app/blocs/new_lead_bloc/new_lead_bloc.dart';
import 'package:gpu_flutter_app/blocs/new_lead_bloc/new_lead_state.dart';
import 'package:gpu_flutter_app/widgets/mobile_number_picker_row.dart';
import 'package:gpu_flutter_app/blocs/new_lead_bloc/new_lead_event.dart';
import 'package:gpu_flutter_app/widgets/show_number_dialog.dart';

class NewLead extends StatelessWidget {
  NewLeadBloc bloc;
  int _count = 2;

  @override
  Widget build(BuildContext context) {
    String dropdownValue = 'One';
    List<String> spinnerItems = ['One', 'Two', 'Three', 'Four', 'Five'];

    bloc = BlocProvider.of<NewLeadBloc>(context);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.notes_rounded,
            color: Colors.black,
          ),
          alignment: Alignment.centerLeft,
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.mail_outline_rounded,
              color: Colors.grey,
            ),
            onPressed: () {},
          )
        ],
        title: Text("Add New Lead", style: TextStyle(color: Colors.black)),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          padding:
              const EdgeInsets.only(right: 16.0, left: 16, top: 8, bottom: 8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                flex: 0,
                child: TextField(
                  decoration: InputDecoration(
                      labelText: 'Enter a search term',
                      labelStyle: TextStyle(color: Colors.grey),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        //  when the TextFormField in unfocused
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      border: UnderlineInputBorder()),
                  keyboardType: TextInputType.name,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Expanded(
                flex: 0,
                child: Container(
                  height: double.parse(
                      ((bloc.mobileNumberDynamicRowList.length) * 60)
                          .toString()),
                  child: Column(
                    children: [
                      // MobileNumberDynamicRow(),
                      BlocEventStateBuilder<NewLeadState>(
                          bloc: bloc,
                          builder: (context, state) {
                            // if (bloc.mobileNumberDynamicRowList.isEmpty) {
                            //   bloc.addFirstItem();
                            // }
                            print(bloc.mobileNumberDynamicRowList);
                            if (state.isRowAddedSuccess) {
                              return Container(
                                  height: double.parse(((bloc
                                              .mobileNumberDynamicRowList
                                              .length) *
                                          60)
                                      .toString()),
                                  child: ListView(
                                    children: List.generate(
                                        _count,
                                        (index) => MobileNumberDynamicRow(
                                            isItemRemoved: false,
                                            isItemAdded: true,
                                            index: index,
                                            count: _count)),
                                  )
                                  // ListView.builder(
                                  //   itemCount:
                                  //       bloc.mobileNumberDynamicRowList.length,
                                  //   itemBuilder: (context, index) =>
                                  //       MobileNumberDynamicRow(
                                  //     index: index,
                                  //     isItemAdded: bloc.itemIsAdd,
                                  //     isItemRemoved: bloc.itemIsRemove,
                                  //   ),
                                  // ),
                                  );
                            }
                            if (state.isRowRemovedSuccess) {
                              return Container(
                                  height: double.parse(((bloc
                                              .mobileNumberDynamicRowList
                                              .length) *
                                          60)
                                      .toString()),
                                  child: ListView(
                                    children: List.generate(
                                        _count,
                                        (index) => MobileNumberDynamicRow(
                                            isItemRemoved: true,
                                            isItemAdded: false,
                                            index: index,
                                            count: _count)),
                                  )

                                  // ListView.builder(
                                  //   itemCount:
                                  //       bloc.mobileNumberDynamicRowList.length,
                                  //   itemBuilder: (context, index) =>
                                  //       MobileNumberDynamicRow(
                                  //     index: index,
                                  //     isItemAdded: bloc.itemIsAdd,
                                  //     // isItemRemoved: bloc.itemIsRemove,
                                  //   ),
                                  // ),
                                  );
                            }
                            return Container();
                          }),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Expanded(
                flex: 0,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: DropdownButton(
                    hint: Text("One"),
                    isExpanded: true,
                    icon: Icon(
                      Icons.arrow_drop_down,
                    ),
                    iconSize: 24,
                    elevation: 10,
                    style: TextStyle(color: Colors.grey, fontSize: 18),
                    underline: Container(
                      height: 1,
                      color: Colors.grey,
                    ),
                    onChanged: (String data) {
                      // setState(() {
                      //   dropdownValue = data;
                      // });
                    },
                    items: spinnerItems
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Expanded(
                flex: 0,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: DropdownButton(
                    value: dropdownValue,
                    isExpanded: true,
                    icon: Icon(
                      Icons.arrow_drop_down,
                    ),
                    iconSize: 24,
                    elevation: 16,
                    style: TextStyle(color: Colors.grey, fontSize: 18),
                    underline: Container(
                      height: 2,
                      color: Colors.grey,
                    ),
                    onChanged: (String data) {
                      // setState(() {
                      //   dropdownValue = data;
                      // });
                    },
                    items: spinnerItems
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Expanded(
                flex: 0,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: DropdownButton(
                    value: dropdownValue,
                    isExpanded: true,
                    icon: Icon(
                      Icons.arrow_drop_down,
                    ),
                    iconSize: 24,
                    elevation: 16,
                    style: TextStyle(color: Colors.grey, fontSize: 18),
                    underline: Container(
                      height: 2,
                      color: Colors.grey,
                    ),
                    onChanged: (String data) {
                      // setState(() {
                      //   dropdownValue = data;
                      // });
                    },
                    items: spinnerItems
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Expanded(
                flex: 0,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Text("Rate"),
                    ),
                    Expanded(
                      flex: 3,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Radio(
                            value: 1,
                            // groupValue: id,
                            onChanged: (val) {
                              // setState(() {
                              //   radioButtonItem = 'ONE';
                              //   id = 1;
                            },
                            groupValue: null,
                          ),
                          Text(
                            'Hot',
                            style: new TextStyle(
                              fontSize: 14.0,
                              color: Colors.grey,
                            ),
                          ),
                          Radio(
                              value: 2,
                              // groupValue: id,
                              onChanged: (val) {
                                // setState(() {
                                //   radioButtonItem = 'TWO';
                                //   id = 2;
                              }),
                          Text(
                            'Warm',
                            style: new TextStyle(
                              color: Colors.grey,
                              fontSize: 14.0,
                            ),
                          ),
                          Radio(
                              value: 3,
                              // groupValue: id,
                              onChanged: (val) {
                                // setState(() {
                                //   radioButtonItem = 'TWO';
                                //   id = 2;
                              }),
                          Text(
                            'Cold',
                            style: new TextStyle(
                              color: Colors.grey,
                              fontSize: 14.0,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Expanded(
                flex: 0,
                child: Container(
                  child: new ConstrainedBox(
                    constraints: BoxConstraints(
                      maxHeight: 300.0,
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                          labelText: 'Note',
                          labelStyle:
                              TextStyle(color: Colors.grey, fontSize: 20),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                            //  when the TextFormField in unfocused
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          border: UnderlineInputBorder()),
                      keyboardType: TextInputType.name,
                      maxLines: null,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Expanded(
                  flex: 1,
                  child: BlocEventStateBuilder<NewLeadState>(
                      bloc: bloc,
                      builder: (context, state) {
                        return ButtonBar(
                          buttonHeight: 50,
                          buttonMinWidth: 150,
                          alignment: MainAxisAlignment.center,
                          children: <Widget>[
                            FlatButton(
                              child: Text('Save'),
                              color: Colors.blue,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)),
                              onPressed: () {
                                bloc.emitEvent(NewLeadEvent(
                                    eventType:
                                        NewLeadEventType.saveButtonClick));
                                print(MobileNumberDynamicRow()
                                    .mobileNumberWithCode);
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        title: Text('Country List'),
                                        content:
                                            setupAlertDialogLoadContainer(),
                                        actions: [
                                          FlatButton(
                                            child: Text("OK"),
                                            onPressed: () {
                                              // bloc.mobileList.clear();
                                              Navigator.of(context).pop();
                                            },
                                          )
                                        ],
                                      );
                                    });
                              },
                            ),
                            FlatButton(
                              child: Text('Cancel'),
                              color: Colors.red,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)),
                              onPressed: () {
                                /** */
                              },
                            ),
                          ],
                        );
                      })),
            ],
          ),
        ),
      ),
    );
  }

  Widget setupAlertDialogLoadContainer() {
    return Container(
      height: 300.0, // Change as per your requirement
      width: 300.0, // Change as per your requirement
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: bloc.mobileList.length,
        itemBuilder: (BuildContext context, int index) {
          print(bloc.mobileList.length);
          return ListTile(
            title: Text(bloc.mobileList[index]),
          );
        },
      ),
    );
  }
}
