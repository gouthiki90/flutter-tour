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
          backgroundColor: Color(0xFF181818),
          body: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'Hey, Selena',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text('Welcome back',
                            style: TextStyle(
                                color: Colors.white.withOpacity(0.8),
                                fontSize: 18)),
                      ],
                    )
                  ],
                )
              ],
            ),
          )),
    );
  }
}
