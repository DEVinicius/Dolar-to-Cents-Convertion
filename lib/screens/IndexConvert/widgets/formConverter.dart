import 'package:flutter/material.dart';
import "dart:developer";

class FormConverter extends StatefulWidget {
  FormConverter({Key? key}) : super(key: key);

  @override
  _FormConverterState createState() => _FormConverterState();
}

class _FormConverterState extends State<FormConverter> {
  final formKey = GlobalKey<FormState>();
  double centsConverted = 0;

  final dolarValue = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text(centsConverted.toString() + " cents"),
      Form(
        key: formKey,
        child: Column(
          children: <Widget>[
            TextFormField(
              controller: dolarValue,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Please Enter some Text";
                }

                return null;
              },
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    centsConverted = double.parse(dolarValue.text) * 100;
                  });
                },
                child: Text("Converter"),
              ),
            ),
          ],
        ),
      ),
    ]);
  }
}
