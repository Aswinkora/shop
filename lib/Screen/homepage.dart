import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shop/Screen/client.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('KATHAKALI'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Client()));
                    });
                  },
                  child: CircleAvatar(
                    radius: 50,
                    child: Icon(
                      Icons.diversity_3_sharp,
                      size: 80,
                    ),
                  ),
                ),
                Text('CLIENT')
              ]),
              Column(
                children: [
                  CircleAvatar(
                    radius: 50,
                    child: Icon(
                      Icons.description,
                      size: 80,
                    ),
                  ),
                  Text('Market')
                ],
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(children: [
                CircleAvatar(
                  radius: 50,
                  child: Icon(
                    Icons.payment,
                    size: 80,
                  ),
                ),
                Text('Payment')
              ]),
              Column(
                children: [
                  CircleAvatar(
                    radius: 50,
                    child: Icon(
                      Icons.directions_car_rounded,
                      size: 80,
                    ),
                  ),
                  Text('travelexpense')
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
// analllll