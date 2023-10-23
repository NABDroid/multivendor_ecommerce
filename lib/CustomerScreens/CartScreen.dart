import 'package:flutter/material.dart';
import 'package:multivendor_ecommerce/CustomWidgets/NavigationDrawerWidget.dart';
import 'package:multivendor_ecommerce/CustomerScreens/ProductDetailsScreen.dart';
import 'package:multivendor_ecommerce/Global.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text("Cart",style: TextStyle(color: Colors.black),),
        iconTheme: IconThemeData(color: Colors.black),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.close))
        ],
      ),
      drawer: NavigationDrawerWidget(),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Text(
                  "Items on cart",
                  style: headingTextStyle,
                ),
              ),
              Container(
                height: MediaQuery.sizeOf(context).height * .50,
                child: ListView.builder(
                    itemCount: 5,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) =>
                                      ProductDetailsScreen(productID: 0)));
                        },
                        child: Card(
                          shape: RoundedRectangleBorder(
                            side: BorderSide(width: 1.0),
                            borderRadius: BorderRadius.circular(7.0),
                          ),
                          elevation: 10,
                          surfaceTintColor: liteCardColor,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.network(
                                    "https://images.unsplash.com/photo-1602080858428-57174f9431cf?auto=format&fit=crop&q=80&w=1551&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                                    fit: BoxFit.cover,
                                    width: 100,
                                    height: 100,
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Text(
                                        "Product Name",
                                        style: descriptionTextStyle,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Text(
                                        "Variation",
                                        style: descriptionTextStyle,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Text(
                                        "Total Price",
                                        style: descriptionTextStyle,
                                      ),
                                    )
                                  ],
                                ),
                                Expanded(child: Container()),
                                IconButton(
                                    onPressed: () {
                                      //ToDO: implement method to remove cart item
                                    },
                                    icon: Icon(Icons.delete_forever))
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  //Todo: implement method to open map and select location
                },
                child: Card(
                  color: Colors.white70,
                  shape: RoundedRectangleBorder(side: BorderSide()),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Location",
                          style: titleTextStyle,
                        ),
                      ),
                      Expanded(child: Container()),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.location_on),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      "Sub-total",
                      style: descriptionTextStyle,
                    ),
                    Expanded(
                      child: Container(),
                    ),
                    Text(
                      "\$000",
                      style: descriptionTextStyle,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      "Delivery Charge",
                      style: descriptionTextStyle,
                    ),
                    Expanded(
                      child: Container(),
                    ),
                    Text(
                      "\$000",
                      style: descriptionTextStyle,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      "Discount",
                      style: descriptionTextStyle,
                    ),
                    Expanded(
                      child: Container(),
                    ),
                    Text(
                      "\$000",
                      style: descriptionTextStyle,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 5,
                width: MediaQuery.sizeOf(context).width,
                child: Container(
                  color: Colors.black,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      "Total",
                      style: titleTextStyle,
                    ),
                    Expanded(
                      child: Container(),
                    ),
                    Text(
                      "\$000",
                      style: titleTextStyle,
                    )
                  ],
                ),
              ),
              SizedBox(height: 20,),

              Center(
                child: SizedBox(
                  width: MediaQuery.sizeOf(context).width*.5,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        backgroundColor: primaryButtonColor,
                      ),
                      onPressed: () {},
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 16),
                        child: Text(
                          "Confirm Purchase",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black
                          ),
                        ),
                      )),
                ),
              ),

            ],
          ),
        ),
      ),
    ));
  }
}
