import 'package:flutter/material.dart';
import 'package:multivendor_ecommerce/API/CustomerAPI/ProductAPI.dart';

import '../CustomerScreens/ProductDetailsScreen.dart';
import '../Global.dart';

class ItemList extends StatefulWidget {
  ItemList(
      {Key? key,
      required this.categoryID,
      required this.subCategoryID,
      required this.productID,
      required this.userID})
      : super(key: key);
  int categoryID, subCategoryID, productID, userID;

  @override
  State<ItemList> createState() => _ItemListState();
}

class _ItemListState extends State<ItemList> {
  ProductAPI api = ProductAPI();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: api.getAllItems(),
        builder: (context, snapshot) {
          if(snapshot.connectionState == ConnectionState.done){
            if(snapshot.hasData){
              return ListView.builder(
                  itemCount: snapshot.data!.length,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProductDetailsScreen(productID: 0)));
                      },
                      child: Card(
                        elevation: 5.0,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image(
                                image: AssetImage(
                                    "assets/Product-Images/hp-spectre-x360.jpg"),
                                width: 210,
                              ),
                              Flexible(
                                child: SizedBox(
                                  width: 270,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        snapshot.data![index].itemName,
                                        style: titleTextStyle,
                                      ),
                                      const SizedBox(
                                        height: 3,
                                      ),
                                      Text(
                                        snapshot.data![index].itemDesctiption,
                                        style: descriptionTextStyle,
                                        softWrap: true,
                                      ),
                                      Text(
                                        "\$${snapshot.data![index].unitPrice}",
                                        style: descriptionTextStyle,
                                        softWrap: true,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  });
            } else {
              return Text("No data found...");
            }




          } else{
            return Text("Loading...");
          }


    });

    // return ListView.builder(
    //     itemCount: 3,
    //     physics: NeverScrollableScrollPhysics(),
    //     shrinkWrap: true,
    //     itemBuilder: (context, index) {
    //       return GestureDetector(
    //         onTap: (){
    //           Navigator.push(
    //               context,
    //               MaterialPageRoute(
    //                   builder: (context) => ProductDetailsScreen(productID: 0)));
    //         },
    //         child: Card(
    //           elevation: 5.0,
    //           child: Padding(
    //             padding: const EdgeInsets.all(8.0),
    //             child: Row(
    //               crossAxisAlignment: CrossAxisAlignment.start,
    //               children: [
    //                 Image(
    //                   image: AssetImage(
    //                       "assets/Product-Images/hp-spectre-x360.jpg"),
    //                   width: 210,
    //                 ),
    //                 Flexible(
    //                   child: SizedBox(
    //                     width: 270,
    //                     child: Column(
    //                       crossAxisAlignment: CrossAxisAlignment.start,
    //                       children: [
    //                         Text(
    //                           "HP Spectre X360",
    //                           style: titleTextStyle,
    //                         ),
    //                         const SizedBox(
    //                           height: 3,
    //                         ),
    //                         Text(
    //                           "Intel® Core™ i5-1335U (up to 4.6 GHz, 12 MB L3 cache, 10 cores, 12 threads)",
    //                           style: descriptionTextStyle,
    //                           softWrap: true,
    //                         ),
    //                         Text(
    //                           "Intel® Iris® Xe Graphics + 16 GB(Onboard)",
    //                           style: descriptionTextStyle,
    //                           softWrap: true,
    //                         ),
    //                         Text(
    //                           "512 GB PCIe® NVMe™ TLC M.2 SSD (4x4 SSD)",
    //                           style: descriptionTextStyle,
    //                           softWrap: true,
    //                         ),
    //                         const SizedBox(
    //                           height: 3,
    //                         ),
    //                         Row(
    //                           mainAxisAlignment: MainAxisAlignment.start,
    //                           children: [
    //                             Image.asset(
    //                                 "assets/icons/stars/star_16px.png"),
    //                             Image.asset(
    //                                 "assets/icons/stars/star_16px.png"),
    //                             Image.asset(
    //                                 "assets/icons/stars/star_16px.png"),
    //                             Image.asset(
    //                                 "assets/icons/stars/star_outline_16px.png"),
    //                             Image.asset(
    //                                 "assets/icons/stars/star_outline_16px.png"),
    //                           ],
    //                         ),
    //                         const SizedBox(
    //                           height: 3,
    //                         ),
    //                         Text(
    //                           "\$1390",
    //                           style: descriptionTextStyle,
    //                           softWrap: true,
    //                         ),
    //                       ],
    //                     ),
    //                   ),
    //                 ),
    //               ],
    //             ),
    //           ),
    //         ),
    //       );
    //     });
  }
}
