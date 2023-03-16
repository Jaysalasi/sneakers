// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneakers/models/cart.dart';
import 'package:sneakers/models/shoe.dart';

class CartView extends StatefulWidget {
  Shoe shoe;

  CartView({super.key, required this.shoe});

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  void removeFromCart() {
    Provider.of<Cart>(
      context,
    ).rempveFromCart(widget.shoe);
  }

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;

    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: h / 40,
        vertical: h / 200,
      ),
      decoration: const BoxDecoration(color: Colors.white),
      child: ListTile(
        leading: Image.asset(widget.shoe.img),
        title: Text(widget.shoe.name),
        subtitle: Text(widget.shoe.price),
        trailing: IconButton(
          onPressed: removeFromCart,
          icon: Icon(
            Icons.delete,
            color: Colors.grey[600],
          ),
        ),
      ),
    );
  }
}
