import 'package:distiny1/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

acceptTheRequest(BuildContext context) {
  return Scaffold(
    backgroundColor: Colors.deepPurple,
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(28),
            child: Text(
              """مرد برایم یک دانه مرغ سرخ شده میاورد که در روی آن خون های تازه ای دیده میشود.
      و چهره مرد هم چنان به نظر میرسید که داره منو میکشه اما غذایم را برای من گذاشت و رفت.
      و من میتوانستم راحت از انجا بروم""",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              textDirection: TextDirection.rtl,
              textAlign: TextAlign.justify,
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.greenAccent,
              fixedSize: Size(450, 25),
              textStyle: TextStyle(fontWeight: FontWeight.bold),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (c) => continuingEatin(context)),
              );
            },
            child: Text("به خوردن غذا ادامه میدهم."),
          ),
          SizedBox(height: 15),
          ElevatedButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.greenAccent,
              fixedSize: Size(450, 25),
              textStyle: TextStyle(fontWeight: FontWeight.bold),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (c) => rejectingTheRequest(context)),
              );
            },
            child: Text("بعد از رفتن مرد بلا فاصله به خانه میروم"),
          ),
        ],
      ),
    ),
  );
}

rejectingTheRequest(BuildContext context) {
  return Scaffold(
    backgroundColor: Colors.deepPurple,
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(28),
            child: Text(
              """بعد از دیدن چهره خطرناک مرد بلا فاصله از رستورانت بیرون شدم و رفتم به خانه.""",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              textDirection: TextDirection.rtl,
              textAlign: TextAlign.justify,
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.greenAccent,
              fixedSize: Size(450, 25),
              textStyle: TextStyle(fontWeight: FontWeight.bold),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (c) => Distiny()),
              );
            },
            child: Text("بریم به اول داستان"),
          ),
        ],
      ),
    ),
  );
}

continuingEatin(BuildContext context) {
  return Scaffold(
    backgroundColor: Colors.deepPurple,
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(28),
            child: Text(
              """راحت نشتم و به خوردن مرغ سرخ شده ادامه دادم و بعد پول را تحویل داده و از رستورانت بیرون شدم.""",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              textDirection: TextDirection.rtl,
              textAlign: TextAlign.justify,
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.greenAccent,
              fixedSize: Size(450, 25),
              textStyle: TextStyle(fontWeight: FontWeight.bold),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (c) => Distiny()),
              );
            },
            child: Text("بریم به اول داستان"),
          ),
        ],
      ),
    ),
  );
}
