import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mine_animater/Controllers/cart_controller.dart';
import 'package:mine_animater/Views/Screens/order_page.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    CartController cartController = Get.put(CartController());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellowAccent.shade100,
        centerTitle: true,
        title: Text(
          'WishList',
          style: TextStyle(color: Colors.black87),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Badge(
              backgroundColor: Colors.blue,
              label: GetBuilder<CartController>(
                builder: (context) {
                  return Text('${cartController.CartProduct.length}');
                },
              ),
              child: IconButton(
                  onPressed: () {
                    Get.to(OrderPage());
                  },
                  icon: Icon(
                    Icons.shopping_cart,
                    color: Colors.black87,
                  )),
            ),
          ),
        ],
      ),
      body: GetBuilder<CartController>(
        builder: (context) {
          return ListView(
            children: cartController.allProducts
                .map(
                  (e) => Card(
                    margin: EdgeInsets.all(7),
                    child: ListTile(
                      leading: Icon(Icons.panorama_rounded),
                      title: Text(e.name),
                      subtitle: Text('Price ${e.price}'),
                      trailing: GetBuilder<CartController>(
                        builder: (context) {
                          return GetBuilder<CartController>(
                            builder: (context) {
                              return (e.quantity == 0)
                                  ? ElevatedButton(
                                      onPressed: () {
                                        cartController.AddToCart(e);
                                      },
                                      child: Icon(Icons.add))
                                  : Icon(Icons.done);
                            },
                          );
                        },
                      ),
                    ),
                  ),
                )
                .toList(),
          );
        },
      ),
    );
  }
}
