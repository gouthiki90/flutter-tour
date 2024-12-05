import 'package:flutter/material.dart';

// stateless 위젯은 빌드 메서드를 통해서 UI를 구현한다.
// statefull 위젯은 실시간으로 데이터 변화를 가지고 있는 UI 구현 위젯이다.
class Button extends StatelessWidget {
  final String text;
  final Color bgcolor;
  final Color textcolor;

  const Button(
      {super.key,
      required this.text,
      required this.bgcolor,
      required this.textcolor});

  @override
  Widget build(Object context) {
    return Container(
      decoration: BoxDecoration(
        color: bgcolor,
        borderRadius: BorderRadius.circular(45),
      ),
      child: Padding(
        // 커스텀 위젯이기 때문에 padding의 const는 존재할 수 없게 된다. 자식의 값이 달라질 수 있기 때문.
        padding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 40,
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 20,
            color: textcolor,
          ),
        ),
      ),
    );
  }
}
