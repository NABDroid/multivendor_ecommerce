import 'package:flutter/material.dart';
import 'package:multivendor_ecommerce/Global.dart';

class ProductDetailsScreen extends StatefulWidget {
  ProductDetailsScreen({Key? key, required this.productID}) : super(key: key);
  int productID;

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
                color: Colors.white,
                child: Image.asset(
                  "assets/Product-Images/Asus-Zenbook-duo-ux482.jpg",
                  height: 200,
                )),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                      onTap: () {},
                      child: Image.asset(
                          "assets/Product-Images/Asus-Zenbook-duo-ux482.jpg",
                          height: 70)),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                      onTap: () {},
                      child: Image.asset(
                          "assets/Product-Images/Asus-Zenbook-duo-ux482.jpg",
                          height: 70)),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                      onTap: () {},
                      child: Image.asset(
                          "assets/Product-Images/Asus-Zenbook-duo-ux482.jpg",
                          height: 70)),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                      onTap: () {},
                      child: Image.asset(
                          "assets/Product-Images/Asus-Zenbook-duo-ux482.jpg",
                          height: 70)),
                ),
              ],
            ),
            Text(
              "Product 1 title",
              style: titleTextStyle,
            ),
            Text(
              "Product 1 description Product 1 description Product 1 description Product 1 description Product 1 description Product 1 description Product 1 description Product 1 description Product 1 description Product 1 description Product 1 description Product 1 description Product 1 description Product 1 description Product 1 description Product 1 description Product 1 description Product 1 description Product 1 description Product 1 description Product 1 description Product 1 description Product 1 description ",
              style: descriptionTextStyle,
            ),
          ],
        ),
      ),
    );
  }
}
