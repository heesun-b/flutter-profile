import 'package:flutter/material.dart';

class ProfileCountInfo extends StatelessWidget {
  const ProfileCountInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _buildInfo("Post", "50"),
        _buildLine(),
        _buildInfo("Likes", "30"),
        _buildLine(),
        _buildInfo("Share", "10"),
      ],
    );
  }

  Widget _buildLine() => Container(width: 2, height: 60, color: Colors.blue);

  Widget _buildInfo(String title, String count) {
    return Column(children: [
        Text(count, style: TextStyle(fontSize: 15)),
        SizedBox(height: 2),
        Text(
          title,
          style: TextStyle(fontSize: 15),
        )
      ]);
  }
}
