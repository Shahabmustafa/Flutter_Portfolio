import 'package:flutter/material.dart';

class DrawerPage extends StatefulWidget {
  const DrawerPage({Key? key}) : super(key: key);

  @override
  State<DrawerPage> createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 200.0,
      backgroundColor: Colors.black,
      child: ListView(
        padding: EdgeInsets.symmetric(horizontal: 40.0,vertical: 60),
        children: [
          ListTile(
            title: Text("Home",
            style: TextStyle(color: Colors.white),),
            onTap: (){

            },
          ),
          SizedBox(
            height: 20.0,
          ),
          ListTile(
            title: Text("About",style: TextStyle(color: Colors.white)),
            onTap: (){

            },
          ),
          SizedBox(
            height: 20.0,
          ),
          ListTile(
            title: Text("Skills",style: TextStyle(color: Colors.white)),
            onTap: (){

            },
          ),
          SizedBox(
            height: 20.0,
          ),
          ListTile(
            title: Text("Project",style: TextStyle(color: Colors.white)),
            onTap: (){

            },
          ),
          SizedBox(
            height: 20.0,
          ),
          ListTile(
            title: Text("Certificate",style: TextStyle(color: Colors.white)),
            onTap: (){

            },
          ),
          SizedBox(
            height: 20.0,
          ),
          ListTile(
            title: Text("Contact",style: TextStyle(color: Colors.white)),
            onTap: (){

            },
          ),
        ],
      ),
    );
  }
}
