import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints){
        if (constraints.maxWidth>1200) {
          return DesktopNavbar();
        } else if(constraints.maxWidth>800 && constraints.maxWidth<1200){
          return DesktopNavbar();
        } else {
          return MobileNavbar();
        }
      },
    );
  }
}

class DesktopNavbar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Container(
        constraints: BoxConstraints(maxHeight: 1200),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              "Inspire LED Studio",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue,
                fontSize: 30,
              ),
              ),
              Row(
                children: <Widget>[
                  Text("Home", style: TextStyle(color: Colors.white),),
                  SizedBox(width: 30,) ,
                  Text("About", style: TextStyle(color: Colors.white),),
                  SizedBox(width: 30,) ,
                  Text("Portfolio", style: TextStyle(color: Colors.white),),
                  SizedBox(width: 30,) ,
                  MaterialButton(
                    color: Colors.deepOrange,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                    onPressed: (){},
                    child: Text(
                      "Get Started",
                      style: TextStyle(color: Colors.white),
                      ),
                  )

              ],)
          ],
          ),
      ),
    );
  }
}

class MobileNavbar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("The Mobile View!"),
    );
  }
}