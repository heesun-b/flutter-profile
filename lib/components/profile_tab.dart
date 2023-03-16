import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

// tap은 상태를 변경하기 때문에 statesulWidget 사용
class ProfileTab extends StatefulWidget {
  const ProfileTab({Key? key}) : super(key: key);

  @override
  State<ProfileTab> createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab> with SingleTickerProviderStateMixin{

  TabController? _tapcontroller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tapcontroller = TabController(length:2, vsync: this);
  }

  //vsync = 탭이 어떤 위젯에 싱크를 맞추어서 작동하는가, 동작 위치 지정
  // 하지만 this를 넣으면 오류가 뜨는데 상속을 할 수 없으므로 interface처럼 SingleTickerProviderStateMixin를 상속해야 함

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          controller: _tapcontroller, // cotroller는 전역으로 빼주어야 함
          tabs: [
          Tab(
              icon: Icon(Icons.directions_car, color: Colors.black) ,
          ),
          Tab(
            icon: Icon(Icons.directions_transit, color: Colors.black54) ,
          ),
        ],
        ),
      Expanded( // 왜 expanede로 감싸지?
        child: TabBarView(
            controller: _tapcontroller,
            children: [
              GridView.builder(
                  itemCount: 42,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount: 3, // 가로 총 3개만 출력하겠다
                  ),
                  itemBuilder: (context, index) {
                    // return Image.network("https://picsum.photos/id/${index+1}/200/200");
                    return CachedNetworkImage(
                      imageUrl: "https://picsum.photos/id/${index+1}/200/200",
                      placeholder: (context, url) => CircularProgressIndicator(),
                      errorWidget: (context, url, error) => Icon(Icons.error),
                    );
                  },
              ),
              Container(
                color: Colors.green,
              ),
              Container(
                color: Colors.grey,
              )
            ]),
      )
      ],
    );
  }
}
