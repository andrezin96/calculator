import 'package:flutter/material.dart';
import 'package:calc/button.dart';
import 'package:function_tree/function_tree.dart';

class CalcController extends ChangeNotifier {
  var display = '0';

  void onButtonClick(ButtonClick click) {
    
    if (click is CommonButtonClick) {
      if (display == '0') {
        display = click.value;
      } else {
        display += click.value;
        }

      } else if (click is OpButtonClick) {
        if (click.value == '÷') {
          display += '/';
          } else if (click.value == '×') {
            display += '*';
          } else if (click.value == '+') {
            display += '+';
          } else if (click.value == '-') {
            display += '-';
          } else if (click.value == '%') {
            display += '%';
          }

      } else if (click is SignalButtonClick) {
        if (display.startsWith('-')) {
          display = display.substring(1);
        } else if (display == '0') {
          display = '-';
        } else {
          display = '-$display';
        }
        
      } else if (click is ClearButtonClick) {
        display = '0';
        
      } else if (click is ClearEntryButtonClick) {
        display = display.substring(0, display.length -1);
        if (display.length == 0) {
          display = '0';
        }

      } else if (click is EqualButtonClick) {
        try {
           final result = display.interpret();
           display = '$result';
        } catch (e) {
          display = '0';
        }
      }
      
      notifyListeners();
    }
  }