import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utlis/image_helper.dart';

class secondscreen extends StatefulWidget {
  const secondscreen({Key? key}) : super(key: key);

  @override
  State<secondscreen> createState() => _secondscreenState();
}

class _secondscreenState extends State<secondscreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CupertinoPageScaffold(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 5,
              ),
              Text(
                "Sunday April 12",
                style: TextStyle(color: Colors.grey, fontSize: 15),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Text("Game",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold)),
                  Spacer(),
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage("assets/images/am.png"),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "New Game",
                style: TextStyle(color: Colors.blue, fontSize: 11),
              ),
              Text(
                "Warmer IOS Best Game Ever",
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
              Text(
                "Warmer IOS Best Game Ever",
                style: TextStyle(color: Colors.grey, fontSize: 13),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                width: double.infinity,
                height: 200,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    "assets/images/bg.jpeg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 10,),
              CupertinoListTile(title: Text("Discover More Game",
                style: TextStyle(color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),),
                trailing: Text("See All",
                  style: TextStyle(color: Colors.black, fontSize: 12),),
              ),
              Expanded(child: Container(
                child: ListView.builder(itemBuilder: (context, index) =>
                    gameBox(gameImg[index],
                        gameName[index]),
                    itemCount: 4,
                    shrinkWrap: true),
              ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget gameBox(String img, String gname) {
    return Padding(padding: EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 90,
            width: 90,
            decoration: BoxDecoration(
              color: Colors.grey, borderRadius: BorderRadius.circular(20),),
            child: ClipRRect(borderRadius: BorderRadius.circular(20),
              child: Image.asset("${img}", fit: BoxFit.cover),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 5,
              ),
              Text("${gname}",
                style: TextStyle(color: Colors.black, fontSize: 18,),),
              Text("Unity Game Dev. Inc",
                style: TextStyle(fontSize: 12, color: Colors.grey),),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 30,
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.blue.shade50,
                  borderRadius: BorderRadius.circular(40),
                  border: Border.all(color: Colors.blue),),
                alignment: Alignment.center,
                child: Text("Get", style: TextStyle(color: Colors.blue,
                    fontSize: 21,
                    fontWeight: FontWeight.bold)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
