import 'package:flutter/material.dart';



class NewExpense extends StatefulWidget{
    const NewExpense({super.key});

    @override
  State<NewExpense> createState() {
    return NewExpense_State();
  }
}

class NewExpense_State extends State<NewExpense>{
 final _titleController = TextEditingController();
 final _amountcontroller= TextEditingController();

 void _presentdatePicker(){
  final now =DateTime.now();
  final firstDate =DateTime(now.year-1, now.month,now.day);
  showDatePicker(
    context: context, 
    initialDate: now,
    firstDate: firstDate, 
    lastDate: now);
 }
 @override
  void dispose() {
    _titleController.dispose();
    _amountcontroller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding : const EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
           controller: _titleController,
            maxLength: 50,
            decoration: const InputDecoration(
              label: Text('Title'),
            ),
          ),
          Expanded(
            child: TextField(
             controller: _amountcontroller,
              maxLength: 50,
              keyboardType:TextInputType.number,
              decoration: const InputDecoration(
                prefix: Text('\$'),
                label: Text('Amount'),
              ),
            ),
          ),
          Expanded(child: 
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Select date'),
              IconButton(onPressed: _presentdatePicker, icon:Icon(Icons.calendar_month),
              ),
            ],
          )),

          Row(
            children: [
              TextButton(onPressed: (){}, child: Text('Cancel')),
              ElevatedButton(onPressed: (){
                print(_titleController.text);
                print(_amountcontroller.text);
              }, 
              child: const Text('Save Expense'))
            ],
          )
        ],
      ),
    );
  }
}