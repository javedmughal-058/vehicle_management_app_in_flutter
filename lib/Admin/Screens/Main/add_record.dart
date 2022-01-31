import 'package:flutter/material.dart';
class add_record extends StatefulWidget {
  const add_record({Key? key}) : super(key: key);

  @override
  _add_recordState createState() => _add_recordState();
}

class _add_recordState extends State<add_record> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Add Record"), backgroundColor: Colors.indigo,),
        body: Form(
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  icon: Icon(Icons.person),
                  hintText: 'Name of Owner7',
                  labelText: 'Name *',
                ),
                onSaved: (String? value) {
                  // This optional block of code can be used to run
                  // code when the user saves the form.
                },
                validator: (String? value) {
                  return (value != null && value.contains('@')) ? 'Do not use the @ char.' : null;
                },
              )
            ],
          ),
        ),
    );
  }
}
