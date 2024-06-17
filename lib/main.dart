import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  var _width = 300.0;
  var _height = 200.0;
  bool flag = true;
  Color bgColor = Colors.orangeAccent;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Animated Container'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
                width: _width,
                height: _height,
                color: bgColor,
                curve: Curves.easeInOutBack,
                duration: Duration(seconds: 2)),

            SizedBox(height: 30),

            ElevatedButton(onPressed: (){

              setState(() {

              if(flag){
                _width = 200.0;
                _height = 300.0;
                bgColor = Colors.cyanAccent;
                flag = false;
              }else{
                _width = 300.0;
                _height = 200.0;
                bgColor = Colors.orangeAccent;
                flag = true;
              }

              });

            }, child: Text('Animate!')
            )
          ],
        ),
      ),
    );
  }
}
