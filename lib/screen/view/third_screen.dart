import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ios_app/screen/provider/third_provider.dart';
import 'package:provider/provider.dart';

class thirdscreen extends StatefulWidget {
  const thirdscreen({Key? key}) : super(key: key);

  @override
  State<thirdscreen> createState() => _thirdscreenState();
}

class _thirdscreenState extends State<thirdscreen> {
  ThirdProvider? thirdProvider;
  @override
  Widget build(BuildContext context) {
    thirdProvider = Provider.of<ThirdProvider>(context,listen: false);
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
         backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.today),),
          BottomNavigationBarItem(icon: Icon(Icons.sports_esports_outlined),),
          BottomNavigationBarItem(icon: Icon(Icons.apps),),
        ],
      ),
      tabBuilder: (context, index) => thirdProvider!.screenList[index],
    );
  }
}
