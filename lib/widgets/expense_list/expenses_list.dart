import 'package:expense_app/models/expense.dart';
import 'package:flutter/material.dart';

import 'expense_item.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({
    Key? key,
    required this.expenses,
    required this.onRemoveEXpense,
  }) : super(key: key);

  final List<Expense> expenses;
  final void Function(Expense expense) onRemoveEXpense;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: expenses.length,
        itemBuilder: (context, index) => Dismissible(
              key: ValueKey(
                expenses[index],
              ),
              onDismissed: (direction) {
                onRemoveEXpense(expenses[index]);
              },
              child: ExpenseItem(
                expense: expenses[index],
              ),
            ));
  }
}
