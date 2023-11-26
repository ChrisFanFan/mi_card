import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // appBar: AppBar(
        //   title: Text('Flutter App'),
        // ),
        backgroundColor: Colors.teal,
        body: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 50.0, //Cricle size
            //backgroundColor: Colors.red,
            backgroundImage: AssetImage('images/cat.jpg',),
          ),
          Text(
            'Eddie Fan',
            style: TextStyle(
              fontFamily: 'Pacifico',
              fontWeight: FontWeight.bold,
              fontSize: 40.0,
              color: Colors.white
            ),
          ),
          Text(

              'FLUTTER DEVELOPER',
              style: TextStyle(
              fontFamily: 'SourceSans3',
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
              color: Colors.teal.shade100,
              letterSpacing: 2.5
            ),
          ),
          /* use container to create a module link Card() */
          // Container(
          //   color: Colors.white,
          //   margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
          //   padding: EdgeInsets.all(20.0),
          //   child: Row(
          //     children: [
          //       Icon(
          //         Icons.phone,
          //         color:Colors.teal
          //       ),
          //       SizedBox(
          //         width: 10.0,
          //       ),
          //       Text(
          //         '+886 912345678',
          //         style: TextStyle(
          //           color: Colors.teal[900],
          //           fontFamily: 'SourceSans3',
          //           fontSize: 20.0
          //         ),  
          //       )
          //     ],
          //   ),
          // ),
          SizedBox( /* 分隔線 */
            height: 20.0,
            width: 150.0,
            child: Divider(
              color: Colors.teal.shade100,
            ),
          ),
          Card(
            color: Colors.white,
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
            child: ListTile(
              leading: Icon(
                Icons.phone,
                color: Colors.teal[900],
              ),
              title: Text(
                '+886 912345678',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.teal[900],
                  fontFamily: 'SourceSans3'
                ),
              ),
            ),
          ),
          Card(
            color: Colors.white,
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
            child: ListTile(
              leading: Icon(
                Icons.email,
                color: Colors.teal[900],
              ),
              title: Text(
                'eddie_fan@email.com',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.teal[900],
                  fontFamily: 'SourceSans3'
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}