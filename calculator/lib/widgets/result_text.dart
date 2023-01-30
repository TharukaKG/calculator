import 'package:calculator/models/input_text_model.dart';
import 'package:calculator/widget_styles/text_styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ResultTextWidget extends StatelessWidget {
  const ResultTextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 1 ,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: SizedBox(
          width: double.infinity,
          child: Text(
            "${context.watch<InputTextModel>().result}",
            style: TextStyles.boldLarge,
            textAlign: TextAlign.end,
          ),
        ),
      ),
    );
  }
}
