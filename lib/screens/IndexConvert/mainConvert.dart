import 'package:dolar_convert/globalWidgets/header/header.dart';
import 'package:dolar_convert/screens/IndexConvert/widgets/formConverter.dart';
import 'package:flutter/material.dart';

class MainConvert extends StatelessWidget {
  const MainConvert({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [Header(), FormConverter()],
    );
  }
}
