import 'package:multivendor_ecommerce/Global.dart';
import 'package:flutter/material.dart';

// ignore_for_file: prefer_const_constructors

class CustomerHomeScreen extends StatefulWidget {
  const CustomerHomeScreen({super.key});

  @override
  State<CustomerHomeScreen> createState() => _CustomerHomePageState();
}

class _CustomerHomePageState extends State<CustomerHomeScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: true,
          appBar: AppBar(
            // backgroundColor: Colors.white70,
            leading: IconButton(
              color: darkIconColor,
              onPressed: () {

              },
              icon: Image.asset(
                  "assets/icons/menus_32px.png"), //change to Hamburger Icon
            ),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: Image.asset("assets/icons/cart_32px.png")),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
              currentIndex: currentIndex,

              items: [
                BottomNavigationBarItem(
                    icon: Image.asset("assets/icons/home_32px.png"), label: ""),
                BottomNavigationBarItem(
                    icon: Image.asset("assets/icons/search_32px.png"),
                    label: ""),
                BottomNavigationBarItem(
                    icon: Image.asset("assets/icons/user-icon_32px.png"),
                    label: ""),
                BottomNavigationBarItem(
                    icon: Image.asset("assets/icons/bell_32px.png"),
                    label: ""),
                BottomNavigationBarItem(
                    icon: Image.asset("assets/icons/archive-box_32px.png"),
                    label: ""),
              ],
              onTap: (index) {
                currentIndex = index;
                setState(() {});
              }),


          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Trending Products",style: headingTextStyle,),
                  const SizedBox(height: 10,),

                  //later change to carousel
                  Stack(
                    children: [
                      Image(
                        image: AssetImage("assets/Product-Images/notebook-xps-15-9530-t-black-gallery-1.jpg"),
                        width: double.infinity,
                        height: 210,
                      ),
                      Container(
                          // color: Colors.red,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 170),
                            child: Card(
                                // color: Colors.yellow,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Dell XPS 15 2023", style: titleTextStyle,),
                                      Text("\$1499", style: descriptionTextStyle,),
                                    ],
                                  )
                                )),
                          ))
                    ],
                  ),
                  const SizedBox(height: 15,),
                  Text("For You",style: headingTextStyle,),
                  const SizedBox(height: 10,),

                  Stack(
                    children: [
                      Image(
                        image: AssetImage("assets/Product-Images/mba15-midnight.jpg"),
                        width: double.infinity,
                        height: 210,
                      ),
                      Container(
                        // color: Colors.red,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 170),
                            child: Card(
                              // color: Colors.yellow,
                                child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("MacBook M2 2023", style: titleTextStyle,),
                                        Text("\$1999", style: descriptionTextStyle,),
                                      ],
                                    )
                                )),
                          ))
                    ],
                  ),

                  const SizedBox(height: 15,),
                  Text("Browse",style: headingTextStyle,),
                  const SizedBox(height: 10,),

                  // browse section
                  SizedBox(
                    height: 450,
                    child: ListView.builder(itemCount: 3, itemBuilder: (context,index){
                      return Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image(
                            image: AssetImage("assets/Product-Images/hp-spectre-x360.jpg"),
                            width: 210,
                          ),
                          Flexible(
                            child: SizedBox(
                              width: 270,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,

                                children: [
                                  Text("HP Spectre X360", style: titleTextStyle,),
                                  const SizedBox(height: 3,),
                                  Text("Intel® Core™ i5-1335U (up to 4.6 GHz, 12 MB L3 cache, 10 cores, 12 threads)", style: descriptionTextStyle,softWrap: true,),
                                  Text("Intel® Iris® Xe Graphics + 16 GB(Onboard)", style: descriptionTextStyle,softWrap: true,),
                                  Text("512 GB PCIe® NVMe™ TLC M.2 SSD (4x4 SSD)", style: descriptionTextStyle,softWrap: true,),
                                  const SizedBox(height: 3,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Image.asset("assets/icons/stars/star_16px.png"),
                                      Image.asset("assets/icons/stars/star_16px.png"),
                                      Image.asset("assets/icons/stars/star_16px.png"),
                                      Image.asset("assets/icons/stars/star_outline_16px.png"),
                                      Image.asset("assets/icons/stars/star_outline_16px.png"),
                                    ],
                                  ),
                                  const SizedBox(height: 3,),
                                  Text("\$1390", style: descriptionTextStyle,softWrap: true,),
                                ],
                              ),
                            ),
                          ),
                        ],
                      );
                    }),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
