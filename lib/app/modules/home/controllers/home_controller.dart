import 'package:dio/dio.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  final count = 0.obs;

  final _dio = Dio();
  final singleproductdata = {}.obs;

  void fetchMapdata() async {
    try {
      final response = 
         await _dio.get("https://getlearn-admin.getbuildfirst.com/api/course/details/1");
      singleproductdata.value = response.data;
      print(singleproductdata);
    } catch (e) {
      print(e);
    }
  }

  @override
  void onInit() {
    fetchMapdata();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
