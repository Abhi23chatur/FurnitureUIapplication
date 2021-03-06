import 'package:flutter/material.dart';

class StatsScreen extends StatefulWidget {
  _StatsScreenState createState() => _StatsScreenState();
}

class _StatsScreenState extends State<StatsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    height: 250.0,
                    width: double.infinity,
                    color: Colors.yellow[700],
                  ),
                  Positioned(
                    bottom: 50.0,
                    right: 100.0,
                    child: Container(
                      width: 400.0,
                      height: 400.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(200.0),
                          color: Colors.yellow[400]),
                    ),
                  ),
                  Positioned(
                    bottom: 100.0,
                    left: 150.0,
                    child: Container(
                      width: 300.0,
                      height: 300.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(200.0),
                          color: Colors.yellow[400]),
                    ),
                  ),
                  Column(
                    children: <Widget>[
                      SizedBox(
                        height: 15.0,
                      ),
                      Row(
                        children: <Widget>[
                          SizedBox(
                            width: 10.0,
                          ),
                          Container(
                            width: 75.0,
                            height: 75.0,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    color: Colors.white,
                                    style: BorderStyle.solid,
                                    width: 2.0),
                                image: DecorationImage(
                                    image: AssetImage('assets/abhi.jpeg'))),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('ABHISHEK',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Quicksand',
                                      fontSize: 24.0,
                                      fontWeight: FontWeight.bold)),
                              Text('7058160074',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Quicksand',
                                      fontSize: 20.0))
                            ],
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width - 260.0,
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.settings,
                              color: Colors.white,
                              size: 30.0,
                            ),
                            onPressed: () => {},
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 25.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Icon(Icons.perm_contact_calendar,
                                  color: Colors.white, size: 35.0),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text('Favorites',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Quicksand',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18.0))
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Icon(Icons.account_balance_wallet,
                                  color: Colors.white, size: 35.0),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text('Wallet',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Quicksand',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18.0))
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Icon(Icons.print,
                                  color: Colors.white, size: 35.0),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text('Footprint',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Quicksand',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18.0))
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Icon(Icons.laptop,
                                  color: Colors.white, size: 35.0),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text('Coupon',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Quicksand',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18.0))
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              customCards(
                                  'Pending payment', '5', 'assets/card.png'),
                              customCards(
                                  'To be shipped', '2', 'assets/box.png'),
                            ],
                          ),
                          SizedBox(
                            height: 5.0,
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 15.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  customCards('To be received', '8', 'assets/trucks.png'),
                  customCards('Return/replace', '0', 'assets/returnbox.png'),
                ],
              ),
              SizedBox(height: 10.0,),
              customlistDetails('Gift card', Icons.account_box, Colors.red, Colors.redAccent),
              customlistDetails('Bank card', Icons.credit_card, Colors.orange, Colors.orangeAccent),
              customlistDetails('Replacement code', Icons.sim_card, Colors.red, Colors.redAccent),
              customlistDetails('Consulting collection', Icons.dashboard, Colors.blue, Colors.blueAccent),
              customlistDetails('Customer service', Icons.people, Colors.orangeAccent, Colors.orangeAccent)
            ],
          )
        ],
      ),
    );
  }

  Widget customCards(String title, String qty, String imagePath) {
    return Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(8.0),
      child: Container(
        height: 125.0,
        width: (MediaQuery.of(context).size.width / 2.0) - 20.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: EdgeInsets.only(left: 15.0),
              child: Image.asset(imagePath,
                  fit: BoxFit.cover, width: 50.0, height: 50.0),
            ),
            SizedBox(height: 2.0),
            Padding(
              padding: EdgeInsets.only(left: 15.0),
              child: Text(title,
                  style: TextStyle(
                    fontFamily: 'Quicksand',
                    fontSize: 15.0,
                    color: Colors.black,
                  )),
            ),
            SizedBox(height: 3.0),
            Padding(
              padding: EdgeInsets.only(left: 15.0),
              child: Text(qty,
                  style: TextStyle(
                      fontFamily: 'Quicksand',
                      fontSize: 15.0,
                      color: Colors.red,
                      fontWeight: FontWeight.bold)),
            ),
          ],
        ),
      ),
    );
  }

  Widget customlistDetails(String title, IconData icon, Color backgroundColor, Color iconColor) {
    return ListTile(
      title: Text(
          title,
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontFamily: 'Quicksand',
              fontSize: 18.0
          )
      ),
      leading: CircleAvatar(
        backgroundColor: backgroundColor,
        child: Center(
          child: Icon(icon, color: iconColor,),
        ),
      ),
      trailing: Icon(Icons.chevron_right, color: Colors.black),
    );
  }

}