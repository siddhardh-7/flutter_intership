import 'package:flutter/material.dart';

import '../utilities/constants.dart';
import '../utilities/dimensions.dart';
import 'home.dart';

class History extends StatefulWidget {
  static String id = 'histroy';
  const History({Key? key}) : super(key: key);

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
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
                margin: EdgeInsets.symmetric(
                    horizontal: Dimensions.padding20,
                    vertical: Dimensions.padding20 / 2),
                padding: EdgeInsets.all(Dimensions.padding20 / 2),
                width: Dimensions.screenWidth - (Dimensions.padding20 * 2),
                height: Dimensions.height10 * 15,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.circular(Dimensions.borderRadius12),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(5, 5),
                      blurRadius: 5,
                      color: kAppColor,
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: Dimensions.historyPicWidth,
                      child: ClipRRect(
                          borderRadius:
                              BorderRadius.circular((Dimensions.borderRadius5)),
                          child:
                              Image.asset('assets/images/homepage_pic.jpeg')),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Pipe Count',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '38',
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text('11-05-2022'),
                        Text('02:36'),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(
                          Icons.share_outlined,
                          color: kAppColor,
                          size: 32,
                        ),
                        Icon(
                          Icons.delete_outline_rounded,
                          color: kAppColor,
                          size: 32,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal: Dimensions.padding20,
                    vertical: Dimensions.padding20 / 2),
                padding: EdgeInsets.all(Dimensions.padding20 / 2),
                width: Dimensions.screenWidth - (Dimensions.padding20 * 2),
                height: Dimensions.height10 * 15,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.circular(Dimensions.borderRadius12),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(5, 5),
                      blurRadius: 5,
                      color: kAppColor,
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: Dimensions.historyPicWidth,
                      child: ClipRRect(
                          borderRadius:
                              BorderRadius.circular((Dimensions.borderRadius5)),
                          child:
                              Image.asset('assets/images/homepage_pic.jpeg')),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Pipe Count',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '38',
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text('11-05-2022'),
                        Text('02:36'),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(
                          Icons.share_outlined,
                          color: kAppColor,
                          size: 32,
                        ),
                        Icon(
                          Icons.delete_outline_rounded,
                          color: kAppColor,
                          size: 32,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal: Dimensions.padding20,
                    vertical: Dimensions.padding20 / 2),
                padding: EdgeInsets.all(Dimensions.padding20 / 2),
                width: Dimensions.screenWidth - (Dimensions.padding20 * 2),
                height: Dimensions.height10 * 15,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.circular(Dimensions.borderRadius12),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(5, 5),
                      blurRadius: 5,
                      color: kAppColor,
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: Dimensions.historyPicWidth,
                      child: ClipRRect(
                          borderRadius:
                              BorderRadius.circular((Dimensions.borderRadius5)),
                          child:
                              Image.asset('assets/images/homepage_pic.jpeg')),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Pipe Count',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '38',
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text('11-05-2022'),
                        Text('02:36'),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(
                          Icons.share_outlined,
                          color: kAppColor,
                          size: 32,
                        ),
                        Icon(
                          Icons.delete_outline_rounded,
                          color: kAppColor,
                          size: 32,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal: Dimensions.padding20,
                    vertical: Dimensions.padding20 / 2),
                padding: EdgeInsets.all(Dimensions.padding20 / 2),
                width: Dimensions.screenWidth - (Dimensions.padding20 * 2),
                height: Dimensions.height10 * 15,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.circular(Dimensions.borderRadius12),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(5, 5),
                      blurRadius: 5,
                      color: kAppColor,
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: Dimensions.historyPicWidth,
                      child: ClipRRect(
                          borderRadius:
                              BorderRadius.circular((Dimensions.borderRadius5)),
                          child:
                              Image.asset('assets/images/homepage_pic.jpeg')),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Pipe Count',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '38',
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text('11-05-2022'),
                        Text('02:36'),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(
                          Icons.share_outlined,
                          color: kAppColor,
                          size: 32,
                        ),
                        Icon(
                          Icons.delete_outline_rounded,
                          color: kAppColor,
                          size: 32,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal: Dimensions.padding20,
                    vertical: Dimensions.padding20 / 2),
                padding: EdgeInsets.all(Dimensions.padding20 / 2),
                width: Dimensions.screenWidth - (Dimensions.padding20 * 2),
                height: Dimensions.height10 * 15,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.circular(Dimensions.borderRadius12),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(5, 5),
                      blurRadius: 5,
                      color: kAppColor,
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: Dimensions.historyPicWidth,
                      child: ClipRRect(
                          borderRadius:
                              BorderRadius.circular((Dimensions.borderRadius5)),
                          child:
                              Image.asset('assets/images/homepage_pic.jpeg')),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Pipe Count',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '38',
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text('11-05-2022'),
                        Text('02:36'),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(
                          Icons.share_outlined,
                          color: kAppColor,
                          size: 32,
                        ),
                        Icon(
                          Icons.delete_outline_rounded,
                          color: kAppColor,
                          size: 32,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal: Dimensions.padding20,
                    vertical: Dimensions.padding20 / 2),
                padding: EdgeInsets.all(Dimensions.padding20 / 2),
                width: Dimensions.screenWidth - (Dimensions.padding20 * 2),
                height: Dimensions.height10 * 15,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.circular(Dimensions.borderRadius12),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(5, 5),
                      blurRadius: 5,
                      color: kAppColor,
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: Dimensions.historyPicWidth,
                      child: ClipRRect(
                          borderRadius:
                              BorderRadius.circular((Dimensions.borderRadius5)),
                          child:
                              Image.asset('assets/images/homepage_pic.jpeg')),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Pipe Count',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '38',
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text('11-05-2022'),
                        Text('02:36'),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(
                          Icons.share_outlined,
                          color: kAppColor,
                          size: 32,
                        ),
                        Icon(
                          Icons.delete_outline_rounded,
                          color: kAppColor,
                          size: 32,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
