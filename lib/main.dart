import 'package:flutter/material.dart';

class Player {
  // name을 가질 수도 아닐 수도 있음
  // 해당 여부로 필수 파라미터 여부를 알 수 있음
  String? name;

  Player({required this.name});
}

void main() {
  // named parameter
  var nico = Player(name: "nico");
  runApp(App());
}

// widget을 만들기 위해서는 flutter의 sdk에 있는 3개의 core widget 중에 하나를 상속 받아야 한다.
// build 메서드는 위젯을 만들기 위해 존재하는 메서드이다.
// root widget은 2가지의 옵션이 있다.
// 1. meterial wiget을 return(구글)
// 2. cupertino wiget을 return(ios)
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 시작점을 세팅해야 한다.
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello World!'),
        ),
        appBar: AppBar(
          title: Text('Hello Flutter'),
        ),
      ),
    );
  }
}
