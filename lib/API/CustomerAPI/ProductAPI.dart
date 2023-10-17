import 'dart:convert';

import '../../Models/ProductOverview.dart';
import 'package:http/http.dart' as http;

class ProductAPI {
  //List<ProductOverview>

  Future<List<ProductOverview>> getAllItems() async {
    List<ProductOverview> products = [];
    Uri link = Uri.parse("http://bayriv.somee.com/api/Product");

    var response = await http.get(link);

    if (response.statusCode == 200) {
      Map apiResponseBody = jsonDecode(response.body);
      print(apiResponseBody["status"]);
      print(apiResponseBody["status"].runtimeType);
      if (apiResponseBody["status"]) {
        for (int i = 0; i < apiResponseBody["data"].length; i++) {
          // print(apiResponseBody["data"][i]["itemId"]);
          // print(apiResponseBody["data"][i]["itemId"]);
          // print(apiResponseBody["data"][i]["itemName"]);
          // print(apiResponseBody["data"][i]["itemDescription"]);
          // print(apiResponseBody["data"][i]["unitPrice"]);






          ProductOverview productOverview = ProductOverview(
              apiResponseBody["data"][i]["itemId"],
              apiResponseBody["data"][i]["itemName"],
              apiResponseBody["data"][i]["itemDescription"],
              apiResponseBody["data"][i]["unitPrice"]);

          products.add(productOverview);
        }
      }
    }
    print("----------------------------------------");
    print(products);

    return products;
  }
}
