import 'package:flutter/material.dart';
import 'package:flutter_profile/components/profile_tab.dart';
import 'package:flutter_profile/hello_page.dart';
import 'package:flutter_profile/theme.dart';

import 'components/profile_buttons.dart';
import 'components/profile_count_info.dart';
import 'components/profile_drawer.dart';
import 'components/profile_header.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme(),
      home: ProfilePage(),
    );
  }
}


class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: ProfileDrawer(), // endDrawer는 오른쪽, drawer는 왼쪽
      appBar: _appBar(),
      body: Column(
        children: [
          SizedBox(height: 20),
          ProfileHeader(),
          SizedBox(height: 20),
          ProfileCountInfo(),
          SizedBox(height: 20),
          ProfileButton(),
          Expanded(child: ProfileTab()),
        ],
      ),
    );
  }

  AppBar _appBar() {
    return AppBar(
      leading: Icon(Icons.arrow_back_ios),
      centerTitle: true,
      title: Text("Profile"),
    );
  }
}




