import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Chat extends StatelessWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search),color: Colors.black,onPressed: () {Navigator.pop(context);}),
          IconButton(onPressed: () {}, color: Colors.black, icon:  Icon(Icons.add)),
        ],
      ),
        body: Column(
          children: <Widget> [
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 15,
              ),
              child: Column(
                children: [
                  Row(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(40)),
                            border: Border.all(
                                width: 2,
                                color: Theme.of(context).cardColor
                            ),
                            //shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 5,
                              ),
                            ]
                        ),     
                        child: const CircleAvatar(
                          radius: 35,
                          backgroundImage: AssetImage('Assets/Image/defaultuserprofile.png'),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.65,
                        padding: EdgeInsets.only(left: 20,),
                        child: Column(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const <Widget>[
                                Text(
                                  'Carole',
                                  style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                                Text('12:30pm', style: TextStyle(
                                    fontSize: 11,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.black54,
                                 ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              child: const Text('salut tout le monde ça va j\'espere on est de retour vous pouvez passer, sachez que sa sera payant',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.black54
                                ),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                            ),),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
       ),
    );
  }
}

