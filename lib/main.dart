import 'package:flutter/material.dart';
import 'package:titlebar/second.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: GestureDetector(
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: 20,
          ),
        ),
        title: Text(
          'Select a Plan',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        actions: [
          GestureDetector(
            child: Row(
              children: [
                Text(
                  'HELP',
                  style: TextStyle(
                    color: Colors.deepPurpleAccent,
                  ),
                ),
                Icon(
                  Icons.help_outline_sharp,
                  color: Colors.deepPurpleAccent,
                ),
              ],
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(left: 20, top: 15, bottom: 10, right: 20),
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.indigoAccent, Colors.deepOrangeAccent]),
                borderRadius: BorderRadius.circular(15),
              ),
              height: 230,
              width: double.infinity,
              child: Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [Colors.deepPurple, Colors.pinkAccent]),
                            borderRadius: BorderRadius.circular(15)),
                        height: 110,
                        width: double.infinity,
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 20, left: 10),
                              child: Row(
                                children: [
                                  Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image:
                                                AssetImage("image/once.jpg")),
                                        shape: BoxShape.circle),
                                  ),
                                  Text("     Teji Mandi Flagship     ",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white)),
                                  Container(
                                    height: 30,
                                    width: 120,
                                    decoration: BoxDecoration(
                                        color: Colors.black12,
                                        borderRadius: BorderRadius.horizontal(
                                            left: Radius.circular(15),
                                            right: Radius.circular(15))),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Icon(Icons.electric_meter_outlined),
                                        Text("Moderaet risk"),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: const [
                                Padding(
                                  padding: EdgeInsets.only(left: 70.0),
                                  child: Text('CAGR\n128%',
                                      style: TextStyle(color: Colors.white)),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Text('Min, Investment Amount\n₹24000',
                                    style: TextStyle(color: Colors.white)),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15, right: 15),
                        child: Container(
                          height: 100,
                          width: 145,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 20,
                                width: 145,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.elliptical(15, 15),
                                      topLeft: Radius.elliptical(15, 15)),
                                  color: Colors.purple,
                                ),
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "SAVE 90%",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ]),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text('₹149',
                                      style: TextStyle(
                                        decoration: TextDecoration.lineThrough,
                                      )),
                                  SizedBox(
                                    width: 70,
                                    child: Radio(
                                      value: '',
                                      groupValue: '',
                                      onChanged: (value) {},
                                    ),
                                  ),
                                ],
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("₹99/Month",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    Text("₹1497 for 12 months",
                                        style: TextStyle(fontSize: 12)),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(7.0),
                        child: Container(
                          height: 100,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 5),
                          width: 145,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text('₹199',
                                      style: TextStyle(
                                          decoration:
                                              TextDecoration.lineThrough)),
                                  SizedBox(
                                    width: 30,
                                    child: Radio(
                                      value: '',
                                      groupValue: '',
                                      onChanged: (value) {},
                                    ),
                                  ),
                                ],
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("₹149/Month",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    Text("₹894 for 6 months"),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 20, top: 15, bottom: 10, right: 20),
            child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.black12, Colors.amberAccent]),
                    borderRadius: BorderRadius.circular(15)),
                height: 230,
                width: double.infinity,
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  colors: [Colors.orange, Colors.amberAccent]),
                              borderRadius: BorderRadius.circular(15)),
                          height: 110,
                          width: double.infinity,
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 20, left: 10),
                                child: Row(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.zero,
                                      clipBehavior: Clip.hardEdge,
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image:
                                                AssetImage("image/187879.png")),
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                    Text("     Teji Mandi Multiplier    ",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white)),
                                    Container(
                                      height: 30,
                                      width: 120,
                                      decoration: BoxDecoration(
                                          color: Colors.black12,
                                          borderRadius: BorderRadius.horizontal(
                                              left: Radius.circular(15),
                                              right: Radius.circular(15))),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Icon(Icons.speed),
                                          Text(" High Risk"),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: const [
                                  Padding(
                                    padding: EdgeInsets.only(left: 70.0),
                                    child: Text('CAGR\n128%',
                                        style: TextStyle(color: Colors.white)),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text('Min, Investment Amount\n₹30,000',
                                      style: TextStyle(color: Colors.white)),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15, right: 15),
                          child: Container(
                            height: 100,
                            width: 145,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  height: 20,
                                  width: 145,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.elliptical(15, 15),
                                        topLeft: Radius.elliptical(15, 15)),
                                    color: Colors.deepOrangeAccent,
                                  ),
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "SAVE 37%",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ]),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text('₹699',
                                        style: TextStyle(
                                            decoration:
                                                TextDecoration.lineThrough)),
                                    SizedBox(
                                      width: 30,
                                      child: Radio(
                                        value: '',
                                        groupValue: '',
                                        onChanged: (value) {},
                                      ),
                                    ),
                                  ],
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("₹399/Month",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold)),
                                      Text("₹2394 for 6 months",
                                          style: TextStyle(fontSize: 12)),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(7.0),
                          child: Container(
                            height: 100,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            width: 145,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text('₹899',
                                        style: TextStyle(
                                            decoration:
                                                TextDecoration.lineThrough)),
                                    SizedBox(
                                      width: 30,
                                      child: Radio(
                                        value: '',
                                        groupValue: '',
                                        onChanged: (value) {},
                                      ),
                                    ),
                                  ],
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("₹449/Month",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold)),
                                      Text("₹1497 for 3 months"),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                )),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 20, 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Text('-----------------------------'),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Avail Offers',
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text('-------------------------'),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 5),
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Container(
                height: 60,
                width: 340,
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ImageIcon(
                      AssetImage("web/icons/money-bag-xxl.png"),
                      color: Colors.amber,
                      size: 50,
                    ),
                    Container(
                        height: 45,
                        width: 250,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(
                            child: TextButton(
                          onPressed: () {},
                          child: Text(
                            'Tap to apply offer code',
                          ),
                        )))
                  ],
                )),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 20, bottom: 30),
              child: Text(
                "Referral Terms",
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(10)),
              child: TextButton(
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => ui1()));
                  },
                  child: Text(
                    "Subscribe Now",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
