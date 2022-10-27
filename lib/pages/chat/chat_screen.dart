import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Chat_screen extends StatefulWidget {
  const Chat_screen({Key? key}) : super(key: key);

  @override
  State<Chat_screen> createState() => _Chat_screenState();
}

class _Chat_screenState extends State<Chat_screen> {
 
 _sendMessageArea(){
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 8),
        height: 70,
        color: Colors.white,
        child: Row(
            children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.photo),
                    iconSize: 25,
                    color: Theme.of(context).primaryColor,
                    onPressed: () {},
                    ),
                    TextField(
                      decoration: InputDecoration.collapsed(hintText: 'envoyer message'),
                      textCapitalization: TextCapitalization.sentences,
                    ),
                  IconButton(
                    icon: Icon(Icons.send),
                    iconSize: 25,
                    color: Theme.of(context).primaryColor,
                    onPressed: () {},
                    ),
            ],
        ),
    );
 }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Carole',
          
          ),
        leading: IconButton(icon: Icon(Icons.arrow_back_ios),color: Colors.black,onPressed: () {Navigator.pop(context);},
        ),
      ),
      body: Column(
        children: <Widget>[
          Column(
            children: [
              Container(
                
              ),
            ],
          ),
          _sendMessageArea(
            
          ),
        ],
      ),
    );
  }
}
