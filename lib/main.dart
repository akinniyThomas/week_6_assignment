import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // int _counter = 0;
  //
  // void _incrementCounter() {
  //   setState(() {
  //     // This call to setState tells the Flutter framework that something has
  //     // changed in this State, which causes it to rerun the build method below
  //     // so that the display can reflect the updated values. If we changed
  //     // _counter without calling setState(), then the build method would not be
  //     // called again, and so nothing would appear to happen.
  //     _counter++;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      // appBar: AppBar(
      //   // Here we take the value from the MyHomePage object that was created by
      //   // the App.build method, and use it to set our appbar title.
      //   title: Text(widget.title),
      // ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Color.fromARGB(255, 81, 41, 98),
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: 250,
              child: Stack(
                children: [
                  Positioned(
                    left: 30,
                    top: 59,
                    child: SizedBox(
                      width: 161,
                      height: 74,
                      child: Image.asset("images/dots.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              // width: 300,
              height: 500,
              width: double.infinity,
              child: Positioned(
                left: 30,
                child: Column(
                  children: [
                    SizedBox(
                      width: 350,
                      child: const Text("Excited?!",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                          )
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    SizedBox(
                      width: 350,
                      child: const Text("You should be!!",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30
                          )
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    SizedBox(
                      width: 350,
                      child: const Text("Sign In if you already have an account with us",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14
                          )
                      ),
                    ),
                    SizedBox(
                      width: 300,
                      height: 10,
                    ),
                    Container(
                      height: 54,
                      width: 350,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.white
                      ),
                      child: TextButton(onPressed: (){},
                          child: const Text(
                            "Sign In",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20
                            ),
                          )),
                    ),
                    SizedBox(
                      width: 300,
                      height: 30,
                    ),
                    SizedBox(
                      width: 350,
                      child: Text("Or sign up if you are new !",
                        style: TextStyle(
                            color: Colors.white
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 350,
                      height: 10,
                    ),

                    Container(
                      height: 54,
                      width: 350,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.white
                      ),
                      child: TextButton(onPressed: (){},
                          child: const Text(
                            "Sign In",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20
                            ),
                          )),
                    ),
                    Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 10)),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Stack(
                children:[
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: SizedBox(
                      width: 150,
                      // height: 300,
                      child: Image.asset("images/dots.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
