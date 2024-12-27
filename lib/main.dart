import 'package:distiny1/showMessages.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Distiny());
  }
}

class Distiny extends StatefulWidget {
  const Distiny({super.key});

  @override
  State<Distiny> createState() => _DistinyState();
}

class _DistinyState extends State<Distiny> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30)),
            Container(
              padding: EdgeInsets.all(28),
              child: Text(
                """روزی جمعه هست و شما میروید به یک رستورانت که خیلی از خانه تان دور هست.
                     بعد از داخل رستورانت که میشوید میبیند که یک مرد غول پیکر در کنار میز ایستاد هست.و از شما میپرسد که چگونه میتواند شما را کمک کند.
          """,
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                textDirection: TextDirection.rtl,
                textAlign: TextAlign.justify,
              ),
            ),
            SizedBox(height: 15),
            ElevatedButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.greenAccent,
                fixedSize: Size(450, 25),
                textStyle: TextStyle(fontWeight: FontWeight.bold),
              ),
              onPressed: () {
                setState(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (c) => acceptTheRequest(context)),
                  );
                });
              },
              child: Text("از مرد میخواهم که برایم یک مرغ سرخ شده بیاورد"),
            ),
            SizedBox(height: 15),
            ElevatedButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.greenAccent,
                fixedSize: Size(450, 25),
                textStyle: TextStyle(fontWeight: FontWeight.bold),
              ),
              onPressed: () {
                setState(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (c) => rejectingTheRequest(context)),
                  );
                });
              },
              child: Text(
                  "با توجه به قواره مرد از خوردن غذا در این رستوانت صرف نظر میکنم"),
            ),
          ],
        ),
      ),
    );
  }
}
