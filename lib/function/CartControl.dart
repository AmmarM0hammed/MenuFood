import "package:get/get.dart";

class CartControl extends GetxController {

  var cartList = [].obs;
    var cartNumber = 0.obs;

  add() {
    cartNumber.value++;
  }
  remove() {
    cartNumber.value--;
  }
}
