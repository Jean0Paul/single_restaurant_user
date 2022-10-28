import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:singlerestaurant/pages/Cart/orderpayment/orderpaystack.dart';

class Chat_screen extends StatefulWidget {
  const Chat_screen({Key? key}) : super(key: key);

  @override
  State<Chat_screen> createState() => _Chat_screenState();
}

class _Chat_screenState extends State<Chat_screen> {
 
 _sendMessageArea(){
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        height: 70,
        color: Colors.grey,
        child: Row(
            children: <Widget>[
                  IconButton(
                    icon: const Icon(Icons.photo),
                    iconSize: 25,
                    color: Theme.of(context).primaryColor,
                    onPressed: () {},
                    ),
                    const TextField(
                      decoration: InputDecoration.collapsed(hintText: 'envoyer message'),
                      textCapitalization: TextCapitalization.sentences,
                    ),
                  IconButton(
                    icon: const Icon(Icons.send),
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
         Expanded(
          child:  Column(
            children: <Widget>[
              Container(
                
              ),
            ],
           ),
          ),
            _sendMessageArea(),
        ],
      ),
    );
  }
}