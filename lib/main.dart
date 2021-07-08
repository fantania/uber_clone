import 'package:flutter/material.dart';

import 'constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double width;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Container(
          height: height,
          width: width,
          color: AppColor.white,
          child: Stack(
            children: [
              Container(
                height: 200,
                width: width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                  color: AppColor.purple,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(Icons.menu),
                    onPressed: () {},
                    color: AppColor.white,
                    iconSize: 30,
                  ),
                  Text(
                    'Profile',
                    style: TextStyle(
                      color: AppColor.white,
                      fontSize: 30,
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.settings),
                    onPressed: () {},
                    color: AppColor.white,
                    iconSize: 30,
                  ),
                ],
              ),
              Positioned(
                top: 90,
                child: Container(
                  margin: EdgeInsets.all(20),
                  padding: EdgeInsets.all(20),
                  height: 150,
                  width: 330,
                  decoration: BoxDecoration(
                      color: AppColor.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 10,
                            spreadRadius: 1,
                            color: Color(0x33000000))
                      ]),
                  child: Column(
                    children: [
                      SizedBox(height: 20),
                      Text(
                        'Fantine Ndiku',
                        style:
                            TextStyle(color: AppColor.darkBlue, fontSize: 20),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text('Age:'),
                              SizedBox(width: 5),
                              Text('25'),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                '\$:',
                                style: TextStyle(color: Colors.purple),
                              ),
                              SizedBox(width: 5),
                              Text('1500'),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.star, color: Colors.purple),
                              SizedBox(width: 5),
                              Icon(Icons.star, color: Colors.purple),
                              Icon(Icons.star, color: Colors.purple),
                              SizedBox(width: 5),
                              Icon(Icons.star, color: Colors.purple),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 80,
                left: width * 0.4,
                child: Container(
                  width: 70,
                  height: 70,
                  child: CircleAvatar(
                    backgroundImage: AssetImage('images/pic.jpg'),
                  ),
                ),
              ),
              Positioned(
                child: Row(
                  children: [
                    infocard('542', 'Likes', Colors.purple),
                    infocard('670', 'Rides', Colors.blue),
                    infocard('542', 'Likes', Colors.orange),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget infocard(String title, String subTitle, Color color) {
    return Center(
      child: Container(
        margin: EdgeInsets.only(left: 20),
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          color: AppColor.white,
          boxShadow: [
            BoxShadow(blurRadius: 10, spreadRadius: 1, color: Color(0x33000000))
          ],
        ),
        child: Stack(
          children: [
            Positioned(
              left: 30,
              top: 10,
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Positioned(
              right: 30,
              top: 50,
              child: Text(
                subTitle,
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                width: width,
                height: 10,
                color: color,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
