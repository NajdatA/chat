import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  String message = '';

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat App'),
      ),
      bottomSheet: Padding(
        padding: const EdgeInsets.only(left: 8.0, bottom: 8),
          child: Container(
            width: MediaQuery.of(context).size.width,
          height: 50,
            child: Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width - 60,
                  height: 50,
                  child: TextField(
                    onChanged: (x) {
                      message = x;
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                      hintText: 'Type a message'
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {

                  },
                  icon: Icon(Icons.send),
                )
              ],
            ),
          ),
//        ),
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          Padding(
            padding: EdgeInsets.only(top: MediaQuery.of(context).size.height/10, left: MediaQuery.of(context).size.width/15, right: MediaQuery.of(context).size.width/2),
            child: Container(
//              height: MediaQuery.of(context).size.height/20,
//              width: 1,
              decoration: BoxDecoration(
                color: Colors.greenAccent,
                borderRadius: BorderRadius.circular(20)
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Hi man', style: TextStyle(fontSize: 17),),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: MediaQuery.of(context).size.height/10, left: MediaQuery.of(context).size.width/2, right: MediaQuery.of(context).size.width/15),
            child: Container(
//              height: MediaQuery.of(context).size.height/10,
//              width: MediaQuery.of(context).size.width/7,
              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(20)
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Hi man', style: TextStyle(color: Colors.black, fontSize: 17),),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
