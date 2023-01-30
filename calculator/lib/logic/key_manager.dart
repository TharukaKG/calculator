import 'package:calculator/models/input_text_model.dart';

void filterKey(String key, InputTextModel inputTextModel) {
  switch (key) {
    case "0":
      {
        inputTextModel.onPressNumber(key);
      }
      break;
    case "1":
      {
        inputTextModel.onPressNumber(key);
      }
      break;
    case "2":
      {
        inputTextModel.onPressNumber(key);
      }
      break;
    case "3":
      {
        inputTextModel.onPressNumber(key);
      }
      break;
    case "4":
      {
        inputTextModel.onPressNumber(key);
      }
      break;
    case "5":
      {
        inputTextModel.onPressNumber(key);
      }
      break;
    case "6":
      {
        inputTextModel.onPressNumber(key);
      }
      break;
    case "7":
      {
        inputTextModel.onPressNumber(key);
      }
      break;
    case "8":
      {
        inputTextModel.onPressNumber(key);
      }
      break;
    case "9":
      {
        inputTextModel.onPressNumber(key);
      }
      break;

    case ".":
      {
        inputTextModel.onPressNumber(key);
      }
      break;
    case "/":
      {
        inputTextModel.onPressOperator(key);
      }
      break;
    case "*":
      {
        inputTextModel.onPressOperator(key);
      }
      break;
    case "-":
      {
        inputTextModel.onPressOperator(key);
      }
      break;
    case "+":
      {
        inputTextModel.onPressOperator(key);
      }
      break;
    case "00":
      {}
      break;
    case "CLEAR":
      {}
      break;
    case "=":
      {}
      break;
  }
}
