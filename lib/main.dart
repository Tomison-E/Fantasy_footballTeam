import 'package:flutter/material.dart';
import 'package:fantasy_football/widgets/player.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Fantasy Football",
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final double _width = MediaQuery.of(context).size.width;
    final double _height = MediaQuery.of(context).size.height;
    final double _fieldH = 0.6773399 * _height;
    return new Container(
        child: new Scaffold(
            backgroundColor: Colors.green,
            appBar: new AppBar(
              backgroundColor: Colors.green,
              elevation: 0.0,
              centerTitle: true,
              title: new Text('DCS'),
              leading: new IconButton(
                icon: new Icon(Icons.menu),
                onPressed: () {},),
              actions: <Widget>[
                new IconButton(
                  icon: new Icon(
                    Icons.search,
                    size: 26.0,),
                  onPressed: () {},),],),
            body: SafeArea(
                child: ListView(children: [
             SizedBox(height: 15.0),
              Container(child: Image.asset('assets/images/player 1.png', height: (0.13546798 * _height), width: _width)),
              SizedBox(height: 10.0),
              Stack(children: [
                Container(
                  child: Image.asset('assets/images/field.png', fit: BoxFit.fill),
                  height: _fieldH,
                  width: _width,),
                Player(image: 'assets/images/gk.png', name: 'Lala', top: 0.07272727 * _fieldH, right: 0.0, left: 0.0, position: "GK"),
                Player(image: 'assets/images/defender.png', name: 'Ay Jand', top: 0.21818182 * _fieldH, right: 0.70666667 * _width, left: 0.0, position: "RB"),
                Player(image: 'assets/images/defender.png', name: 'Wole', top: 0.23636364 * _fieldH, right: 0.29333333 * _width, left: 0.0, position: "CB"),
                Player(image: 'assets/images/defender.png', name: 'Big Ay', top: 0.23636364 * _fieldH, right: 0.0, left: 0.29333333 * _width, position: "CB"),
                Player(image: 'assets/images/defender.png', name: 'George', top: 0.21818182 * _fieldH,right: 0.0, left: 0.70666667 * _width, position: "LB"),
                Player(image: 'assets/images/wings.png', name: 'Prince', top: 0.47272727 * _fieldH, right: 0.0, left: 0.70666667 * _width, position: "LMF"),
                Player(image: 'assets/images/wings.png', name: 'Tayo', top: 0.45454545 * _fieldH, right: 0.01333333 * _width, left: 0.0, position: "AMF"),
                Player(image: 'assets/images/wings.png', name: 'Efosa', top: 0.47272727 * _fieldH, right: 0.70666667 * _width, left: 0.0, position: "RMF"),
                Player(image: 'assets/images/striker.png', name: 'Elijah', top: 0.69090909 * _fieldH, right: 0.29333333 * _width, left: 0.29333333 * _width, position: "CF"),
                Player(image: 'assets/images/wings.png', name: 'Iyanu', top: 0.69090909 * _fieldH, right: 0.44 * _width, left: 0.0, position: "RWF"),
                Player(image: 'assets/images/wings.png', name: 'Tomisin', top: 0.69090909 * _fieldH, right: 0.17333333 * _width, left: 0.65333333 * _width, position: "LWF")]),]))));}}

