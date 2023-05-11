import 'package:flutter/material.dart';

AlertDialog alert(BuildContext context, String title, String description){
  return AlertDialog(
    title: Text(title),
    content: Text(description),
    actions: <Widget>[
      TextButton(
        onPressed: () => Navigator.pop(context, 'NOK'),
        child: const Text('OK'),
      ),
    ],
  );
}
// o que justifica componentizar um widget? vc usar ele mais de uma vez no projeto