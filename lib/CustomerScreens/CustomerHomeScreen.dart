import 'package:carousel_slider/carousel_slider.dart';
import 'package:multivendor_ecommerce/CustomWidgets/ItemList.dart';
import 'package:multivendor_ecommerce/CustomWidgets/NavigationDrawerWidget.dart';
import 'package:multivendor_ecommerce/CustomerScreens/CartScreen.dart';
import 'package:multivendor_ecommerce/CustomerScreens/CustomerNotificationScreen.dart';
import 'package:multivendor_ecommerce/CustomerScreens/CustomerProfileScreen.dart';
import 'package:multivendor_ecommerce/CustomerScreens/ProductDetailsScreen.dart';
import 'package:multivendor_ecommerce/CustomerScreens/SearchScreen.dart';
import 'package:multivendor_ecommerce/CustomerScreens/WishlistScreen.dart';
import 'package:multivendor_ecommerce/Global.dart';
import 'package:flutter/material.dart';
import 'package:multivendor_ecommerce/models/models.dart';

// ignore_for_file: prefer_const_constructors

class CustomerHomeScreen extends StatefulWidget {
  const CustomerHomeScreen({super.key});

  @override
  State<CustomerHomeScreen> createState() => _CustomerHomePageState();
}

class _CustomerHomePageState extends State<CustomerHomeScreen> {
  int currentIndex = 0;

  final screens = [
    HomePage(),
    SearchScreen(),
    CustomerProfileScreen(),
    CustomerNotificationScreen(),
    WishlistScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (_)=>CartScreen()));
              },
              icon: Image.asset("assets/icons/cart_32px.png")),
        ],
      ),
      drawer: NavigationDrawerWidget(),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: currentIndex,
          items: [
            BottomNavigationBarItem(
                icon: Image.asset("assets/icons/home_32px.png"), label: ""),
            BottomNavigationBarItem(
                icon: Image.asset("assets/icons/search_32px.png"), label: ""),
            BottomNavigationBarItem(
                icon: Image.asset("assets/icons/user-icon_32px.png"),
                label: ""),
            BottomNavigationBarItem(
                icon: Image.asset("assets/icons/bell_32px.png"), label: ""),
            BottomNavigationBarItem(
                icon: Image.asset("assets/icons/archive-box_32px.png"),
                label: ""),
          ],
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          }),
      body: screens[currentIndex]
    ));
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Trending Products",
                style: headingTextStyle,
              ),
              const SizedBox(
                height: 10,
              ),

              CarouselSlider(
                options: CarouselOptions(
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 5),
                    enlargeCenterPage: true,
                    enlargeStrategy: CenterPageEnlargeStrategy.height),
                items: Trending.trending_items
                    .map((trending_products) =>
                    HeroCarouselCard(trending_products: trending_products))
                    .toList(),
              ),

              const SizedBox(
                height: 15,
              ),
              Text(
                "For You",
                style: headingTextStyle,
              ),
              const SizedBox(
                height: 10,
              ),

              CarouselSlider(
                options: CarouselOptions(
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 3),
                    enlargeCenterPage: true,
                    enlargeStrategy: CenterPageEnlargeStrategy.height),
                items: Personalised.personalised_items
                    .map((personalised_products) => HeroCarouselCard2(
                    personalised_products: personalised_products))
                    .toList(),
              ),

              const SizedBox(
                height: 15,
              ),
              Text(
                "Browse",
                style: headingTextStyle,
              ),
              const SizedBox(
                height: 10,
              ),

              // browse section
              ItemList(categoryID: 0, subCategoryID: 0, productID: 0, userID: 0,),
            ],
          ),
        ),
      ),
    ));
  }
}


class HeroCarouselCard extends StatelessWidget {
  final Trending trending_products;

  const HeroCarouselCard({
    required this.trending_products,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5.0),
      child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
          child: Stack(
            children: <Widget>[
              Image.network(trending_products.imgUrl,
                  fit: BoxFit.cover, width: 1000.0),
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
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  child: Text(
                    trending_products.name,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}

class HeroCarouselCard2 extends StatelessWidget {
  final Personalised personalised_products;

  const HeroCarouselCard2({
    required this.personalised_products,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5.0),
      child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
          child: Stack(
            children: <Widget>[
              Image.network(personalised_products.imgUrl,
                  fit: BoxFit.cover, width: 1000.0),
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
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  child: Text(
                    personalised_products.name,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
