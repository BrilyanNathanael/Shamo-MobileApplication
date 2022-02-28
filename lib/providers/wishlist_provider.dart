import 'package:flutter/cupertino.dart';
import 'package:shamo/models/product_model.dart';

class WishlistProvider with ChangeNotifier{
  List<ProductModel> _wishlist = [];

  List<ProductModel> get wishlist => _wishlist;

  set wishlist(List<ProductModel> wishlist){
    wishlist = _wishlist;
    notifyListeners();
  }

  setProduct(ProductModel product){
    if(!isWishList(product)){
      _wishlist.add(product);
    }
    else{
      _wishlist.removeWhere((element) => element.id == product.id);
    }

    notifyListeners();
  }

  isWishList(ProductModel product){
    if(_wishlist.indexWhere((element) => element.id == product.id) == -1){
      return false;
    }
    else return true;
  }
}