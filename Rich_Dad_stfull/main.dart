import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Robert()));

class Robert extends StatefulWidget {
  @override
  _RobertState createState() => _RobertState();
}

class _RobertState extends State<Robert> {
  int sellingLevel=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text(
          "Robert Kiyosaki",
          style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 1.0),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        setState(() {
          sellingLevel +=1;
        });
      },
      child: Icon(Icons.add),
      backgroundColor: Colors.grey[700],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage("images/robert.jpg"),
                radius: 70.0,
              ),
            ),
            Divider(
              height: 40.0,
              color: Colors.amber,
            ),
            Text(
              "NAME",
              style: TextStyle(
                letterSpacing: 1.0,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              "Robert T. Kiyosaki",
              style: TextStyle(
                color: Colors.amber,
                letterSpacing: 1.0,
                fontWeight: FontWeight.bold,
                fontSize: 28.0,
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              "Best Selling Book",
              style: TextStyle(
                letterSpacing: 1.0,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              "Rich Dad Poor Dad",
              style: TextStyle(
                letterSpacing: 1.0,
                color: Colors.amber,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(
              "Cash Flow Quadrent",
              style: TextStyle(
                letterSpacing: 1.0,
                color: Colors.amber,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              children: <Widget>[
                Icon(
                  Icons.web_asset,
                  color: Colors.amber,
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  "https://www.RichDad.com",
                  style: TextStyle(
                    letterSpacing: 1.0,
                    color: Colors.amberAccent,
                    fontSize: 20.0,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "Selling Count",
              style: TextStyle(
                letterSpacing: 1.0,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              "$sellingLevel",
              style: TextStyle(
                letterSpacing: 1.0,
                color: Colors.amberAccent,
                fontSize: 30.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
