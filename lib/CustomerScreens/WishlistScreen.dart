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
      body: Container(
        child: Text("WishList", style: headingTextStyle,),
      ),
    ));
  }
}
