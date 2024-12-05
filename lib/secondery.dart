import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

void main() {
  runApp(const MyWidget());
}

class _MyWidgetState extends State<MyWidget> {
  // state data
  int counter = 0;

  List<int> numbers = [];

  void onClicked() {
    // refresh data and ui
    // 빌드 메서드를 한번 더 호출하는 형식이다.
    // 반드시 setState에 넣을 필요는 없다.
    setState(() {
      numbers.add(numbers.length);
      // print(numbers);
      // counter = counter + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Click Count',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              Text(
                '$counter',
                style: const TextStyle(
                  fontSize: 30,
                ),
              ),
              for (var n in numbers) Text('$n'),
              IconButton(
                onPressed: onClicked,
                icon: const Icon(Icons.add_box_rounded),
              )
            ],
          ),
        ),
      ),
    );
  }
}
