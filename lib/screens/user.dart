import 'package:flutter/material.dart';
import 'package:flutter_intership/utilities/dimensions.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../utilities/constants.dart';
import 'home.dart';

class User extends StatefulWidget {
  const User({Key? key}) : super(key: key);

  @override
  State<User> createState() => _UserState();
}

class _UserState extends State<User> {
  final user = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: Dimensions.width10 * 5,
              height: Dimensions.width10 * 5,
              margin: EdgeInsets.only(
                  left: Dimensions.padding20, top: Dimensions.padding20 / 2),
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.circular(Dimensions.borderRadius5 * 10),
                color: kAppColor,
              ),
              child: IconButton(
                icon: const Icon(
                  Icons.west_rounded,
                ),
                iconSize: Dimensions.width10 * 2.5,
                onPressed: () {
                  Navigator.popAndPushNamed(context, Home.id);
                },
              ),
            ),
            Container(
              margin: EdgeInsets.all(Dimensions.padding20),
              padding: EdgeInsets.all(Dimensions.padding20 / 2),
              width: Dimensions.screenWidth - (Dimensions.padding20 * 2),
              height: 150,
              decoration: BoxDecoration(
                color: kAppColor,
                borderRadius: BorderRadius.circular(Dimensions.borderRadius12),
                // image: DecorationImage(
                //   image: AssetImage("assets/images/user.jpg"),
                //   fit: BoxFit.contain,
                // ),
              ),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius:
                        BorderRadius.circular(Dimensions.borderRadius5),
                    child: Image(
                      image: AssetImage("assets/images/user.jpg"),
                    ),
                  ),
                  SizedBox(
                    width: 2 * Dimensions.width10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Fname Lname',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        ),
                      ),
                      Text(
                        'email@gmail.com',
                        style: TextStyle(
                          fontSize: 15.0,
                        ),
                      ),
                      Text(
                        '+91 9876543210',
                        style: TextStyle(
                          fontSize: 15.0,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: Dimensions.padding20),
              child: ListTile(
                leading: Icon(
                  Icons.home_rounded,
                  color: Colors.black,
                ),
                title: Text('Change Profile'),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: Dimensions.padding20),
              child: ListTile(
                leading: Icon(
                  Icons.delete,
                  color: Colors.black,
                ),
                title: Text('Clear Histroy'),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: Dimensions.padding20),
              child: ListTile(
                leading: Icon(
                  Icons.password_rounded,
                  color: Colors.black,
                ),
                title: Text('Change Password'),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: Dimensions.padding20),
              child: ListTile(
                leading: Icon(
                  Icons.email_outlined,
                  color: Colors.black,
                ),
                title: Text('Contact Us'),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: Dimensions.padding20),
              child: ListTile(
                leading: Icon(
                  Icons.web,
                  color: Colors.black,
                ),
                title: Text('Visit Us website'),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: Dimensions.padding20),
              child: MaterialButton(
                padding: EdgeInsets.symmetric(
                    horizontal: Dimensions.padding20,
                    vertical: Dimensions.padding20 / 2),
                color: kAppColor,
                onPressed: () {
                  FirebaseAuth.instance.signOut();
                },
                child: Text(
                  'Sign Out',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
