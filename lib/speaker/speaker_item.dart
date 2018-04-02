import 'package:flutter/material.dart';
import 'package:gonfi/widget/tag.dart';

const String _DOT = "\u2022";

class SpeakerItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: new Text("Speaker"),
      ),
      body: new Padding(
        padding: const EdgeInsets.all(8.0),
        child: new Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              buildHeader(),
              buildContet(),
              new Divider(),
              buildBottom(),
            ],
          ),
        ),
      ),
    );
  }

  Container buildHeader() {
    return Container(
      height: 256.0,
      child: Stack(
        children: <Widget>[
          buildImage(),
          buildGradient(),
          buildBages(),
          new Positioned(bottom: 0.0, child: buildBottomImageText()),
        ],
      ),
    );
  }

  Container buildGradient() {
    return Container(
      decoration: new BoxDecoration(
          gradient: new LinearGradient(
              begin: Alignment.bottomRight,
              colors: [Colors.black.withOpacity(0.50), Colors.transparent])),
    );
  }

  Container buildImage() {
    return Container(
      decoration: new BoxDecoration(
        image: new DecorationImage(
          fit: BoxFit.cover,
          alignment: FractionalOffset.center,
          image: new NetworkImage(
              "https://2016.devfest.ch/images/people/hasan_hosgel.jpg"),
        ),
      ),
    );
  }

  Widget buildBages() {
    const bagesStyle =
        const TextStyle(fontWeight: FontWeight.w700, color: Colors.white);
    return new Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          new Text("GDG", style: bagesStyle),
          new Text(
            _DOT,
            style: bagesStyle,
          ),
          new Text(
            "GDE",
            style: bagesStyle,
          )
        ],
      ),
    );
  }

  Widget buildBottomImageText() {
    const nameStyle = TextStyle(fontSize: 24.0, color: Colors.white);
    const nameTitle = TextStyle(fontSize: 14.0, color: Colors.white);
    return new Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Text(
            "Hasan Hosgel",
            style: nameStyle,
          ),
          new Text(
            "Berlin, Germany",
            style: nameTitle,
          )
        ],
      ),
    );
  }

  Widget buildContet() {
    return new Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          new Expanded(
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Center(
                  child: new Container(
                    child: Image.network(
                        "https://2016.devfest.ch/images/logos/immo_scout_24.png"),
                    height: 25.0,
                  ),
                ),
                new Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 8.0, horizontal: 0.0),
                  child: new Row(
                    children: <Widget>[
                      new Text("Skills:"),
                      new Tag(text: "Mobile", color: Colors.lightGreen),
                      new Tag(text: "Android", color: Colors.green),
                      new Tag(text: "Performance", color: Colors.orange),
                    ],
                  ),
                ),
                new Text(
                    "Hasan Hoşgel is a dedicated Android developer with over fiveteen years of professional programming experience.")
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildBottom() {
    return new Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 8.0),
      child: new Row(
        children: <Widget>[
          new Container(
            width: 40.0,
            height: 36.0,
            child: new Icon(
              Icons.image,
              color: Colors.grey,
            ),
          ),
          new Container(
            width: 40.0,
            height: 36.0,
            child: new Icon(
              Icons.image,
              color: Colors.grey,
            ),
          ),
          new Container(
            width: 40.0,
            height: 36.0,
            child: new Icon(
              Icons.image,
              color: Colors.grey,
            ),
          ),
          new Container(
            width: 40.0,
            height: 36.0,
            child: new Icon(
              Icons.image,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
