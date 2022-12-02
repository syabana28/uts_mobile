import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' show AppBar, BorderSide, BuildContext, Card, Center, CircleAvatar, Colors, Column, Container, ElevatedButton, FloatingActionButton, FontWeight, Icon, IconButton, Icons, InputDecoration, MainAxisAlignment, MaterialApp, MaterialPageRoute, Navigator, OutlineInputBorder, Scaffold, SizedBox, State, StatefulWidget, StatelessWidget, Text, TextFormField, TextStyle, Theme, Widget, runApp;

void main() {
 runApp(new MaterialApp(
  home: new CardProfile(),
  title: "Navigasi",
  routes: <String, WidgetBuilder>{
    '/CardProfile' :(BuildContext context) => new CardProfile(),
    '/MainScreen': (BuildContext context ) => new MainScreen()
  },
  ));
}

class CardProfile extends StatelessWidget {
  const CardProfile({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        // ignore: avoid_unnecessary_containers
        body: Container(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 50.0,
              child: Icon(
                Icons.person,
                size: 50,
                color: Colors.white,
              ),
            ),
            Text(
              'Bana',
              style: TextStyle(
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'FLLUTER DEVLOPER',
              style: TextStyle(
                  color: Colors.teal.shade100,
                  fontSize: 20.0,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black87)),
                  prefixIcon: Icon(
                    Icons.person,
                    size: 40,
                  ),
                  hintText: "User",
                  hintStyle: TextStyle(color: Colors.black87),
                  labelText: "Masukan User",
                  labelStyle: TextStyle(color: Colors.black87)),
            ),
            SizedBox(
              height: 30,
            ),
            TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black87)),
                  prefixIcon: Icon(
                    Icons.lock,
                    size: 40,
                  ),
                  hintText: "Pass",
                  hintStyle: TextStyle(color: Colors.black87),
                  labelText: "Masukan Pass",
                  labelStyle: TextStyle(color: Colors.black87)),
            ),
            Card(
              elevation: 5,
              child: Container(
                child: Center(
                  child: ElevatedButton(
                    child: const Text('Masuk'),
                    onPressed: () {
                      Navigator.pushNamed(
                        context, '/MainScreen'
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }
}


class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main Screen'),
      ),
      body: ListView(
        children: <Widget>[
          new Container(
            padding: new EdgeInsets.all(20.0),
            child: new Center(
              child: Column(
                children: <Widget>[
                   Image(image: NetworkImage("https://i.pinimg.com/736x/4c/30/b0/4c30b0ec32f24aab65d1305aa035f2a2.jpg"),width: 200.0,),
                  new Text("Sop Kambing", style: new TextStyle(fontSize: 20.0),),
                  Image(image: NetworkImage("https://awsimages.detik.net.id/community/media/visual/2020/07/21/nasi-goreng-kambing-mas-haryo.jpeg?w=768"),width: 200.0,),
                  new Text("Nasi Goreng Kambing", style: new TextStyle(fontSize: 20.0),),
                  Image(image: NetworkImage("https://lh5.googleusercontent.com/proxy/YAIty77q7z8w00n5S2ZDcCRFe1APp0klfnNOpOpVjFkBsqA0lH8jj9kRmGLYHwmc_2IqCcF4HjaG-vLPa8eZptHk6QOmtMXpVZTraM_uIibTY7lirqc7PpkuoyHiAVfMC8O_J_qSgC4kkO6SkIdmtyIN9b4hN9EPaxRjDiA=w1200-h630-p-k-no-nu"),width: 200.0,),
                  new Text("Lalapan", style: new TextStyle(fontSize: 20.0),),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}


class DetailScreen extends StatelessWidget {
const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Center(
          child: Image.network(
            'https://i.pinimg.com/736x/4c/30/b0/4c30b0ec32f24aab65d1305aa035f2a2.jpg',
          ),
        ),
      ),
    );
  }
}

