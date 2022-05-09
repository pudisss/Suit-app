import "package:flutter/material.dart";


class OpenContainers extends StatefulWidget {
  final filepath;
  final title;
  final price;

  OpenContainers(this.filepath, this.title, this.price);

  @override
  State<OpenContainers> createState() => _OpenContainersState(this.filepath, this.title, this.price);
}

class _OpenContainersState extends State<OpenContainers> {
  final filepath;
  final title;
  final price;
  final List<String> listfilepath = [
    "assets/images/suit1.png",
    "assets/images/suit2.png",
    "assets/images/suit3.png",
    "assets/images/suit4.png"
  ];
  _OpenContainersState(this.filepath, this.title, this.price);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 490.82,
            decoration: BoxDecoration(
              color: Color.fromRGBO(34, 38, 42, 1),
              
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(filepath)
              )
            ),
            child: Column(
              children: [
                Container(
                  
                  width: MediaQuery.of(context).size.width,
                  height: 100,
                  color: Colors.transparent,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 50, left: 25),
                        child: GestureDetector(
                          child: Image.asset("assets/images/Menu.png", color: Colors.white,)
                        )
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 50, right: 25),
                        child: GestureDetector(
                          child: Icon(Icons.heart_broken, color: Colors.white)
                        )
                      )

                    ]
                  )
                ),
                Spacer(),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(bottom: 50, left: 25),
                  child: Column(
                    children: [
                      Text(title, style: TextStyle(fontFamily: "Poppins", fontSize: 30, color: Colors.white, fontWeight: FontWeight.w700))
                    ]
                  )
                )
              ]
            )
          ),
          Expanded(
            child: Column(
              children: [
                Container(
                  height: 135,
                  margin: EdgeInsets.only(top: 20),
                  
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (context, i) {
                      return Container(
                        height: 135,
                        width: 90,
                        margin: EdgeInsets.only(left: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: AssetImage(listfilepath[i])
                          )
                        )
                      );
                    }
                  )
                ),
                Container(
                  width: 362.95,
                  height: 78,
                  margin: EdgeInsets.only(top: 10, left: 20),
                  child: Text("If you already own black tuxedo pants, all you need is this Formal man jacket for an unforgettable outfit (and night).", style: TextStyle(fontFamily: "Poppins", fontSize: 15, color: Colors.black.withOpacity(0.5), fontWeight: FontWeight.w400))
                ),
                Positioned(
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        
                        Container(
                          width: 212.05,
                          height: 59.1,
                          decoration:BoxDecoration(
                            color: Color.fromRGBO(89, 110, 121, 1),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Center(
                            child: Text("ADD TO CARD", style: TextStyle(fontFamily: "Poppins", fontSize: 18, color: Colors.white, fontWeight:FontWeight.w700))
                          )
                        ),
                        Container(
                          child: Text(price, style: TextStyle(fontFamily: "Poppins", fontSize: 30, fontWeight: FontWeight.w700, color: Colors.black))
                        )
                      ]
                    )
                  )
                )
              ]
            )

          )
        ]
      )
    );
  }
}