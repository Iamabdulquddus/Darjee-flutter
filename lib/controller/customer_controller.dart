import 'package:get/get.dart';

import '../connection/connect.dart';


class CustomerController extends GetxController{


  customerDetails() async {
    var user = await Connect.fetchDetails("SELECT * FROM customer");
    for(var item in user){
      print("connection okay ${item}");
    }
  }


}