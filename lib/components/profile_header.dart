import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 20),
        _headerAvatar("ha.jpg"),
        SizedBox(width: 20),
        _headerProfile("Heesun", sub1: "heeeees", sub2: "hi")
      ],
    );
  }

  Widget _headerProfile(String name, {String sub1 = "", String sub2 =""}) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
          name,
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            sub1,
            style: TextStyle(fontSize: 20),
          ),
          Text(
            sub2,
            style: TextStyle(fontSize: 15),
          )
        ],
      );
  }

  Widget _headerAvatar(String img) {
    return SizedBox(
        width: 100,
        height: 100,
        child: CircleAvatar(
          backgroundImage: AssetImage("assets/$img"),
        ),
      );
  }
}
