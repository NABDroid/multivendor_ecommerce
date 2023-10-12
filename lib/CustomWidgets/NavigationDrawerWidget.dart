import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:multivendor_ecommerce/CustomerScreens/SignUp.dart';
import 'package:multivendor_ecommerce/Global.dart';
import 'package:multivendor_ecommerce/GlobalScreens/LoginScreen.dart';

class NavigationDrawerWidget extends StatelessWidget {
  const NavigationDrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: MediaQuery.of(context).size.width * 0.75,
      child: Column(
        children: [
          Stack(
            children: <Widget>[
              Image.asset(
                "assets/avatar.png",
                fit: BoxFit.cover,
              ),
              Positioned(
                bottom: 0.0,
                left: 0.0,
                right: 0.0,
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(200, 0, 0, 0),
                        Color.fromARGB(0, 0, 0, 0)
                      ],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                    ),
                  ),
                  padding:
                      const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  child: Text(
                    "Customer Name",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8,),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
            child: Card(
              color: const Color(0xFF1A3938),
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Categories",style: menuItemTextStyle,),
                    const Icon(Icons.category,color: Colors.white,)
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
            child: Card(
              color: const Color(0xFF1A3938),
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Order Status",style: menuItemTextStyle,),
                    const Icon(Icons.watch_later_rounded,color: Colors.white)
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
            child: Card(
              color: const Color(0xFF1A3938),
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Inbox",style: menuItemTextStyle,),
                    const Icon(Icons.message,color: Colors.white)
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
            child: Card(
              color: const Color(0xFF1A3938),
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Customer Support",style: menuItemTextStyle,),
                    const Icon(Icons.headset_mic,color: Colors.white)
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
            child: Card(
              color: const Color(0xFF1A3938),
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Settings",style: menuItemTextStyle,),
                    const Icon(Icons.settings,color: Colors.white,)
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Icon(Icons.login),
                  ),
                  TextButton(onPressed: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                  }, child: Text("Log In / Register", style: TextStyle(fontSize: 18,color: Colors.black)),),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
