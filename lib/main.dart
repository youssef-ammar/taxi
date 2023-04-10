import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar:
           BottomNavigationBar(
                  items: const <BottomNavigationBarItem>[
                    BottomNavigationBarItem(

                      icon: Icon(Icons.home),
                      backgroundColor: Colors.blue,
                      label: 'Home',

                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.business),
                      label: 'Services',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.local_activity),
                      label: 'Activity',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.account_circle),
                      label: 'Account',
                    ),
                  ],
                ),



        appBar: AppBar(
          title: Text('TaxiPartner'),
        ),
        body: Column(children: <Widget>[
          Center(
            child: Align(
              alignment: Alignment.topCenter,
              child: BottomNavigationBar(
                items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(

                  icon: Icon(Icons.local_taxi),
                  backgroundColor: Colors.blue,
                  label: 'Taxi',

                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.business_center),
                  label: 'Couvoiturage',
                ),
              ]),
            ),
          ),

          Container(
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(width: 3, color: Colors.greenAccent),
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                  hintText: 'where do you go ?',
                  icon: Icon(Icons.search),
                ),
              ),
            ),
          ),
          Row(
            children: <Widget>[
              Container(
                child: IconButton(onPressed: () => {}, icon: Icon(Icons.star)),
              ),
              Container(
                child: Text("Choose a saved place"),
              ),
              Container(
                child: IconButton(
                    onPressed: () => {},
                    icon: Icon(Icons.chevron_right_outlined)),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                child: IconButton(onPressed: () => {}, icon: Icon(Icons.map)),
              ),
              Container(
                child: Text("Set distination on map"),
              ),
              Container(
                child: IconButton(
                    onPressed: () => {},
                    icon: Icon(Icons.chevron_right_outlined)),
              ),
            ],
          ),

        ]),
      ),
    );
  }
}
