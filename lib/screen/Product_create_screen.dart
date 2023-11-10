import 'package:flutter/material.dart';
import 'package:flutter_crud/style/Style.dart';

class ProductCreateScreen extends StatefulWidget {
  const ProductCreateScreen({super.key});

  @override
  State<ProductCreateScreen> createState() => _ProductCreateScreenState();
}

class _ProductCreateScreenState extends State<ProductCreateScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Create Product"),),
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: appInputDecorationStyle("Product Title"),
                      onChanged: (value) {

                      },
                    ),
                    const SizedBox(height: 10,),
                    TextFormField(
                      decoration: appInputDecorationStyle("Product code"),
                      onChanged: (value) {

                      },
                    ),
                    const SizedBox(height: 10,),
                    TextFormField(
                      decoration: appInputDecorationStyle("Product Image"),
                      onChanged: (value) {

                      },
                    ),
                    const SizedBox(height: 10,),
                    TextFormField(
                      decoration: appInputDecorationStyle("Product Unit Price"),
                      onChanged: (value) {

                      },
                    ),
                    const SizedBox(height: 10,),
                    TextFormField(
                      decoration: appInputDecorationStyle("Product Quantity"),
                      onChanged: (value) {


                      },
                    ),


                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
