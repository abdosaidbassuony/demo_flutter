import 'package:flutter/material.dart';
import 'package:gpu_flutter_app/pages/favourite.dart';
import 'package:gpu_flutter_app/pages/home.dart';
import 'package:gpu_flutter_app/pages/my_profile.dart';
import 'package:gpu_flutter_app/pages/new_lead.dart';
import 'package:gpu_flutter_app/pages/setting.dart';
import 'package:gpu_flutter_app/blocs/new_lead_bloc/new_lead_bloc.dart';
import 'package:gpu_flutter_app/bloc_helpers/bloc_provider.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  List<Widget> _pagesList = <Widget>[
    HomePage(),
    NewLead(),
    MyProfile(),
    Favourites(),
    Setting()
  ];

  @override
  Widget build(BuildContext context) {
    return BlocProvider<NewLeadBloc>(
      bloc: NewLeadBloc(),
      child: Scaffold(
        body: _pagesList[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.post_add),
              label: "Post Ad",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: "My Profile",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border),
              label: "Favourite",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Settings",
            ),
          ],
          unselectedItemColor: Colors.grey,
          unselectedLabelStyle: TextStyle(color: Colors.grey),
          showUnselectedLabels: true,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.blue[500],
          onTap: (index) => {
            setState(() {
              _selectedIndex = index;
            })
          },
        ),
      ),
    );
  }
}
