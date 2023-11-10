import 'package:flutter/material.dart';
import 'package:flutter_crud/screens/product_list_screen.dart';

void main() => runApp(CRUDApp());

class CRUDApp extends StatelessWidget {
  const CRUDApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  ProductListScreen(),
    );
  }
}


