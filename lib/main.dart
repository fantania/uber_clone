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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: AppColor.white,
          child: Stack(
            children: [
              Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                  color: AppColor.purple,
                ),
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
              Padding(
                padding: const EdgeInsets.only(top: 100),
                child: Container(
                  margin: EdgeInsets.all(20),
                  padding: EdgeInsets.all(20),
                  height: 150,
                  width: double.infinity,
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
              Column(
                children: [
                  SizedBox(height: 75),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 70,
                        height: 70,
                        child: CircleAvatar(
                          backgroundImage: AssetImage('images/pic.jpg'),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  infocard('542', 'Likes', Colors.purple),
                  infocard('670', 'Rides', Colors.blue),
                  infocard('542', 'Likes', Colors.orange),
                ],
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(
              subTitle,
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            Container(
              // width: width,
              height: 10,
              color: color,
            ),
          ],
        ),
      ),
    );
  }
}
