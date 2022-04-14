import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromRGBO(200, 214, 229, 1.0),
        body: SafeArea(
            child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              CircleAvatar(
                radius: 100.0,
                backgroundImage: AssetImage('images/lhh.png'),
                backgroundColor: Color.fromRGBO(255, 255, 255, 0.5),
              ),
              Text(
                'Genshin Loggin',
                style: TextStyle(
                    fontSize: 25,
                    color: Color.fromRGBO(146, 146, 146, 1.0),
                    fontFamily: 'Pacifico'),
              ),
              Text(
                'Flutter Developer',
                style: TextStyle(
                  fontFamily: 'OpenSans',
                  fontSize: 20,
                  color: Colors.white,
                  letterSpacing: 8.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: 200,
                height: 20,
                child: Divider(
                  color: Colors.white,
                ),
              ),
              Container(
                width: 200,
                margin: EdgeInsets.only(top: 10, bottom: 10),
                padding: EdgeInsets.all(5.0),
                color: Colors.white,
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.phone,
                      color: Colors.grey[300],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "+86 18688602019",
                      style: TextStyle(color: Colors.grey[300]),
                    )
                  ],
                ),
              ),
              Container(
                width: 200,
                color: Colors.white,
                padding: EdgeInsets.all(5.0),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.mail,
                      color: Colors.grey[300],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "1475289190@qq.com",
                      style: TextStyle(color: Colors.grey[300]),
                    )
                  ],
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}

// class MyApp extends StatelessWidget {
//   var btn = 0;
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         backgroundColor: Colors.red[100],
//         appBar: AppBar(
//           title: Text('布洛妮娅'),
//           centerTitle: true,
//           backgroundColor: Colors.red[400],
//         ),
//         body: SafeArea(
//           child: Column(
//             //布局大小
//             // mainAxisSize: MainAxisSize.min,
//             //排列方式
//             // verticalDirection: VerticalDirection.up,
//             //主轴对齐方式
//             // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             //交叉轴对齐方式
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: <Widget>[
//               Container(
//                 width: 100,
//                 height: 100,
//                 color: Colors.cyan[200],
//               ),
//               SizedBox(width: 50,height: 50,),
//               Container(
//                 width: double.infinity,
//                 height: 100,
//                 color: Colors.white,
//               ),
//               SizedBox(width: 50,height: 50,),
//               Container(
//                 width: 100,
//                 height: 100,
//                 color: Colors.grey[300],
//               ),
//             ],
//           ),
//         ),
//         //浮动按钮设置
//         floatingActionButton: FloatingActionButton(
//           onPressed: () {
//             btn++;
//           },
//           child: Icon(Icons.add,color: Colors.red[100],),
//           backgroundColor: Colors.red[400],
//         ),
//         floatingActionButtonLocation: FloatingActionButtonLocation.miniEndTop
//       ),
//     );
//   }
// }
