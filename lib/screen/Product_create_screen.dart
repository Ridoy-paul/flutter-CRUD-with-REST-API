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
            screenBackground(context),
            SingleChildScrollView(
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
                  const SizedBox(
                    height: 10,
                  ),
                  dropDownStyle(
                    DropdownButton(
                      value: "",
                      items: const  [
                        DropdownMenuItem(value: '', child:  Text("Select Quantity"),),
                        DropdownMenuItem(value: '1', child:  Text("1 pcs"),),
                        DropdownMenuItem(value: '2', child:  Text("2 pcs"),),
                        DropdownMenuItem(value: '3', child:  Text("3 pcs"),),
                        DropdownMenuItem(value: '4', child:  Text("4 pcs"),),
                        DropdownMenuItem(value: '5', child:  Text("5 pcs"),),
                        DropdownMenuItem(value: '6', child:  Text("6 pcs"),),
                        DropdownMenuItem(value: '7', child:  Text("7 pcs"),),
                        DropdownMenuItem(value: '8', child:  Text("8 pcs"),),
                        DropdownMenuItem(value: '9', child:  Text("9 pcs"),),
                      ],
                      onChanged: (value) {

                      },
                      isExpanded: true,
                      underline: Container(),
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                    ),
                  ),
                  const SizedBox(height: 10,),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: appInputDecorationStyle("Product Unit Price"),
                    onChanged: (value) {

                    },
                  ),
                  const SizedBox(height: 10,),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: appInputDecorationStyle("Product Total Price"),
                    onChanged: (value) {


                    },
                  ),
                  const SizedBox(height: 10,),
                  ElevatedButton(
                    style: buttonStyle(),
                    onPressed: () {

                    },
                    child: successButtonChild("Add Product"),
                  )

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
