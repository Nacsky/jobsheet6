import 'package:flutter/material.dart';

class StateTeksUtama extends State<TeksUtama> {
  var listNama = [
    'Zahwa Naca Syafika',
    'Eli Yuniati',
    'Abdul Faiz',
    'Faqih Fikri',
    'Evan Fikri',
  ];
  var listWarna = [
    Colors.blueAccent,
    Colors.purple,
    Colors.teal,
    Colors.yellow,
    Colors.indigo,
    Colors.deepPurple,
  ];
  int index = 0;

  void incrementIndex() {
    setState(() {
      index++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          children: [
            Text(
              'Apa Kabar',
              textDirection: TextDirection.ltr,
            ),
            Text(
              listNama[index % listNama.length],
              textDirection: TextDirection.ltr,
              style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: listWarna[index % listWarna.length]),
            )
          ],
        ));
  }
}

class TeksUtama extends StatefulWidget {
  final state = StateTeksUtama();

  @override
  State<StatefulWidget> createState() => state;
}

void main() {
  TeksUtama teksUtama = TeksUtama();

  runApp(MaterialApp(
      title: 'Jobsheet 6',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Jobsheet 6 Container Widget'),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(
            children: [teksUtama],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          tooltip: 'Refresh',
          child: Icon(Icons.refresh),
          onPressed: teksUtama.state.incrementIndex,
        ),
      )));
}