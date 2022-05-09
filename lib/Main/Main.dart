import "package:flutter/material.dart";
import "package:animations/animations.dart";
import "Homescreen.dart";

class Main extends StatefulWidget {
  const Main({ Key? key }) : super(key: key);

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("assets/images/background.png")
          )
        ),
        child: Column(
          children: [
            Spacer(),
            Container(
              
              alignment: Alignment.bottomCenter,
              width: MediaQuery.of(context).size.width,
              height: 308.76,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fitHeight,
                  image: AssetImage("assets/images/textsection.png")
                )
              ),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(left: 20),
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Text("Our Popular",textAlign: TextAlign.left, style: TextStyle(fontFamily: "Poppins", fontSize: 40, color: Colors.white, fontWeight: FontWeight.w700))),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Text("product jackets",textAlign: TextAlign.left, style: TextStyle(fontFamily: "Poppins", fontSize: 40, color: Colors.white, fontWeight: FontWeight.w700)))
                      ]
                    )

                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Homescreen()
                        )
                      );
                    },

                    child: Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(top: 80, left: 160,),
                    width: 214.24,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(199, 177, 152, 1),
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(20), bottomLeft: Radius.circular(20))
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          child: Text("Next", style: TextStyle(fontFamily: "Poppins", fontSize: 25, color: Colors.white, fontWeight: FontWeight.w600))
                        ),
                        Container(
                          child: Image.asset("assets/images/next.png")
                        )

                      ]
                    )
                  ))
                  
                ]
              )
            )
          ]
        )
      )
    );
  }
}