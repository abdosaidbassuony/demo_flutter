import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gpu_flutter_app/bloc_helpers/bloc_provider.dart';
import 'package:gpu_flutter_app/bloc_widgets/bloc_state_builder.dart';
import 'package:gpu_flutter_app/blocs/home_bloc/home_slider_bloc/Slider_home_state.dart';
import 'package:gpu_flutter_app/blocs/home_bloc/home_slider_bloc/slider_home_bloc.dart';
import 'package:gpu_flutter_app/blocs/home_bloc/home_slider_bloc/slider_home_event.dart';
import 'package:gpu_flutter_app/blocs/home_bloc/property_list_bloc/property_list_bloc.dart';
import 'package:gpu_flutter_app/blocs/home_bloc/property_list_bloc/property_list_event.dart';
import 'package:gpu_flutter_app/blocs/home_bloc/property_list_bloc/property_list_state.dart';
import 'package:gpu_flutter_app/widgets/home_property_list.dart';
import 'package:gpu_flutter_app/widgets/home_slider_list.dart';
import 'package:gpu_flutter_app/widgets/pending_action.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomePageBloc bloc;
  PropertyListBloc propertyListBloc;

  @override
  Widget build(BuildContext context) {
    bloc = BlocProvider.of<HomePageBloc>(context);
    propertyListBloc = BlocProvider.of<PropertyListBloc>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("UGP"),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            BlocEventStateBuilder<HomePageState>(
              bloc: bloc,
              builder: (BuildContext context, HomePageState state) {
                if (state.isLoading) {
                  bloc.emitEvent(
                      HomePageEvent(HomePageEventType.getHomeSlider));
                  return PendingAction();
                }

                if (state.isSuccess) {
                  return Container(
                    height: 200,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0, top: 8),
                      child: homeSliderList(state.homeResponse.data),
                    ),
                  );
                }
                if (state.isFailure) {
                  return Center(
                    child: Text(state.errorMessage),
                  );
                }

                return Container();
              },
            ),
            BlocEventStateBuilder<PropertyListState>(
              bloc: propertyListBloc,
              builder: (BuildContext context, PropertyListState state) {
                if (state.isLoading) {
                  propertyListBloc.emitEvent(
                      PropertyListEvent(PropertyListEventType.getPropertyList));
                  return PendingAction();
                }

                if (state.isSuccess) {
                  return Container(
                    height: 500,
                    child: homePropertyList(state.homeResponse.data),
                  );
                }
                if (state.isFailure) {
                  return Center(
                    child: Text(state.errorMessage),
                  );
                }
                return Container();
              },
            ),
          ],
        ),
      ),
    );
  }
}
