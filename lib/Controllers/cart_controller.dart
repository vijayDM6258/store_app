import 'package:get/get.dart';
import '../Modules/cart_module.dart';

class CartController extends GetxController {
  List<CartModel> allProducts = [
    CartModel(id: 1, name: "Iphone Xr", price: 39900, quantity: 0),
    CartModel(id: 2, name: "Iphone 7 plus", price: 18000, quantity: 0),
    CartModel(id: 3, name: "Asus Tuf F15", price: 58975, quantity: 0),
    CartModel(id: 4, name: "Iphone 5s ", price: 15000, quantity: 0),
    CartModel(id: 5, name: "Iphone 11 pro", price: 25500, quantity: 0),
    CartModel(id: 6, name: "IPhone 5 ", price: 10000, quantity: 0),
  ];
  List<CartModel> CartProduct = [];

  void AddToCart(CartModel cartModel) {
    CartProduct.add(cartModel);
    cartModel.quantity++; //cart ma add thase aa
    update();
  }

  void IncreaseInCart(CartModel cartModel) {
    cartModel.quantity++;
    var nprice = cartModel.price + cartModel.price;
    print(nprice); //cart ma ek ek vadharo thse
    update();
  }

  void RemoveFromCart(CartModel cartModel) {
    if (cartModel.quantity > 0) {
      cartModel.quantity--; //cart mathi minus thse ochu thse
    } else {
      cartModel.quantity = 0;
      CartProduct.remove(cartModel);
    }
    update();
  }
}
