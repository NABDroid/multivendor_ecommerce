import 'package:flutter/material.dart';
import 'package:multivendor_ecommerce/CustomerScreens/ProductDetailsScreen.dart';
import 'package:multivendor_ecommerce/Global.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController searchController = TextEditingController();

  List<DropdownOptions> optionsList = [
    DropdownOptions("Sort by", 0),
    DropdownOptions("Best Sales", 1),
    DropdownOptions("Price: Low to High", 2),
    DropdownOptions("Price: High to Low", 3),
    DropdownOptions("Rating", 4),
    DropdownOptions("Latest Items", 5),
  ];

  late DropdownOptions? selectedDropdownOption;

  @override
  void initState() {
    selectedDropdownOption = optionsList[0];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Search an item",
                style: headingTextStyle,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SearchBar(
                controller: searchController,
                leading: Icon(Icons.search),
                hintText: "search...",
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: DropdownButton<DropdownOptions>(
                  value: selectedDropdownOption,
                  items: optionsList.map((DropdownOptions option){
                    return DropdownMenuItem<DropdownOptions>(
                      value: option,
                      child: Text(option.optionName),);
                  }).toList(),
                  onChanged: (selectedOption){
                    selectedDropdownOption = selectedOption;
                    setState(() {

                    });
                  }),
            ),
            SizedBox(
              height: 10,
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
                  return GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (_)=> ProductDetailsScreen(productID: 0)));
                    },
                    child: Card(
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
                                Text("Product name"),
                                Text("4.2/5"),
                                Text("\$428"),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                })
          ],
        ),
      ),
    )));
  }
}

class DropdownOptions{

  late String optionName;
  late int optionID;

  DropdownOptions(this.optionName, this.optionID);

}
