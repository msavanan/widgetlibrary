import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:widgetlibrary/grouped_buttons.dart';
import 'package:widgetlibrary/icicicard/icici_card.dart';
import 'package:widgetlibrary/sliding_listview.dart';
import 'animateButton.dart';
import 'camera_plugin.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

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
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Center(
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
                    style: ButtonStyle(
                        tapTargetSize: MaterialTapTargetSize.padded),
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
                          child: Icon(Icons.location_on), onPressed: () {}),
                      SizedBox(width: 10),
                      ElevatedButton(
                          child: Icon(Icons.email), onPressed: () {}),
                      SizedBox(width: 10),
                      ElevatedButton(child: Icon(Icons.home), onPressed: () {}),
                      SizedBox(width: 10),
                      ElevatedButton(
                          child: Icon(Icons.access_alarm_outlined),
                          onPressed: () {}),
                      SizedBox(width: 10),
                      ElevatedButton(
                          child: Icon(Icons.accessibility), onPressed: () {}),
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
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: 30,
                              color: Colors.blueAccent,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Text('Icon Animation'),
                AnimateButton(duration: Duration(milliseconds: 450)),
                ElevatedButton(
                    onPressed: () async {
                      final cameras = await availableCameras();
                      final firstCamera = cameras.first;
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TakePictureScreen(
                            camera: firstCamera,
                          ),
                        ),
                      );
                    },
                    child: Text("Camera - Click me")),
                Text('Sliding ListView'),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SlidingListView(),
                      ),
                    );
                  },
                  child: Text('Sliding ListView'),
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AccountCard()),
                      );
                    },
                    child: Text('ICICI Card')),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
