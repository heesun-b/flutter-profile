import 'package:flutter/material.dart';

class ProfileButton extends StatelessWidget {
  const ProfileButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _followButton(),
        _MessageButton()
      ],
    );
  }

  Widget _MessageButton() {
    return InkWell(
        onTap: () {
          print("Message 버튼 클릭됨");
        },
        child: Container(
          alignment: Alignment.center,
          width: 150,
          height: 45,
          child: Text(
            "Message",
            style: TextStyle( color: Colors.black),
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: (
                Border.all(color: Colors.grey)
            ) ,
          ),
        ),
      );
  }

  Widget _followButton() {
    return InkWell(
        onTap: (){print("Follow 버튼 클릭됨");},
        child: Container(
          alignment: Alignment.center,
          width: 150,
          height: 45,
          child: Text(
            "Follow",
            style: TextStyle(color: Colors.white),
          ),
          decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(10)
          ),
        ),
      );
  }
}