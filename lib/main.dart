import 'package:flutter/material.dart';
import 'package:widgetlibrary/grouped_buttons.dart';
import 'package:widgetlibrary/sliding_listview.dart';
import 'animateButton.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Widget Library',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Widget Library'), //SlidingListView(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool enableMenu = false;
  double widthStack = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 10),
              Text('Animation in a button'),
              SizedBox(
                height: 60,
                width: 60,
                child: TextButton(
                  style:
                      ButtonStyle(tapTargetSize: MaterialTapTargetSize.padded),
                  child: Image(image: AssetImage("assets/gift-box-2.gif")),
                  onPressed: () {},
                ),
              ),
              SizedBox(height: 10),
              Padding(
                  padding: EdgeInsets.only(bottom: 2, left: 10),
                  child: Text("Horizontal Scroll")),
              SizedBox(height: 10),
              Container(
                height: 60,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox(width: 10),
                    ElevatedButton(
                        child: Icon(Icons.ac_unit), onPressed: () {}),
                    SizedBox(width: 10),
                    ElevatedButton(
                        child: Icon(Icons.ac_unit), onPressed: () {}),
                    SizedBox(width: 10),
                    ElevatedButton(
                        child: Icon(Icons.ac_unit), onPressed: () {}),
                    SizedBox(width: 10),
                    ElevatedButton(
                        child: Icon(Icons.ac_unit), onPressed: () {}),
                    SizedBox(width: 10),
                    ElevatedButton(
                        child: Icon(Icons.ac_unit), onPressed: () {}),
                    SizedBox(width: 10),
                    ElevatedButton(
                        child: Icon(Icons.ac_unit), onPressed: () {}),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Text("Grouped Buttons"),
              SizedBox(height: 10),
              Container(
                height: 140,
                padding: EdgeInsets.only(top: 30, bottom: 20, left: 20),
                color: Color(0XFFeeeeee),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'Price Range',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    GroupedButtons(),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text('Drawer in a Stack Widget'),
              SizedBox(
                height: 150,
                child: Stack(
                  //fit: StackFit.loose,
                  children: [
                    Positioned(
                        left: 0,
                        top: 0,
                        child: enableMenu
                            ? SizedBox(
                                width: widthStack,
                                height:
                                    150, //MediaQuery.of(context).size.height - 40,
                                child: ListView(
                                  children: [
                                    TextButton(
                                      child: Text('Home'),
                                      onPressed: () {},
                                    ),
                                    TextButton(
                                      child: Text('Apply Now'),
                                      onPressed: () {},
                                    ),
                                    TextButton(
                                      child: Text('Passbook'),
                                      onPressed: () {},
                                    ),
                                    TextButton(
                                      child: Text('Contact us'),
                                      onPressed: () {},
                                    ),
                                    TextButton(
                                      child: Text('Calculator'),
                                      onPressed: () {},
                                    ),
                                    TextButton(
                                      child: Text('Inbox'),
                                      onPressed: () {},
                                    ),
                                    TextButton(
                                      child: Text('Safety Tips'),
                                      onPressed: () {},
                                    ),
                                    TextButton(
                                      child: Text('Change Login pin'),
                                      onPressed: () {},
                                    ),
                                    TextButton(
                                      child: Text(
                                        'Disable FingerPrints',
                                      ),
                                      onPressed: () {},
                                    ),
                                    TextButton(
                                        onPressed: () {},
                                        child: Text('Contact Us'))
                                  ],
                                ),
                              )
                            : Container()),
                    Positioned(
                      left: widthStack,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  enableMenu = !enableMenu;
                                  if (enableMenu) {
                                    setState(() {
                                      widthStack = 150;
                                    });
                                  } else {
                                    setState(() {
                                      widthStack = 0;
                                    });
                                  }
                                });
                              },
                              icon: Icon(Icons.horizontal_split_rounded)),
                          /*Container(
                            width: MediaQuery.of(context).size.width,
                            height: 30,
                            color: Colors.blueAccent,
                          ),*/
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Text('Icon Animation'),
              AnimateButton(duration: Duration(milliseconds: 450)),
            ],
          ),
        ),
      ),
    );
  }
}

/*

Row(
                    /*mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,*/
                    //mainAxisSize: MainAxisSize.min,
                    children: [
                      //TODO Use positioned to organise in the stack
                      enableMenu
                          ? SizedBox(
                              width: 150,
                              child: ListView(
                                children: [
                                  TextButton(
                                    child: Text('Home'),
                                    onPressed: () {},
                                  ),
                                  TextButton(
                                    child: Text('Apply Now'),
                                    onPressed: () {},
                                  ),
                                  TextButton(
                                    child: Text('Passbook'),
                                    onPressed: () {},
                                  ),
                                  TextButton(
                                    child: Text('Contact us'),
                                    onPressed: () {},
                                  ),
                                  TextButton(
                                    child: Text('Calculator'),
                                    onPressed: () {},
                                  ),
                                  TextButton(
                                    child: Text('Inbox'),
                                    onPressed: () {},
                                  ),
                                  TextButton(
                                    child: Text('Safety Tips'),
                                    onPressed: () {},
                                  ),
                                  TextButton(
                                    child: Text('Change Login pin'),
                                    onPressed: () {},
                                  ),
                                ],
                              ),
                            )
                          : Container(),
                      Container(
                        height: double.infinity,
                        width: 300,
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Row(
                                  /*mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.stretch,*/
                                  children: [
                                    Expanded(
                                      child: IconButton(
                                          onPressed: () {
                                            setState(() {
                                              enableMenu = !enableMenu;
                                            });
                                          },
                                          icon: Icon(
                                              Icons.horizontal_split_rounded)),
                                    ),
                                    Expanded(
                                      child: ElevatedButton(
                                          onPressed: () {},
                                          child: Text('Saving Account')),
                                    ),
                                  ]),
                              Expanded(
                                child: GridView.count(
                                  shrinkWrap: true,
                                  mainAxisSpacing: 10,
                                  crossAxisCount: 4,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.all(5),
                                      height: 50,
                                      width: 50,
                                      color: Colors.green,
                                    ),
                                    Container(
                                      margin: EdgeInsets.all(5),
                                      height: 50,
                                      width: 50,
                                      color: Colors.green,
                                    ),
                                    Container(
                                      margin: EdgeInsets.all(5),
                                      height: 50,
                                      width: 50,
                                      color: Colors.green,
                                    ),
                                    Container(
                                      margin: EdgeInsets.all(5),
                                      height: 50,
                                      width: 50,
                                      color: Colors.green,
                                    ),
                                    Container(
                                      margin: EdgeInsets.all(5),
                                      height: 50,
                                      width: 50,
                                      color: Colors.green,
                                    ),
                                    Container(
                                      margin: EdgeInsets.all(5),
                                      height: 50,
                                      width: 50,
                                      color: Colors.green,
                                    ),
                                    Container(
                                      margin: EdgeInsets.all(5),
                                      height: 50,
                                      width: 50,
                                      color: Colors.green,
                                    ),
                                    Container(
                                      margin: EdgeInsets.all(5),
                                      height: 50,
                                      width: 50,
                                      color: Colors.green,
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
 */
