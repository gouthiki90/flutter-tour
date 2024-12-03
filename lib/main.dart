import 'package:flutter/material.dart';
import 'package:welcome_flutter/widget/button.dart';

// 컴파일하기 전에 이미 알고 있는 값. 컴파일 시 variable를 대치한다.
const taxAmount = 15;
const priceAmount = 30;

class Player {
  // name을 가질 수도 아닐 수도 있음
  // 해당 여부로 필수 파라미터 여부를 알 수 있음
  String? name;

  Player({required this.name});
}

void main() {
  // named parameter
  var nico = Player(name: "nico");
  runApp(const App());
}

// widget을 만들기 위해서는 flutter의 sdk에 있는 3개의 core widget 중에 하나를 상속 받아야 한다.
// build 메서드는 위젯을 만들기 위해 존재하는 메서드이다.
// root widget은 2가지의 옵션이 있다.
// 1. meterial wiget을 return(구글)
// 2. cupertino wiget을 return(ios)
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    // 시작점을 세팅해야 한다.
    return MaterialApp(
      home: Scaffold(
          backgroundColor: const Color(0xFF181818),
          body: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text(
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
                ),
                const SizedBox(
                  height: 30,
                ),
                // 전구(코드 액션)으로 위젯으로 감싸거나 풀기 등의 액션을 자동으로 할 수 있다.
                // command + .으로 가능
                Text(
                  'Total Balance',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white.withOpacity(0.8),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  '\$5 194 487',
                  style: TextStyle(
                    fontSize: 44,
                    color: Colors.white.withOpacity(0.8),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // 커스텀 위젯 중복 위젯 방지
                    Button(
                      text: 'Transfer',
                      bgcolor: Color(0xFFF1B338),
                      textcolor: Colors.black,
                    ),
                    Button(
                      text: 'Request',
                      bgcolor: Color(0xFF1F2123),
                      textcolor: Colors.white,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 100,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Wallests',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 36,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'View All',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.8),
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFF1F2123),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Euro',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 32,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  const Text(
                                    '6 428',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text('EUR',
                                      style: TextStyle(
                                        color: Colors.white.withOpacity(0.8),
                                        fontSize: 18,
                                      )),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ))
              ],
            ),
          )),
    );
  }
}
