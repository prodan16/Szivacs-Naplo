import 'package:flutter/material.dart';
import '../Datas/Note.dart';
import '../globals.dart' as globals;

class NoteCard extends StatelessWidget {
  Note note;

  NoteCard(Note note){
    this.note = note;
  }

  String getDate(){
    return note.date;
  }
  @override
  Key get key => new Key(getDate());

  @override
  Widget build(BuildContext context) {
    if (!note.isEvent)
    return new Card(
      color: Colors.lightBlue,
      child: new Column(
        children: <Widget>[
          new Container(
            child: /*new Row(
              children: <Widget>[*/
                new Text(note.title, style: new TextStyle(fontSize: 21.0, color: Colors.white, fontWeight: FontWeight.bold),),
//              ],
//            ),
            margin: EdgeInsets.all(10.0),
          ),

          new Container(
            child: new Text(note.content, style: new TextStyle(fontSize: 17.0, color: Colors.white),),
            padding: EdgeInsets.all(10.0),
          ),

          globals.multiAccount ? new Container(
            child: new Text(note.date.substring(0, 10), style: new TextStyle(fontSize: 16.0, color: Colors.white)),
            alignment: Alignment(1.0, -1.0),
            padding: EdgeInsets.fromLTRB(5.0, 5.0, 10.0, 5.0),
          ) : new Container(),

          new Divider(height: 1.0,color: Colors.white,),
          new Container(
              color: Colors.blue,
              child: new Padding(
                padding: new EdgeInsets.all(7.0),
                child: new Row(
                  children: <Widget>[
                    new Divider(),

                    new Padding(
                      padding: new EdgeInsets.all(7.0),
                      child: new Icon(Icons.share, color: Colors.white,),
                    ),
                    new Padding(
                      padding: new EdgeInsets.all(7.0),
                      child: new Text('Share',style: new TextStyle(fontSize: 18.0, color: Colors.white),),
                    ),
                    !globals.multiAccount ? new Expanded(
                        child: new Container(
                          child: new Text(note.date.substring(0, 10), style: new TextStyle(fontSize: 18.0, color: Colors.white)),
                          alignment: Alignment(1.0, 0.0),
                        )) : new Container(),

                    globals.multiAccount ? new Expanded(
                      child: new Container(
                        child: new Text(note.owner.name, style: new TextStyle(color: Colors.white, fontSize: 15.0)),
                        alignment: Alignment(1.0, -1.0),
                      ),
                    ) : new Container(),

                  ],
                ),
              )
          )
        ],
      ),
    );
    else
    return new Card(
      color: Colors.lightBlue,
      child: new Column(
        children: <Widget>[

          new Container(
            child: new Text(note.content, style: new TextStyle(fontSize: 17.0, color: Colors.white),),
            padding: EdgeInsets.all(10.0),
          ),

          globals.multiAccount ? new Container(
            child: new Text(note.date.substring(0, 10), style: new TextStyle(fontSize: 16.0, color: Colors.white)),
            alignment: Alignment(1.0, -1.0),
            padding: EdgeInsets.fromLTRB(5.0, 5.0, 10.0, 5.0),
          ) : new Container(),

          new Divider(height: 1.0,color: Colors.white,),
          new Container(
              color: Colors.blue,
              child: new Padding(
                padding: new EdgeInsets.all(7.0),
                child: new Row(
                  children: <Widget>[
                    new Divider(),

                    new Padding(
                      padding: new EdgeInsets.all(7.0),
                      child: new Icon(Icons.share, color: Colors.white,),
                    ),
                    new Padding(
                      padding: new EdgeInsets.all(7.0),
                      child: new Text('Share',style: new TextStyle(fontSize: 18.0, color: Colors.white),),
                    ),
                    !globals.multiAccount ? new Expanded(
                        child: new Container(
                          child: new Text(note.date.substring(0, 10), style: new TextStyle(fontSize: 18.0, color: Colors.white)),
                          alignment: Alignment(1.0, 0.0),
                        )) : new Container(),

                    globals.multiAccount ? new Expanded(
                      child: new Container(
                        child: new Text(note.owner.name, style: new TextStyle(color: Colors.white, fontSize: 15.0)),
                        alignment: Alignment(1.0, -1.0),
                      ),
                    ) : new Container(),
                  ],
                ),
              )
          )
        ],
      ),
    );


  }
}