import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Login Page',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Color> gradientcolors = [Colors.deepOrange, Colors.yellow];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Welcome\nBack',
                      style: TextStyle(
                        fontSize: 35,
                          color: Colors.black54,
                          fontWeight: FontWeight.w800,
                          letterSpacing: 2.0),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Material(
                      elevation: 10.0,
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30.0),
                      )),
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: 40.0, right: 20.0, top: 10.0, bottom: 10.0),
                        child: TextField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Enter Your Email',
                              hintStyle: TextStyle(
                                  color: Color(0xFFE1E1E1), fontSize: 14)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Material(
                      elevation: 10.0,
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.only(topRight: Radius.circular(30.0))),
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: 40.0, right: 20.0, top: 10.0, bottom: 10.0),
                        child: TextField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Enter Your Password',
                              hintStyle: TextStyle(
                                  color: Color(0xFFE1E1E1), fontSize: 14)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 15),
                      child: Center(
                        child: GradientButton("Login", gradientcolors),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Dont have an \n Account ? ',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 15),
                            ),
                            Text(
                              'Create an \n Account',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w700),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget GradientButton(String txtname, List<Color> gradientcolors) {
    return Material(
      child: Container(
        height: 50,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Colors.black54,
                  blurRadius: 15.0,
                  offset: Offset(0.0, 0.75))
            ],
            gradient: LinearGradient(colors: gradientcolors),
            borderRadius: BorderRadius.circular(20)),
        child: Text(
          txtname,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
