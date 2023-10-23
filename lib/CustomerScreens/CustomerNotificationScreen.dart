import 'package:flutter/material.dart';
import 'package:multivendor_ecommerce/Global.dart';

class CustomerNotificationScreen extends StatefulWidget {
  const CustomerNotificationScreen({super.key});

  @override
  State<CustomerNotificationScreen> createState() => _CustomerNotificationScreenState();
}

class _CustomerNotificationScreenState extends State<CustomerNotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Container(
        child: Text("Notification", style: headingTextStyle,),
      ),
    ));
  }
}
