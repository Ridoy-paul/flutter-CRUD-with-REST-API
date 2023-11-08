import 'dart:convert';

import 'package:flutter/material.dart';
import '/screens/add_new_product_screen.dart';
import '../widgets/product_item.dart';
import 'package:http/http.dart';

class ProductListScreen extends StatefulWidget {
  const ProductListScreen({super.key});

  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {

  List<Product> productList = [];

  @override
  void initState() {
    getProductList();
    super.initState();
  }

  void getProductList() async {
     Response response = await  get(Uri.parse('https://crud.teamrabbil.com/api/v1/ReadProduct'),);
     if(response.statusCode == 200) {
       final Map<String, dynamic> responseData =  jsonDecode(response.body);
       if(responseData['status'] == 'success') {
         for(Map<String, dynamic> productJson in responseData['data']) {
           productList.add(Product(
              id: productJson['_id'],
              productName: productJson['ProductName'],
              productCode: productJson['ProductCode'],
              image: productJson['Img'],
              unitPrice: productJson['UnitPrice'],
              quantity: productJson['Qty'],
              totalPrice: productJson['TotalPrice'],
           ));
        }
       }
     }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Product List"),
      ),
      body: SafeArea(
        child: ListView.separated(
          itemCount: 10,
          itemBuilder: (context, index) {
            return ProductItem();
          },
          separatorBuilder: (_, __) => const Divider(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const AddNewProductScreen(),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class Product {
  final String id;
  final String productName;
  final String productCode;
  final String image;
  final String unitPrice;
  final String quantity;
  final String totalPrice;

  Product({required this.id, required this.productName, required this.productCode, required this.image, required this.unitPrice, required this.quantity, required this.totalPrice});


}
