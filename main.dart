import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorSchemeSeed: Colors.blue,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DEVS X P2P"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Image(
                image: NetworkImage(
                    "https://media.licdn.com/dms/image/v2/C4D0BAQE8MA5SwG9-tQ/company-logo_200_200/company-logo_200_200/0/1663574766757?e=2147483647&v=beta&t=dtRBeYr8LtfEl2ufFndUigD5OLlhLlfsdpeK3T_nTDY")),
            Text(
              "Welcome to Devs x P2P",
              style: TextStyle(
                fontSize: 54,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Newpage()),
          );
        },
        child: Icon(Icons.navigate_next),
      ),
    );
  }
}

class Newpage extends StatelessWidget {
  const Newpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
    );
  }
}
