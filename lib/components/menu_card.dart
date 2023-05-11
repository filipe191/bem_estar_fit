import 'package:flutter/material.dart';

Card menuCard({IconData iconeModel = Icons.error, String textMenu = '', Function()? funcao}) {
  return Card(
    color: const Color.fromARGB(255, 27, 157, 31),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
    ),
    margin: const EdgeInsets.only(
      left: 80,
      top: 25,
      right: 80,
      bottom: 25,
    ),
    child: InkWell(
      onTap: funcao,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 0,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                iconeModel,
                size: 60,
                color: Colors.white,
              ),
              Text(
                textMenu,
                style: const TextStyle(
                  fontSize: 17,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
      ),
    ),
  );
}