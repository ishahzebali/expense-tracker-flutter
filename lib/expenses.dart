import 'package:expense_tracker/expense_list.dart';
import 'package:expense_tracker/models/expense.dart';
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});
  @override
  State<StatefulWidget> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _regesteredExpenses = [
    Expense(
        amount: 19.99,
        date: DateTime.now(),
        title: 'Flutter Course',
        category: Category.work),
    Expense(
        amount: 15.69,
        date: DateTime.now(),
        title: 'Cinema',
        category: Category.leisure),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text('Espenses Chart'),
          Expanded(child: ExpenseList(expenses: _regesteredExpenses))
        ],
      ),
    );
  }
}
