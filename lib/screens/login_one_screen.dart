import 'package:flutter/material.dart';
import 'package:optish/screens/login_two_screen.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    void showSnackbar() {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("This is a SnackBar"),
        duration: Duration(seconds: 3),
        action: SnackBarAction(
          label: "Undo",
          onPressed: () {
            // Perform undo action
          },
        ),
      ));
    }

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
            child: Form(
              key: _formKey,
              child: TextFormField(
                validator: ((value) {
                  if (value!.isEmpty) {
                    return "Please enter your mobile number";
                  }
                  if (value.length != 10) {
                    return "Please enter a valid mobile number";
                  }
                  return null;
                }),
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Enter your phone number",
                    labelText: "Contact Number"),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              if (_formKey.currentState!.validate()) {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginTwo(),
                    ));
              } else {
                showSnackbar();
              }
            },
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
                  "NEXT",
                  style: TextStyle(
                    fontSize: 25,
                    letterSpacing: 5,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Center(
            child: Container(
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(children: [
                  TextSpan(
                      text: "By continuing you agree with the",
                      style: TextStyle(
                        letterSpacing: 2,
                        color: Colors.black,
                      )),
                  TextSpan(text: "\n"),
                  TextSpan(
                    text: "Terms and Conditions|Privacy Policy",
                    style: TextStyle(
                        color: Colors.blue, letterSpacing: 2, height: 2),
                  )
                ]),
              ),
              // child: Text(
              // "By continuing you agree with the \nTerms and Conditions|Privacy Policy"),
            ),
          )
        ]),
      )
    ]));
  }
}
