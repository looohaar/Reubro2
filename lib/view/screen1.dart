import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:reubro_test_2/view/screen2.dart';

class Screen1 extends StatefulWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    String value;
    final numberController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Screen 1',
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty|| int.parse(value)>25) {
                    return "Invalid input";
                  } else {
                    return null;
                  }
                },
                inputFormatters: [
                  FilteringTextInputFormatter.allow(new RegExp("[0-9]"))
                ],
                controller: numberController,
                keyboardType:
                    const TextInputType.numberWithOptions(decimal: true),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromARGB(255, 211, 197, 251),
                  hintText: " Enter a number ( 1 to 25 )",
                  hintStyle:
                      const TextStyle(color: Colors.black54, fontSize: 18),
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(
                      style: BorderStyle.solid,
                      color: Colors.deepPurple,
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
              const SizedBox(height: 25),
              ElevatedButton(
                onPressed: () {
                  value = numberController.text;

                  print(value);


                  if (_formKey.currentState!.validate()) {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Screen2(indexValue: value)));
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                     const SnackBar(
                        content: Text('Enter a number from 1 to 25',
                        style:  TextStyle(color: Colors.white,fontSize: 18,),
                        textAlign: TextAlign.center,
                         ),
                         
                      ),
                    );
                  }
                },
                child: const Text(
                  'Submit',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
