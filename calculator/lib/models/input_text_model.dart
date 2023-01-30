
import 'package:calculator/logic/key_manager.dart';
import 'package:flutter/foundation.dart';

class InputTextModel with ChangeNotifier {
  String _inputText = "";
  double? _baseValue = null;
  String _operableText = "";
  double _operable = 0.0;
  String? operator = null;
  String? _lastKey = null;

  String get inputText => _inputText;
  double get result => _baseValue ?? 0;

  void onClickKey(String key) {
    filterKey(key, this);
  }

  void onPressNumber(String key) {

    if(_lastKey=="."&&_lastKey!=null){
      String removed = _inputText.substring(0, _inputText.length -1);
      _inputText = removed;
    }else{
      _operableText = "$_operableText$key";
    }

    appendKey(key);
  }

  void onPressOperator(String key){

    if(_lastKey==null) return;

    if((_lastKey == "/" || _lastKey == "*" || _lastKey == "-" || _lastKey == "+")&&_lastKey!=null){
      String removed = _inputText.substring(0, _inputText.length -1);
      _inputText = removed;
    }
    simplify(key);
    appendKey(key);
  }

  void simplify(String key){
    double val1 = double.parse(_operableText);
    if(_baseValue==null){
      _baseValue = val1;
    }else{
      if(key=="+"){
        double result = _baseValue! + val1;
        _baseValue = result;
        appendKey(result.toString());
      }
    }
  }

  void appendKey(String key) {
    _lastKey = key;
    _inputText = "$_inputText$key";
    notifyListeners();
  }

}
