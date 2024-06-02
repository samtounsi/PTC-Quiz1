import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:ptc_quiz1/Controllers/usersConroller.dart';
import 'package:ptc_quiz1/Question1/Manual/company.dart';
import 'package:ptc_quiz1/Question1/Manual/manual.dart';
import 'package:ptc_quiz1/Question3/Screens/userPage.dart';

void main() {
//   String jsonFile = '''
// {
//     "company": {
//       "is_active": 0,
//       "name": "Tech Innovators Inc.",
//       "address": {
//         "street": "123 Innovation Drive",
//         "city": "Techville",
//         "state": "CA",
//         "postalCode": "94043"
//       },
//       "established": "2023-05-24T00:00:00Z",
//       "departements": [
//         {
//           "deptId": "D001",
//           "name": "Engineering",
//           "manager": "Carol Davis",
//           "budget": 500000.00,
//           "year": 2023,
//           "availability": {
//             "online": true,
//             "inStore": false
//           },
//           "meeting_time": "12:00 AM"
//         },
//         {
//           "deptId": "D002",
//           "name": "Marketing",
//           "manager": "David Wilson",
//           "budget": 300000.00,
//           "meeting_time": "10:00 AM"
//         }
//       ]
//     }
//   }
//   ''';
//   Map<String, dynamic> json = jsonDecode(jsonFile);

//   Test company = Test.fromJson(json);
  // print(company.toJson());

  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp();
  UsersController usersController = UsersController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView.separated(
          itemBuilder: (context, ind) => elementUser(context, ind),
          separatorBuilder: (context, ind) => Divider(),
          itemCount: UsersController.usersList.users.length,
        ),
      ),
    );
  }

  Widget elementUser(BuildContext context, int ind){
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute<void>(
      builder: (BuildContext context) => UserPage(ind),),);
      },
      child: Row(children: [
        Text('User${UsersController.usersList.users.elementAt(ind).id}'),
      ],),
    );
  }
}
