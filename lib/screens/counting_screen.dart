import 'package:flutter/material.dart';

import '../utilities/constants.dart';
import '../utilities/dimensions.dart';
import 'history.dart';

enum ButtonState { init, loading, done }

class CountingScreen extends StatefulWidget {
  static String id = 'counting_screen';
  const CountingScreen({Key? key}) : super(key: key);
  @override
  State<CountingScreen> createState() => _CountingScreenState();
}

class _CountingScreenState extends State<CountingScreen> {
  ButtonState state = ButtonState.init;
  // last state
  Widget countAndShare() => Container(
        margin: EdgeInsets.all(Dimensions.padding20),
        padding: EdgeInsets.all(Dimensions.padding20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 50,
              width: 220,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular((Dimensions.borderRadius5)),
                color: kAppColor,
              ),
              child: const Center(
                child: Text(
                  '4',
                  style: TextStyle(fontSize: 32),
                ),
              ),
            ),
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular((Dimensions.borderRadius5)),
                color: kAppColor,
              ),
              child: Icon(
                Icons.share,
              ),
            ),
          ],
        ),
      );
  Widget progression(bool isdone) {
    return Container(
      width: double.infinity,
      child: isdone
          ? countAndShare()
          : Center(
              child: CircularProgressIndicator(
                color: kAppColor,
              ),
            ),
    );
  }

  @override
  Widget build(BuildContext context) {
    bool ischecked = state == ButtonState.init;
    bool isdone = state == ButtonState.done;

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
                  Navigator.pop(context);
                },
              ),
            ),
            Container(
              margin: EdgeInsets.all(Dimensions.padding20),
              width: Dimensions.screenWidth - (Dimensions.padding20 * 2),
              height: Dimensions.screenWidth - (Dimensions.padding20 * 2),
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage('assets/images/homepage_pic.jpg'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(Dimensions.borderRadius12),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    offset: Offset(5, 5),
                  ),
                ],
              ),
            ),
            Container(
              child: ischecked
                  ? MaterialButton(
                      onPressed: () async {
                        setState(() {
                          state = ButtonState.loading;
                        });
                        await Future.delayed(Duration(seconds: 3));
                        setState(() {
                          state = ButtonState.done;
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.all(Dimensions.padding20),
                        width: double.infinity,
                        height: 50.0,
                        decoration: BoxDecoration(
                            color: kAppColor,
                            borderRadius: BorderRadius.circular(50.0)),
                        child: Center(
                          child: Text(
                            'Count',
                            style: TextStyle(
                              fontSize: 22,
                            ),
                          ),
                        ),
                      ),
                    )
                  : progression(isdone),
            ),
            Container(
              margin: EdgeInsets.all(Dimensions.padding20),
              width: double.infinity,
              child: MaterialButton(
                padding: EdgeInsets.symmetric(
                    vertical: Dimensions.padding20,
                    horizontal: Dimensions.padding20 / 2),
                color: kAppColor,
                onPressed: () {
                  Navigator.popAndPushNamed(context, History.id);
                },
                child: Text(
                  'Histroy',
                  style: TextStyle(fontSize: 28),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//countAndShare()
