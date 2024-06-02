import 'package:flutter/material.dart';
import 'package:ptc_quiz1/Controllers/usersConroller.dart';
import 'package:ptc_quiz1/Question3/Models/userInfo.dart';

class UserPage extends StatefulWidget {
  int ind;
  UserPage(this.ind);

  @override
  State<UserPage> createState() => _UserPageState(ind);
}

class _UserPageState extends State<UserPage> {
  int ind;
  UserInfo? userI;
  _UserPageState(this.ind);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (UsersController.infos.isNotEmpty) {
      if (UsersController.infos.containsKey(ind)) {
        //userI = UsersController().infos.
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
