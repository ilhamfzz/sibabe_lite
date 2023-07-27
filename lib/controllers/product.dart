import 'package:get/get.dart';
import '../model/product.dart';
import '../services/product.dart';

class ProductController extends GetxController {
  var getProduct = <Product>[].obs;
  Services services = Services();
  var productLoading = true.obs;

  @override
  void onInit() {
    callGetMethod();
    super.onInit();
  }

  callGetMethod() async {
    try {
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
