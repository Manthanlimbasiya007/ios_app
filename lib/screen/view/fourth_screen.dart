import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utlis/image_helper.dart';

class fourthscreen extends StatefulWidget {
  const fourthscreen({Key? key}) : super(key: key);

  @override
  State<fourthscreen> createState() => _fourthscreenState();
}

class _fourthscreenState extends State<fourthscreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CupertinoPageScaffold(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 5,),
              Text("Sunday April 12",
                  style: TextStyle(color: Colors.grey, fontSize: 15)),
              SizedBox(height: 5,),
              Row(
                children: [
                  Text("Apps", style: TextStyle(color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold)),
                  Spacer(),
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage("assets/images/bg.jpg"),
                  ),
                  SizedBox(width: 10,),
                ],
              ),
              SizedBox(height: 5,),
              Text("New Game",
                  style: TextStyle(color: Colors.blue, fontSize: 11)),
              Text("Warmer IOS Best Game Ever",
                  style: TextStyle(color: Colors.black, fontSize: 16,)),
              Text("Warmer IOS Best Game Ever",
                  style: TextStyle(color: Colors.grey, fontSize: 13,)),
              SizedBox(height: 5,),
              Container(
                height: 200,
                width: double.infinity,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ClipRRect(borderRadius: BorderRadius.circular(10),
                    child: Image.asset("assets/images/bg.jpg", fit: BoxFit.cover)),
              ),
              SizedBox(height: 10,),
              CupertinoListTile(title: Text("Discover More Game",
                style: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold,fontSize:
                    20),),
                  trailing: Text("See all",
                    style: TextStyle(fontSize: 12, color: Colors.blue),)),
              Expanded(
                child: Container(
                  child: ListView.builder(itemBuilder: (context, index) =>
                      gameBox(appImg[index], appName[index]),
                      shrinkWrap: true,
                      itemCount: 4),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget gameBox(String img, String gname) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 90,
            width: 90,
            decoration: BoxDecoration(
                color: Colors.grey, borderRadius: BorderRadius.circular(20)),
            child: ClipRRect(borderRadius: BorderRadius.circular(20),
                child: Image.asset("${img}", fit: BoxFit.cover)),
          ),
          SizedBox(width: 10,),
          Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10,),
                  Text("${gname}",
                    style: TextStyle(color: Colors.black, fontSize: 18),),
                  Text("Unity Game Dev. Inc.",
                    style: TextStyle(color: Colors.grey, fontSize: 12,),),
                  SizedBox(height: 10,),
                ],
              ),
              SizedBox(width: 20,),
              Container(
                height: 30,
                width: 50,
                decoration: BoxDecoration(
                    color: Colors.blue.shade50,
                    borderRadius: BorderRadius.circular(40),
                    border: Border.all(color: Colors.blue)
                ),
                alignment: Alignment.center,
                child: Text("GET", style: TextStyle(color: Colors.blue,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
