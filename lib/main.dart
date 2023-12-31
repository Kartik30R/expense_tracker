import 'package:expense_tracker/widgets/expenses.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    App()
  );
}

class App extends StatelessWidget{
  App({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Expenses(),
    );
}

}