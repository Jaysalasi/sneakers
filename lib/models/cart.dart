import 'package:flutter/material.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier {
  // list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
      name: "Shoe 1",
      price: "\$40",
      img: 'assets/images/shoe1.jpg',
      description: 'one day',
    ),
    Shoe(
      name: "Shoe 2",
      price: "\$40",
      img: 'assets/images/shoe2.jpeg',
      description: 'one day',
    ),
    Shoe(
      name: "Shoe 3",
      price: "\$40",
      img: 'assets/images/shoe3.jpg',
      description: 'one day',
    ),
    Shoe(
      name: "Shoe 4",
      price: "\$40",
      img: 'assets/images/shoe4.jpg',
      description: 'one day',
    ),
    Shoe(
      name: "Shoe 5",
      price: "\$40",
      img: 'assets/images/shoe5.jpg',
      description: 'one day',
    ),
  ];

  // list of items in cart
  List<Shoe> userCart = [];

  // get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  // add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
  }

  // remove item from cart
  void rempveFromCart(Shoe shoe) {
    userCart.remove(shoe);
  }
}
