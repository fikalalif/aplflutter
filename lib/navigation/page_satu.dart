import 'package:flutter/material.dart';
import 'package:untitled5/navigation/page_dua.dart';
import 'package:untitled5/services/users_service.dart';

import '../models/users.dart';

class PageSatu extends StatefulWidget {
  const PageSatu({super.key});

  @override
  State<PageSatu> createState() => _PageSatuState();
}

class _PageSatuState extends State<PageSatu> {
  late Future<List<Users>> futureUsers;
  final UserService _userService = UserService();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    futureUsers = _userService.fetchUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Get RestAPI")),
      body: Center(
        child: FutureBuilder<List<Users>>(
          future: futureUsers,
          builder: (context, snapshot){
            if (snapshot.connectionState== ConnectionState.waiting){
              return Center(child: CircularProgressIndicator());
            } else if(snapshot.hasError){
              return Center(child: Text('Error : ${snapshot.error}'));
            } else if (!snapshot.hasData || snapshot.data!.isEmpty){
              return Center(child: Text('user not found'));
            }

            final users = snapshot.data!;

            return ListView.builder(
              itemCount: users.length,
              itemBuilder: (context, index){
                final user = users[index];
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(user.avatar),
                  ),
                );
              },
            );

          },

        ),
      )
    );
  }
}
