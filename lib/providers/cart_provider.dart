import 'package:flutter/cupertino.dart';
import 'package:shamo/models/cart_model.dart';
import 'package:shamo/models/product_model.dart';

class CartProvider with ChangeNotifier {
  List<CartModel> _carts = [];

  List<CartModel> get carts => _carts;

  set carts(List<CartModel> carts) {
    _carts = carts;
    notifyListeners();
  }

  addCart(ProductModel product) {
    if (productExist(product)) {
      int index =
          _carts.indexWhere((element) => element.product.id == product.id);
      _carts[index].quantity++;
    } else {
      _carts.add(CartModel(id: _carts.length, product: product, quantity: 1));
    }
    notifyListeners();
  }

  removeCart(int id) {
    // _carts.removeAt(id);
    _carts.removeWhere((element) => element.id == id);
    print(id);
    notifyListeners();
  }

  addQuantity(int id) {
    int a = _carts.indexWhere((element) => element.id == id);
    _carts[a].quantity++;
    notifyListeners();
  }

  reduceQuantity(int id) {
    // _carts[id].quantity--;
    int a = _carts.indexWhere((element) => element.id == id);
    _carts[a].quantity--;
    // if (_carts[id].quantity < 1) {
    if (_carts[a].quantity < 1) {
      // _carts.removeAt(id);
      _carts.removeWhere((element) => element.id == id);
    }
    notifyListeners();
  }

  totalItems() {
    int total = 0;
    for (var item in _carts) {
      total += item.quantity;
    }
    return total;
  }

  totalPrice() {
    double total = 9;
    for (var item in _carts) {
      total += (item.quantity * item.product.price!);
    }

    return total;
  }

  productExist(ProductModel product) {
    if (_carts.indexWhere((element) => element.product.id == product.id) ==
        -1) {
      return false;
    } else {
      return true;
    }
  }
}
