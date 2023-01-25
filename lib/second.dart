import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:titlebar/third.dart';

class ui1 extends StatefulWidget {
  const ui1({Key? key}) : super(key: key);

  @override
  State<ui1> createState() => _ui1State();
}

class _ui1State extends State<ui1> {
  List<ChartData> salesData = [];
  List<ChartData> salesData2 = [];
  @override
  void initState() {
    salesData = [
      ChartData(1, 20),
      ChartData(2, 26),
      ChartData(3, 40),
      ChartData(4, 45),
      ChartData(5, 30),
      ChartData(6, 32),
      ChartData(7, 42),
    ];
    salesData2 = [
      ChartData(1, 25),
      ChartData(2, 35),
      ChartData(3, 50),
      ChartData(4, 48),
      ChartData(5, 18),
      ChartData(6, 46),
      ChartData(7, 51),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 2,
      child: Scaffold(
        appBar: AppBar(title: Text("portfolio Perfomance"), centerTitle: true),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: [
            Row(
              children: [
                Expanded(
                    child: Container(
                  alignment: Alignment.center,
                  height: 50,
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ui1(),
                      ));
                    },
                    child: Text("Flagship Portfolio",
                        style: TextStyle(color: Colors.white, fontSize: 15)),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20)),
                )),
                Expanded(
                    child: Container(
                        alignment: Alignment.center,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: TextButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => ui2(),
                            ));
                          },
                          child: Text("Multipller Portfolio",
                              style:
                                  TextStyle(color: Colors.blue, fontSize: 15)),
                        ))),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("     3Y CAGR",
                      textAlign: TextAlign.start,
                      textWidthBasis: TextWidthBasis.longestLine,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  Text("45.78%    ",
                      style: TextStyle(
                          color: Colors.green,
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
                height: 400,
                width: double.infinity,
                child: Column(
                  children: [
                    Expanded(
                      child: TabBar(
                          indicatorColor: Colors.blue,
                          labelColor: Colors.black,
                          unselectedLabelColor: Colors.indigo,
                          tabs: [
                            Tab(
                              text: "Nifty 500",
                            ),
                            Tab(
                              text: "Gold/FD/Inflation",
                            ),
                          ]),
                    ),
                    Expanded(
                      flex: 10,
                      child: SizedBox(
                        child: TabBarView(children: [
                          Container(
                            child: Column(children: [
                              SizedBox(
                                height: 10,
                              ),
                              RichText(
                                  text: TextSpan(children: <TextSpan>[
                                TextSpan(
                                    text: 'Current value of',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15)),
                                TextSpan(
                                    text: ' ₹10,000 ',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                        fontSize: 15)),
                                TextSpan(
                                    text: 'invested',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15)),
                                TextSpan(
                                    text: ' at launch ',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                        fontSize: 15)),
                                TextSpan(
                                    text: ' would be',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15)),
                              ])),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                child: SfCartesianChart(
                                    primaryXAxis: NumericAxis(
                                        edgeLabelPlacement:
                                            EdgeLabelPlacement.shift,
                                        interval: 1,
                                        majorGridLines:
                                            const MajorGridLines(width: 0)),
                                    primaryYAxis: NumericAxis(
                                        labelFormat: '{value}k',
                                        axisLine: AxisLine(width: 0),
                                        majorTickLines: const MajorTickLines(
                                            color: Colors.transparent)),
                                    tooltipBehavior:
                                        TooltipBehavior(enable: true),
                                    series: <SplineSeries<ChartData, num>>[
                                      SplineSeries<ChartData, num>(
                                          animationDuration: 2500,
                                          dataSource: salesData,
                                          xValueMapper: (ChartData sales, _) =>
                                              sales.x,
                                          yValueMapper: (ChartData sales, _) =>
                                              sales.y,
                                          width: 2),
                                      SplineSeries<ChartData, num>(
                                          animationDuration: 2500,
                                          dataSource: salesData2,
                                          color: Colors.deepOrange,
                                          xValueMapper: (ChartData sales, _) =>
                                              sales.x,
                                          yValueMapper: (ChartData sales, _) =>
                                              sales.y,
                                          width: 2),
                                    ]),
                              ),
                            ]),
                          ),
                          Container(
                            child: Column(children: [
                              SizedBox(
                                width: double.infinity,
                                height: 10,
                              ),
                              RichText(
                                  text: TextSpan(children: <TextSpan>[
                                TextSpan(
                                    text: 'Current value of',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15)),
                                TextSpan(
                                    text: ' ₹10,000 ',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                        fontSize: 15)),
                                TextSpan(
                                    text: 'invested',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15)),
                                TextSpan(
                                    text: ' at launch ',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                        fontSize: 15)),
                                TextSpan(
                                    text: ' would be',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15)),
                              ])),
                              SizedBox(
                                width: double.infinity,
                                height: 10,
                              ),
                              Container(
                                alignment: Alignment.center,
                                height: 300,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        fit: BoxFit.fill,
                                        image: AssetImage("image/two.jpg"))),
                              )
                            ]),
                          ),
                        ]),
                      ),
                    ),
                  ],
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.black26,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      alignment: Alignment.center,
                      child: Text("6M",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 20,
                          )),
                      height: 40,
                      width: 100,
                    )
                  ],
                ),
                Spacer(),
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.black26,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      alignment: Alignment.center,
                      child: Text("1Y",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 20,
                          )),
                      height: 40,
                      width: 100,
                    )
                  ],
                ),
                Spacer(),
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.black26,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      alignment: Alignment.center,
                      child: Text("MAX",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 20,
                          )),
                      height: 40,
                      width: 100,
                    )
                  ],
                ),
              ],
            ),
            Spacer(),
            Row(
              children: [
                Expanded(
                  child: Container(
                    child: Column(
                      children: [
                        Text(
                            "Disclaimer: past performance includes change due to rebalance,"
                            "events like stock splits & mergers. Also,past perfomance dosen'T"
                            "gurentee future returns."),
                        Container(
                          height: 50,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(10)),
                          child: TextButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => ui2()));
                              },
                              child: Text(
                                "Next",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15),
                              )),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    salesData.clear();
    super.dispose();
  }
}

class ChartData {
  final double x;
  final double y;
  ChartData(this.x, this.y);
}
