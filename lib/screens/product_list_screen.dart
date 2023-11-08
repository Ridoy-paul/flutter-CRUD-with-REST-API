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
        child: ListView.separated(
          itemCount: 10,
          itemBuilder: (context, index) {
            return ProductItem();
          },
          separatorBuilder: (_, __) => Divider(),
        ),
      ),
    );
  }
}

class ProductItem extends StatelessWidget {
  const ProductItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: const Text("Select Action"),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ListTile(
                    title: const Text("Edit"),
                    leading: const Icon(Icons.edit_calendar),
                    onTap: () {},
                  ),
                  const Divider(
                    height: 10,
                  ),
                  ListTile(
                    title: const Text("Delete"),
                    leading: const Icon(Icons.delete_outline),
                    onTap: () {},
                  )
                ],
              ),
            );
          },
        );
      },
      title: Text("This is the title"),
      leading: Image.network(
          'https://topmobileinfo.com/images/products/xiaomi-civi-3-mobile-3858.png'),
      trailing: Text("\$120"),
      subtitle: Text("hello"),
    );
  }
}
