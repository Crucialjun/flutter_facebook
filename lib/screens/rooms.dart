import 'package:flutter/material.dart';

import '../models/models.dart';

class Rooms extends StatelessWidget {
  final List<User> onlineUsers;
  const Rooms({Key? key, required this.onlineUsers}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange,
      height: 60.0,
      child: ListView.builder(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 4.0),
          scrollDirection: Axis.horizontal,
          itemCount: 1 + onlineUsers.length,
          itemBuilder: (context, index) {
            if (index == 0) {
              return Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 8.0,
                ),
                child: _CreateRoomButton(),
              );
            }
            return Container(
              margin: const EdgeInsets.all(4),
              color: Colors.red,
              height: 20,
              width: 20,
            );
          }),
    );
  }
}

class _CreateRoomButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(onPressed: onPressed, child: child,style: OutlinedButtonTheme(),)
  }
}
