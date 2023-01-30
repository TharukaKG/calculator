import 'package:calculator/models/input_text_model.dart';
import 'package:calculator/widget_styles/text_styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class InputTextWidget extends StatelessWidget {
  const InputTextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8 , vertical: 24),
        child: Text(
          context.watch<InputTextModel>().inputText,
          textAlign: TextAlign.end,
          style: TextStyles.boldLarge,
        ),
      ),
    );
  }
}
