import 'package:flutter/material.dart';

class HelloPage extends StatefulWidget {

  HelloPage({Key? key}) : super(key: key);
  @override
  State<HelloPage> createState() => _HelloPageState();
}

class _HelloPageState extends State<HelloPage> {
  int num = 1;

 // 상태를 가지게 되면 동적으로 변하므로 상수가 될 수 없음, const 기입 시 오류남
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Align(
        alignment: Alignment.center,
        child: Column(
          children: [
            Text("hello $num", style: TextStyle(fontSize: 50),),
            OutlinedButton(
                onPressed: (){
                 setState(() { // 변경하고 싶은 상태 값을 바꾸는 행위(함수)를 입력하면 rebuild 해준다
                   num++;
                 });
                  print("num: $num");},
                child: Text("변경", style: TextStyle(fontSize: 30)))
          ],
        ),
      ),
    );
  }
}
