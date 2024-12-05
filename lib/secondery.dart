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
  bool showTitle = true;

  void toggleTitle() {
    setState(() {
      showTitle = !showTitle;
    });
  }

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
  // context에는 위젯트리의 데이터가 담겨있다.
  // 위젯트리에서 부모 요소에 접근할 수 있도록 한다.
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            color: Colors.red,
          ),
        ),
      ),
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              showTitle ? const MyLargeTitle() : const Text('nothing'),
              IconButton(
                  onPressed: toggleTitle,
                  icon: const Icon(Icons.remove_red_eye))
            ],
          ),
        ),
      ),
    );
  }
}

// 빌드 컨텍스트와 연결할 수 있도록 할 것이다.
// material app이란 부모와 연결할 수 있도록 한다.
class MyLargeTitle extends StatefulWidget {
  const MyLargeTitle({
    super.key,
  });

  @override
  State<MyLargeTitle> createState() => _MyLargeTitleState();
}

class _MyLargeTitleState extends State<MyLargeTitle> {
// state를 초기화한다.
  @override
  void initState() {
    super.initState();
    // build 전에 실행된다.
    print('initState!');
  }

// 위젯이 화면에 사라질 때 실행된다.
  @override
  void dispose() {
    super.dispose();
    print('dispose!');
  }

  @override
  Widget build(BuildContext context) {
    print('build!');
    return Text(
      'My Large Title',
      style: TextStyle(
        fontSize: 30,
        // null값이 나올 수 있다는 nullsafety 때문에 ?를 붙여주고 const를 지웠다.
        color: Theme.of(context).textTheme.titleLarge?.color,
      ),
    );
  }
}
