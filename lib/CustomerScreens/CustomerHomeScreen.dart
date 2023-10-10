import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;

class CustomerHomeScreen extends StatefulWidget {
  const CustomerHomeScreen({Key? key}) : super(key: key);

  @override
  State<CustomerHomeScreen> createState() => _CustomerHomeScreenState();
}

class _CustomerHomeScreenState extends State<CustomerHomeScreen> {
  String apiResponseMessage = "";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Customer Home"),
        ),
        body: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                callAPI();
              },
              child: Text("CallAPI"),
            ),
            Text(apiResponseMessage)
          ],
        ),
      ),
    );
  }

  Future<void> callAPI() async {
    var response = await http
        .get(Uri.parse("https://jsonplaceholder.typicode.com/todos/1"));

    if (response.statusCode == 200) {
      apiResponseMessage = response.body.toString();
      setState(() {});
    } else {
      apiResponseMessage = "Error";
      setState(() {});
    }
    Fluttertoast.showToast(
        msg: response.statusCode.toString(),
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
  }
}
