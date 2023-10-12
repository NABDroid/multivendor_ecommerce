import 'package:flutter/material.dart';
import 'package:multivendor_ecommerce/CustomWidgets/ItemList.dart';
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
      appBar: AppBar(
        title: Text(
          "Product details",
          style: headingTextStyle,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
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
              SizedBox(height: 10,),
              Text(
                "Product 1 description Product 1 description Product 1 description Product 1 description Product 1 description Product 1 description Product 1 description Product 1 description Product 1 description Product 1 description Product 1 description Product 1 description Product 1 description Product 1 description Product 1 description Product 1 description Product 1 description Product 1 description Product 1 description Product 1 description Product 1 description Product 1 description Product 1 description ",
                style: descriptionTextStyle,
              ),
              SizedBox(height: 10,),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black), borderRadius: BorderRadius.circular(10)),
                // color: Colors.red,
                padding: EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Select variation",
                      style: titleTextStyle,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Card(
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Variation 1",
                                  style: descriptionTextStyle,
                                ),
                              ),
                            ),
                            Card(
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Variation 2",
                                  style: descriptionTextStyle,
                                ),
                              ),
                            ),
                            Card(
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Variation 3",
                                  style: descriptionTextStyle,
                                ),
                              ),
                            ),
                            Card(
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Variation 4",
                                  style: descriptionTextStyle,
                                ),
                              ),
                            ),
                            Card(
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Variation 5",
                                  style: descriptionTextStyle,
                                ),
                              ),
                            ),
                            Card(
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Variation 6",
                                  style: descriptionTextStyle,
                                ),
                              ),
                            ),

                          ],
                        ),
                      ),
                    ),

                  ],
                ),
              ),
              GestureDetector(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(child: Text("Rating and review", style: titleTextStyle,)),
                          Icon(Icons.arrow_forward_ios),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              ListView.builder(
                itemCount: 2,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 5,
                    surfaceTintColor: liteCardColor,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Expanded(child: Text("User Name", style: titleTextStyle,)),
                              Text("4")
                            ],
                          ),
                          SizedBox(height: 4,),
                          Text("Very good product")
                        ],
                      ),
                    )
                  );
                },
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(child: Text("Quantity", style: titleTextStyle,)),
                          Text("10", style: descriptionTextStyle,),
                        ],
                      ),
                      SizedBox(height: 4,),
                      Row(
                        children: [
                          Expanded(child: Text("Price", style: titleTextStyle,)),
                          Text("1000", style: descriptionTextStyle,),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(child: ElevatedButton(onPressed: (){}, style: ButtonStyle(backgroundColor: MaterialStateProperty.resolveWith((states) => secondaryButtonColor)), child: Text("Buy Now", style: titleTextStyle,))),
                          SizedBox(width: 10,),
                          Expanded(child: ElevatedButton(onPressed: (){}, style: ButtonStyle(backgroundColor: MaterialStateProperty.resolveWith((states) => primaryButtonColor)), child: Text("Add to Cart", style: titleTextStyle,))),

                        ],
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Similar items", style: headingTextStyle,),
              ),
              ItemList(categoryID: 0, subCategoryID: 0, productID: widget.productID, userID: 0,),
            ],
          ),
        ),
      ),
    );
  }
}

