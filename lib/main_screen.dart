import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:covid/detail_screen.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: < Widget > [
            Stack(
              children: < Widget > [
                Padding(
                  padding: const EdgeInsets.only(top: 18.0, left: 18.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Data Covid-19", style: TextStyle(fontSize: 18), ),
                        Icon(Icons.notifications, color: Colors.grey, )
                      ],
                    ),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(left: 18.0),
              child: Text(
                "Indonesia",
                style: TextStyle(
                  fontSize: 40.0,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 18.0),
              child: Text(
                DateFormat('E, d MMM y').format(DateTime.now()),
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 18.0, top: 8.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DetailScreen()),
                  );
                },
                child: Card(
                color: Colors.blue.shade900,
                elevation: 8.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8.0),
                    bottomLeft: Radius.circular(8.0),
                  ),
                ),
                child:
                Padding(
                  padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: < Widget > [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: < Widget > [
                            Padding(padding: const EdgeInsets.only(left: 18.0, top: 8.0),
                              child: Text("Ciri terpapar Covid-19", style: TextStyle(fontSize: 18, color: Colors.white), ), ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: < Widget > [
                            Padding(padding: const EdgeInsets.only(left: 18.0, top: 8.0, bottom: 16.0),
                              child: Text(''
                                'Beberapa ciri terpapar Covid-19 yang dapat menyebabkan\npenyakit kronis.'
                                '', style: TextStyle(fontSize: 12, color: Colors.white), ), ),
                            Icon(Icons.arrow_forward_ios, color: Colors.white, size: 12, ),
                          ],
                        ),
                      ],
                    ),
                ),
              ),
              )
            ),
            Container(
              margin: EdgeInsets.only(top: 24.0, left: 18.0),
              child: Column(
                children: <Widget>[
                  Text(
                    "Update Terkini Covid-19",
                    style: TextStyle(
                      fontSize: 24.0,
                    ),
                  ),
                  Text(
                    "Terakhir Update: ${DateFormat('E, d MMM y').format(DateTime.now())}",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              )
            ),
            Container(
              margin: EdgeInsets.only(left: 18.0, top: 36.0),
              child: Row(
                children: < Widget > [
                  Card(
                    elevation: 8.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                          child: Column(
                            children: < Widget > [
                              Padding(padding: const EdgeInsets.all(18.0),
                                child: CircleAvatar(
                                  backgroundColor: Colors.orange.shade200,
                                  child: Icon(Icons.add, color: Colors.orange.shade800, size: 24, ),
                                ), ),
                              Padding(padding: const EdgeInsets.only(top: 8.0, left: 18.0, right: 18.0),
                                child: Text("799", style: TextStyle(fontSize: 36, color: Colors.orange.shade900), ), ),
                              Text("Terinfeksi", style: TextStyle(fontSize: 12, color: Colors.grey.shade800), ),
                            ],
                          ),
                      ),
                    ),
                  ),
                  Card(
                    elevation: 8.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                          child: Column(
                            children: < Widget > [
                              Padding(padding: const EdgeInsets.all(18.0),
                                child: CircleAvatar(
                                  backgroundColor: Colors.green.shade200,
                                  child: Icon(Icons.favorite, color: Colors.green.shade900, size: 24, ),
                                ), ),
                              Padding(padding: const EdgeInsets.only(top: 8.0, left: 18.0, right: 18.0),
                                child: Text("977", style: TextStyle(fontSize: 36, color: Colors.green.shade900), ), ),
                              Text("Sembuh", style: TextStyle(fontSize: 12, color: Colors.grey.shade800), ),
                            ],
                          ),
                      ),
                    ),
                  ),
                  Card(
                    elevation: 8.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                          child: Column(
                            children: < Widget > [
                              Padding(padding: const EdgeInsets.all(18.0),
                                child: CircleAvatar(
                                  backgroundColor: Colors.red.shade200,
                                  child: Icon(Icons.close, color: Colors.red.shade800, size: 24, ),
                                ), ),
                              Padding(padding: const EdgeInsets.only(top: 8.0, left: 18.0, right: 18.0),
                                child: Text("799", style: TextStyle(fontSize: 36, color: Colors.red.shade900), ), ),
                              Text("Meninggal", style: TextStyle(fontSize: 12, color: Colors.grey.shade800), ),
                            ],
                          ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}