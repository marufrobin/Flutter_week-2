import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  List<IconData> icon = [Icons.phone, Icons.mail];

  Widget cardView({required String titleName, required int index}) {
    return Card(
      color: Colors.white,
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: ListTile(
          leading: Icon(
            icon[index],
            color: Colors.teal.shade900,
          ),
          title: Text(
            "$titleName",
            style: TextStyle(
                fontSize: 20,
                fontFamily: 'SourceSans',
                color: Colors.teal.shade900),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.teal,
          body: SafeArea(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 80,
                    backgroundImage: AssetImage('image/robin.png'),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Maruf Ahmed Robin',
                    style: TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Pacifico'),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'FLUTTER DEVOLOPER',
                    style: TextStyle(
                      fontFamily: 'SourceSans',
                      color: Colors.teal.shade100,
                      fontSize: 20,
                      letterSpacing: 2,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 2,
                    width: 200,
                    color: Colors.teal.shade900,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  cardView(titleName: '+8801705000023', index: 0),
                  SizedBox(
                    height: 10,
                  ),
                  cardView(titleName: "maruf.robin@northsouth.edu", index: 1),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
