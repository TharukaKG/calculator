import 'package:calculator/models/input_text_model.dart';
import 'package:calculator/widgets/result_text.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'input_text.dart';
import 'key_pad.dart';

class CalculatorWidget extends StatelessWidget {
  const CalculatorWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<InputTextModel>(
      create: (context) => InputTextModel(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: const [
          InputTextWidget(),
          ResultTextWidget(),
          KeyPadWidget()
        ],
      ),
    );
  }
}
