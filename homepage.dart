import 'package:flutter/material.dart';
import 'package:flutter_application_1/mydrawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String customerName = '';
  String orderDetails = "Pizza";
  List<String> items1 = ["Burger", "Pizzza"];
  String value1 = '';
  String selectedItem = "Select an Item";

  String totalPrice = "1220";

  void checking() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    //final Size _size = MediaQuery.of(context).size;
    final _formkey1 = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Orders"),
        backgroundColor: Colors.lightBlue,
      ),
      body: Container(
        margin: const EdgeInsets.all(20),
        child: Form(
            key: _formkey1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                  width: 20,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const SizedBox(
                      width: 40,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        icon: Icon(
                          Icons.person_add_alt_outlined,
                          color: Colors.black,
                        ),
                        labelStyle: TextStyle(
                          color: Colors.lightBlue,
                          fontFamily: 'Cardo',
                        ),
                        hintText: "Enter Customer's Name",
                        labelText: "Customer Name",
                        constraints:
                            BoxConstraints(maxHeight: 150, maxWidth: 300),
                      ),
                      onChanged: (value) {
                        customerName = value;
                      },
                    ),
                    const SizedBox(
                      width: 40,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        icon: Icon(
                          Icons.phone_android_sharp,
                          color: Colors.black,
                        ),
                        labelStyle: TextStyle(
                          color: Colors.lightBlue,
                          fontFamily: 'Cardo',
                        ),
                        hintText: "Enter Customer's Phone No",
                        labelText: "Phone Number",
                        constraints:
                            BoxConstraints(maxHeight: 150, maxWidth: 300),
                      ),
                    ),
                    const SizedBox(
                      width: 40,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        icon: Icon(
                          Icons.picture_in_picture_rounded,
                          color: Colors.black87,
                        ),
                        labelStyle: TextStyle(
                          color: Colors.lightBlue,
                          fontFamily: 'Cardo',
                        ),
                        hintText: "Enter Customer's CNIC",
                        labelText: "CNIC",
                        constraints:
                            BoxConstraints(maxHeight: 150, maxWidth: 300),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      width: 40,
                    ),
                    DropdownButton(
                      hint: Text(
                        selectedItem,
                        style: const TextStyle(color: Colors.black87),
                      ),
                      items:
                          items1.map<DropdownMenuItem<String>>((String value3) {
                        return DropdownMenuItem(
                            value: value3, child: Text(value3));
                      }).toList(),
                      onChanged: (value2) {
                        selectedItem = value2.toString();
                      },
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    onPressed: checking,
                    child: const Text(
                      "chawal",
                      style: TextStyle(color: Colors.white),
                    )),
              ], //childern
            )),
      ),
      drawer: Drawer(
        child: ListView(
          children: const [MyDrawer(userName: "admin")],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlue,
        child: const Icon(
          Icons.add,
          size: 20,
        ),
        onPressed: checking,
      ),
    );
  }
}
