import 'package:flutter/material.dart';

class AddNewProductScreen extends StatefulWidget {
  const AddNewProductScreen({super.key});

  @override
  State<AddNewProductScreen> createState() => _AddNewProductScreenState();
}

class _AddNewProductScreenState extends State<AddNewProductScreen> {

  OutlineInputBorder inputBorderStyle = const OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(10)),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add new product."),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Product Name",
                  hintText: "Enter Product Name",
                  border: inputBorderStyle,
                ),
                validator: (String? value) {
                  if (value!.isEmpty) {
                    return "Please Enter any Task";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10,),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Product Code",
                  hintText: "Enter Product Code",
                  border: inputBorderStyle,
                ),
                validator: (String? value) {
                  if (value!.isEmpty) {
                    return "Please Enter any Task";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10,),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Product Image Link",
                  hintText: "Enter Product Image Link",
                  border: inputBorderStyle,
                ),
                validator: (String? value) {
                  if (value!.isEmpty) {
                    return "Please Enter any Task";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10,),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Product Quantity",
                  hintText: "Enter Product Quantity",
                  border: inputBorderStyle,
                ),
                validator: (String? value) {
                  if (value!.isEmpty) {
                    return "Please Enter any Task";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10,),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Product Unit Price",
                  hintText: "Enter Product Unit Price",
                  border: inputBorderStyle,
                ),
                validator: (String? value) {
                  if (value!.isEmpty) {
                    return "Please Enter any Task";
                  }
                  return null;
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
