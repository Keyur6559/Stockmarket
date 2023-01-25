import 'package:flutter/material.dart';
import 'package:titlebar/main.dart';
import 'package:titlebar/second.dart';

class ui2 extends StatefulWidget {
  const ui2({Key? key}) : super(key: key);

  @override
  State<ui2> createState() => _ui2State();
}

class _ui2State extends State<ui2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Past Winners"), centerTitle: true),
      body: Column(
        children: [
          Expanded(
            child: ListView(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
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
                              style:
                                  TextStyle(color: Colors.blue, fontSize: 15)),
                        ),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                      )),
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
                            child: Text("Multipller Portfolio",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15)),
                          ),
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      )
                    ],
                  ),
                  ExpansionTile(
                      backgroundColor: Colors.black12,
                      title: Text(
                        "Indian Energy Exchange Ltd(IEX)",
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      children: [
                        ListTile(
                          leading: CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS9IiDvw--Z7SSY_1Ckp78bDfZJLEhDhV7_T53v5_sKWsoI6y_PdZoZNk1Kwxo42Z4LRsA&usqp=CAU"),
                          ),
                          title: Text(
                            'what does the compny do',
                            style: TextStyle(
                                fontSize: 14.0, fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                              'the compny is indias leading energy exchange'
                              'with a 98% share of a energy exchange'
                              'market.'),
                        ),
                        ListTile(
                          leading: CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://www.shutterstock.com/image-vector/arrow-letter-l-logo-design-260nw-1685506072.jpg"),
                          ),
                          title: Text(
                            'why did we choose the company',
                            style: TextStyle(
                                fontSize: 14.0, fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text('because of its near-monopoly,IEX '
                              'benefited significatly from changing dynamics and '
                              'a rising trend away from long-term power purchase'
                              'agrements ad toward short-term contracts.'),
                        ),
                        ListTile(
                          leading: CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://miro.medium.com/max/1100/1*S8aUeZrUh7_PSC3XGTIjdQ.webp"),
                          ),
                          title: Text(
                            'What drivers the companys future growth',
                            style: TextStyle(
                                fontSize: 14.0, fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                              'the company has a robust free cash flow generation'
                              'model with minimal capex requirements, which bodes well'
                              'for future expansion oppertunities.'),
                        )
                      ]),
                ]),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Container(
              height: 50,
              width: 350,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(10)),
              child: TextButton(
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => MyApp()));
                  },
                  child: Text(
                    "Sign Up Now",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
