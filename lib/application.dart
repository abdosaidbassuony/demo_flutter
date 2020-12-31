import 'package:flutter/material.dart';
import 'package:gpu_flutter_app/bloc_helpers/bloc_provider.dart';
import 'package:gpu_flutter_app/blocs/home_bloc/property_list_bloc/property_list_bloc.dart';
import 'package:gpu_flutter_app/pages/main_page.dart';

import 'blocs/home_bloc/home_slider_bloc/slider_home_bloc.dart';

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomePageBloc>(
      bloc: HomePageBloc(),
      child: BlocProvider<PropertyListBloc>(
        bloc: PropertyListBloc(),
        child: MaterialApp(
          title: "GPU",
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: MainPage(),
        ),
      ),
    );
  }
}
