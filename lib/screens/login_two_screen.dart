import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
// im

// import 'package:'
class LoginTwo extends StatelessWidget {
  const LoginTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(alignment: Alignment.bottomCenter, children: [
      Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage(
              'assets/business-man-using-mobile-phone-with-icon-network-2022-11-09-15-04-53-utc.jpg'),
          fit: BoxFit.cover,
        )),
      ),
      Container(
        decoration: const BoxDecoration(
            color: Colors.white70,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20), topLeft: Radius.circular(20))),
        height: MediaQuery.of(context).size.height * 0.5,
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Container(
              child:
                  Image.asset('assets/Optish_logo_with_black.png', height: 50)),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.only(left: 50, right: 50),
            child: Row(
              children: [
                SizedBox(
                  height: 68,
                  width: 64,
                  child: Text("Login"),
                )
              ],
            ),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Color(0xFF0084B6), Color(0xFF00AFF1)],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight),
                  borderRadius: BorderRadius.circular(10)),
              // padding: EdgeInsets.all(30),
              width: 200,
              height: 70,

              child: Center(
                child: Text(
                  "LOGIN",
                  style: TextStyle(
                    fontSize: 25,
                    letterSpacing: 5,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ]),
      )
    ]));
  }
}
