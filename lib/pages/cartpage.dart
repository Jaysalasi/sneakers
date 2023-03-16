import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';
import 'package:sneakers/components/cartview.dart';
import 'package:sneakers/models/cart.dart';
import 'package:sneakers/models/shoe.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    return Consumer<Cart>(
      builder: (context, value, child) => Column(
        children: [
          const Text('My Cart'),

          Gap(
            h / 30,
          ),

          //
          Expanded(
              child: ListView.builder(
                  itemCount: value.getUserCart().length,
                  itemBuilder: (context, index) {
                    Shoe individualShoe = value.getUserCart()[index];
                    return CartView(
                      shoe: individualShoe,
                    );
                  }))
        ],
      ),
    );
  }
}
