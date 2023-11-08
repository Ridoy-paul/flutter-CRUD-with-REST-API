import 'package:flutter/material.dart';

class AddNewProductScreen extends StatefulWidget {
  const AddNewProductScreen({super.key});

  @override
  State<AddNewProductScreen> createState() => _AddNewProductScreenState();
}

class _AddNewProductScreenState extends State<AddNewProductScreen> {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController productCodeController = TextEditingController();
  final TextEditingController productImageLink = TextEditingController();
  final TextEditingController productQuantityController = TextEditingController();
  final TextEditingController productUnitPriceController = TextEditingController();

  final GlobalKey<FormState> _addFormKey = GlobalKey<FormState>();

  OutlineInputBorder inputBorderStyle = const OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(5)),
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
          child: Form(
            key: _addFormKey,
            child: Column(
              children: [
                TextFormField(
                  controller: titleController,
                  decoration: InputDecoration(
                    labelText: "Product Name",
                    hintText: "Enter Product Name",
                    border: inputBorderStyle,
                  ),
                  validator: (String? value) {
                    if (value!.isEmpty) {
                      return "Please Enter any Value";
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: productCodeController,
                  decoration: InputDecoration(
                    labelText: "Product Code",
                    hintText: "Enter Product Code",
                    border: inputBorderStyle,
                  ),
                  validator: (String? value) {
                    if (value!.isEmpty) {
                      return "Please Enter any Value";
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: productImageLink,
                  decoration: InputDecoration(
                    labelText: "Product Image Link",
                    hintText: "Enter Product Image Link",
                    border: inputBorderStyle,
                  ),
                  validator: (String? value) {
                    if (value!.isEmpty) {
                      return "Please Enter any Value";
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: productQuantityController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: "Product Quantity",
                    hintText: "Enter Product Quantity",
                    border: inputBorderStyle,
                  ),
                  validator: (String? value) {
                    if (value!.isEmpty) {
                      return "Please Enter any Value";
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: productUnitPriceController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: "Product Unit Price",
                    hintText: "Enter Product Unit Price",
                    border: inputBorderStyle,
                  ),
                  validator: (String? value) {
                    if (value!.isEmpty) {
                      return "Please Enter any Value";
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      if(_addFormKey.currentState!.validate()) {

                      }
                    },
                    child: const Text("Add Confrim"),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
