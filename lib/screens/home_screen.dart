import 'package:flutter/material.dart';

import '../utilities/constants.dart';
import '../utilities/dimensions.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String dropdownvalue = 'Pipe Counter';

  // List of items in our dropdown menu
  var items = [
    'Pipe Counter',
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.all(Dimensions.padding20),
              child: ClipRRect(
                borderRadius:
                    BorderRadius.circular(2 * Dimensions.borderRadius5),
                child: Image.asset("assets/images/homepage_pic.jpeg"),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(Dimensions.padding20),
              child: DropdownButtonFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: kAppColor),
                    borderRadius: BorderRadius.all(
                      Radius.circular(Dimensions.borderRadius12),
                    ),
                  ),
                ),
                value: dropdownvalue,
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownvalue = newValue!;
                  });
                },
                items: items.map((String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Text(items),
                  );
                }).toList(),
              ),
            ),
            SizedBox(
              height: 2 * Dimensions.height10,
            ),
            Text(
              "Select an image to count",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 2 * Dimensions.height10,
              ),
            ),
            SizedBox(
              height: 2 * Dimensions.height10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.all(Dimensions.height10),
                      height: Dimensions.homeBoxHeight,
                      width: (Dimensions.screenWidth -
                              (8 * Dimensions.padding20)) /
                          2,
                      decoration: BoxDecoration(
                        color: kAppColor,
                        borderRadius:
                            BorderRadius.circular(Dimensions.borderRadius5),
                        boxShadow: const [
                          BoxShadow(
                            offset: Offset(5, 5),
                            blurRadius: 7.0,
                          ),
                        ],
                      ),
                      child: Icon(
                        Icons.photo,
                        color: Colors.white,
                        size: Dimensions.homeBoxHeight -
                            (6 * Dimensions.height10),
                      ),
                    ),
                    SizedBox(
                      height: Dimensions.height10 * 2,
                    ),
                    Text(
                      'User Exiting Image',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(Dimensions.height10),
                      height: Dimensions.homeBoxHeight,
                      width: (Dimensions.screenWidth -
                              (8 * Dimensions.padding20)) /
                          2,
                      decoration: BoxDecoration(
                        color: kAppColor,
                        borderRadius:
                            BorderRadius.circular(Dimensions.borderRadius5),
                        boxShadow: const [
                          BoxShadow(
                            offset: Offset(5, 5),
                            blurRadius: 7.0,
                          ),
                        ],
                      ),
                      child: Icon(
                        Icons.camera_alt,
                        color: Colors.white,
                        size: Dimensions.homeBoxHeight -
                            (6 * Dimensions.height10),
                      ),
                    ),
                    SizedBox(
                      height: Dimensions.height10 * 2,
                    ),
                    Text(
                      'Take a new Photo',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
