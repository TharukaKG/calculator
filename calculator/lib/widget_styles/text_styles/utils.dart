import 'package:flutter/material.dart';

TextStyle extend(TextStyle ts1, TextStyle ts2){
  return ts1.merge(ts2);
}