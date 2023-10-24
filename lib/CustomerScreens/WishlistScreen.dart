import 'package:flutter/material.dart';
import 'package:multivendor_ecommerce/Global.dart';

class WishlistScreen extends StatefulWidget {
  const WishlistScreen({super.key});

  @override
  State<WishlistScreen> createState() => _WishlistScreenState();
}

class _WishlistScreenState extends State<WishlistScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Wishlist",
                  style: headingTextStyle,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("You have 0 items in wishlist"),
              ),
              GridView.builder(
                //Todo: fix overflow problem
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 2
                  ),
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Card(
                      elevation: 5,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Image.network(
                              "https://images.unsplash.com/photo-1602080858428-57174f9431cf?auto=format&fit=crop&q=80&w=1551&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Product name"),
                                    Text("Stock")
                                  ],
                                ),
                                Text("4.2/5"),
                                Text("\$428"),
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  })
            ],
          ),
        ),
      )
    ));
  }
}
