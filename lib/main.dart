import 'package:flutter/material.dart';

void main() {
  runApp(pointsCounter());
}

class pointsCounter extends StatefulWidget {
  @override
  State<pointsCounter> createState() => _pointsCounterState();
}

class _pointsCounterState extends State<pointsCounter> {
  int a = 0;

  int temab = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrange,
          title: Text(
            "points counter",
          ),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 32,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 500,
                  child: Column(
                    children: [
                      Text(
                        'team A',
                        style: TextStyle(fontSize: 30),
                      ),
                      Text(
                        '$a',
                        style: TextStyle(fontSize: 140),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.deepOrange,
                            minimumSize: Size(150, 40)),
                        onPressed: () {
                          a++;
                          setState(() {});
                        },
                        child: Text(
                          "ADD 1 point",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.deepOrange,
                            minimumSize: Size(150, 40)),
                        onPressed: () {
                          a += 2;
                          setState(() {});
                        },
                        child: Text(
                          "ADD 2 point",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.deepOrange,
                            minimumSize: Size(150, 40)),
                        onPressed: () {
                          a += 3;
                          setState(() {});
                        },
                        child: Text(
                          "ADD 3 point",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 500,
                  child: VerticalDivider(
                    endIndent: 50,
                    indent: 30,
                    color: Colors.grey,
                    thickness: 2,
                  ),
                ),
                SizedBox(
                  height: 500,
                  child: Column(
                    children: [
                      Text(
                        'team B',
                        style: TextStyle(fontSize: 30),
                      ),
                      Text(
                        '$temab',
                        style: TextStyle(fontSize: 140),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.deepOrange,
                            minimumSize: Size(150, 40)),
                        onPressed: () {
                          temab++;
                          setState(() {});
                        },
                        child: Text(
                          "ADD 1 point",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.deepOrange,
                            minimumSize: Size(150, 40)),
                        onPressed: () {
                          temab += 2;
                          setState(() {});
                        },
                        child: Text(
                          "ADD 2 point",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.deepOrange,
                            minimumSize: Size(150, 40)),
                        onPressed: () {
                          temab += 3;
                          setState(() {});
                        },
                        child: Text(
                          "ADD 3 point",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 15, 189, 116),
                  minimumSize: Size(150, 40)),
              onPressed: () {
                setState(() {
                  a = 0;
                  temab = 0;
                });
              },
              child: Text(
                "rest",
                style: TextStyle(fontSize: 18),
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
