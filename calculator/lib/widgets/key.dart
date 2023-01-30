import 'package:calculator/models/input_text_model.dart';
import 'package:calculator/widget_styles/text_styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class KeyWidget extends StatelessWidget {
  final String padKey;

  const KeyWidget({Key? key, required this.padKey}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
        fit: FlexFit.tight,
        child: Container(
          alignment: AlignmentDirectional.center,
          height: double.infinity,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey, width: 1.0),
              borderRadius: const BorderRadius.all(Radius.circular(4.0))),
          child: TextButton(
            child: Text(padKey.toString(),
                textAlign: TextAlign.center, style: TextStyles.semiBoldMedium),
            onPressed: () => {Provider.of<InputTextModel>(context, listen: false).onClickKey(padKey)},
          ),
        ));
  }
}
