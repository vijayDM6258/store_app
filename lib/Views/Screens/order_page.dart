import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mine_animater/Controllers/cart_controller.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    CartController cartController = Get.find();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade50,
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'My orders',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
        title: Text('Orders'),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          GetBuilder<CartController>(
            builder: (controller) {
              return Expanded(
                child: ListView(
                  children: cartController.CartProduct.map(
                    (e) => Card(
                      elevation: 5,
                      child: ListTile(
                        leading: Icon(Icons.panorama_rounded),
                        title: Text(e.name),
                        subtitle: Text("${e.price}"),
                        trailing: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              onPressed: () {
                                cartController.IncreaseInCart(e);
                              },
                              icon: const Icon(Icons.add),
                            ),
                            GetBuilder<CartController>(
                              builder: (controller) {
                                return Text(
                                  "${e.quantity}",
                                  style: TextStyle(fontSize: 18),
                                );
                              },
                            ),
                            IconButton(
                              onPressed: () {
                                cartController.RemoveFromCart(e);
                              },
                              icon: Icon(Icons.remove),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ).toList(),
                ),
              );
            },
          ),
          Text("${cartController.CartProduct.map(
            (e) => Text("${e.price},"),
          )}")
        ],
      ),
    );
  }
}
