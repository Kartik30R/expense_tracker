import 'package:expense_tracker/models/expense.dart';
import 'package:expense_tracker/widgets/expenses_list/expenses_list.dart';
import 'package:expense_tracker/widgets/new_expense.dart';

import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});
  @override
  State<StatefulWidget> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> registeredExpenses = [
    Expense(
        title: 'flutter Course',
        amount: 20,
        date: DateTime.now(),
        category: Category.work),
    Expense(
        title: 'movie',
        amount: 10,
        date: DateTime.now(),
        category: Category.leisure)
  ];

  void _openAddExpenseOverlay(){
    showModalBottomSheet(
      context: context, 
      builder:(ctx){
      return NewExpense();
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expense tracker'),
        actions: [
          IconButton(
            onPressed: _openAddExpenseOverlay,
            icon: Icon(Icons.add))
        ],
      ),
      body: Column(
        children: [
          
        const Text('The chart'),
        Expanded(child: ExpensesList(expenses: registeredExpenses)),
      ]),
    );
  }
}
