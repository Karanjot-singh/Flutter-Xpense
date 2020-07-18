import 'package:flutter/material.dart';
import '../models/Transaction.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> _userTransaction;
  TransactionList(this._userTransaction);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: _userTransaction.map(
        (tx) {
          return Card(
            child: Row(
              children: <Widget>[
                Container(
                  child: Text(
                    "\₹ " + tx.amount.toString(),
                    style: TextStyle(
                      color: Colors.purple[400],
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  padding: EdgeInsets.all(10),

                  // decoration: BoxDecoration(
                  //     border:
                  //         Border.all(color: Colors.grey[850], width: 2)),
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      tx.title,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      DateFormat.yMMMd().format(tx.date),
                      style: TextStyle(
                        color: Colors.grey[850],
                        fontSize: 12,
                      ),
                    )
                  ],
                )
              ],
            ),
          );
        },
      ).toList(),
    );
  }
}
