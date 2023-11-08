import 'package:flutter/material.dart';

class ProductListScreen extends StatefulWidget {
  const ProductListScreen({super.key});

  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Product List"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            ListTile(
              title: Text("This is the title"),
              leading: Image.network('https://topmobileinfo.com/images/products/xiaomi-civi-3-mobile-3858.png'),
              trailing: Text("\$120"),
            )
          ],
        ),
      ),
    );
  }
}
