import 'package:flutter/material.dart';
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
          const SizedBox(height: 30,),
          CircleAvatar(
            backgroundImage: AssetImage("assets/avatar.png"),
            radius: 100,
          ),
          const SizedBox(height: 10,),
          Text("Profile Name", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          const SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.location_on),
              Text("Address", style: descriptionTextStyle,)
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
