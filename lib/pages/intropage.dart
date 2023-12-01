import 'package:ecommerce_app/components/mybutton.dart';
import 'package:ecommerce_app/pages/shop_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Intropage extends StatelessWidget {
  const Intropage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Icon(
            Icons.shopping_bag,
            size: 80,
            color: Theme.of(context).colorScheme.inversePrimary,
          ),
          const SizedBox(height: 25),
          const Text(
            "Minimal Shop",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 34),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "Premium Quality Products",
            style: TextStyle(color: Colors.grey.shade900),
          ),
          const SizedBox(height: 30),
          Mycustombutton(
              onTap: () {
                Get.to(const ShopPage());
              },
              child: const Icon(
                Icons.arrow_forward,
                size: 35,
              ))
        ]),
      ),
    );
  }
}
