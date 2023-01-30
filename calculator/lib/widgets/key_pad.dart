import 'package:calculator/widgets/key.dart';
import 'package:flutter/material.dart';

class KeyPadWidget extends StatelessWidget {
  const KeyPadWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Row(
              children: const [
                KeyWidget(padKey: "7"),
                KeyWidget(padKey: "8"),
                KeyWidget(padKey: "9"),
                KeyWidget(padKey: "/"),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: const [
                KeyWidget(padKey: "4"),
                KeyWidget(padKey: "5"),
                KeyWidget(padKey: "6"),
                KeyWidget(padKey: "*"),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: const [
                KeyWidget(padKey: "1"),
                KeyWidget(padKey: "2"),
                KeyWidget(padKey: "3"),
                KeyWidget(padKey: "-"),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: const [
                KeyWidget(padKey: "."),
                KeyWidget(padKey: "0"),
                KeyWidget(padKey: "00"),
                KeyWidget(padKey: "+"),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: const [
                KeyWidget(padKey: "CLEAR"),
                KeyWidget(padKey: "=")
              ],
            ),
          )
        ],
      ),
    );
  }
}
