import 'package:get/get.dart';
import '../model/product.dart';
import '../services/product.dart';

class ProductController extends GetxController {
  // ignore: deprecated_member_use
  var getProduct = <Product>[].obs;
  Services services = Services();
  var productLoading = true.obs;
  @override
  void onInit() {
    callPostMethod();
    super.onInit();
  }
  callPostMethod() async {
    try{
      productLoading.value = true;
      var result = await services.getAllProduct();
      if (result != null) {
        getProduct.assignAll(result);
      } else {
        print("null");
      }
    } finally {
      productLoading.value = false;
    }
    update();
  }
}