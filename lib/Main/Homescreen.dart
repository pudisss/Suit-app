import "package:flutter/material.dart";
import "package:animations/animations.dart";
import "opencontainer.dart";


class Homescreen extends StatefulWidget {
  const Homescreen({ Key? key }) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  final List<String> listview = [
    "Suits",
    "Bags",
    "Watch",
    "Headphone",
  ];

  final List<String> gridfilepath = [
    "assets/images/list1.png",
    "assets/images/list2.png",
    "assets/images/list1.png"
  ];
  final List<String> gridtitle = [
    "Formal man jacket",
    "Wow Wedding jacket",
    "Formal man jacket",
  ];
  final List<String> gridprice = [
    r"$500.25",
    r"$450.50",
    r"$500.25"
  ];
  final List<String> mainfilepath = [
    "assets/images/bigsuit1.png",
    "assets/images/bigsuit2.png",
    "assets/images/bigsuit3.png"
  ];

  double width = 364;
  double height = 227.68;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          child: Image.asset("assets/images/Menu.png"),
        ),
        backgroundColor: Color.fromRGBO(251, 251, 251, 1),
        elevation: 0,
        actions: [
          GestureDetector(
            child: Icon(Icons.search, color: Colors.black),
          ),
          GestureDetector(
            child: Icon(Icons.person, color: Colors.black),
          )
        ]
      ),
      body: SingleChildScrollView(child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Color.fromRGBO(251, 251, 251, 1),
        child: Column(
          
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 50, left: 10),
                    child: SizedBox(
                      width: 298.85,
                      height: 60,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide.none,
                          ),
                          fillColor: Colors.white,
                          filled: true,
                          hintText: "Suits..",
                          hintStyle: TextStyle(fontFamily: "Poppins", fontSize: 16, color: Colors.black.withOpacity(0.5)),
                          prefixIcon: Icon(Icons.search, color: Colors.black.withOpacity(0.5))
                        )
                      )


                    )
                  ),
                  Container(
                    width: 45.46,
                    height: 60,
                    margin: EdgeInsets.only(top: 50),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromRGBO(89, 110, 121, 1),
                    ),
                    child: Center(
                      child: Image.asset("assets/images/slide.png")
                    )
                  )
                ]
              )
            ),
            Container(
              height: 50,
              margin: EdgeInsets.only(top: 20),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: listview.length,
                itemBuilder: (context, i) {
                  return Container(
                    height: 48,
                    width: 72.52,
                    margin: EdgeInsets.only(left: 20),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(89, 110, 121, 0.06),
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Center(
                      child: Text(listview[i], style: TextStyle(fontFamily: "Poppins", fontSize: 12, color: Colors.black, fontWeight: FontWeight.w400))
                    )

                  );
                }
              )
            ),
            Expanded(
              
              child: GridView.count(
                crossAxisCount: 1,
                scrollDirection: Axis.vertical,
                
                childAspectRatio: (width / height),
                children: List.generate(gridfilepath.length, (index) {
                  
                  return OpenContainer(
                    openBuilder: (context, action) => OpenContainers(mainfilepath[index], gridtitle[index], gridprice[index]),
                    closedBuilder: (context, action) => Container(
                    
                    margin: EdgeInsets.only(),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(gridfilepath[index])
                      )
                    ),
                    child: Container(
                      
                      child: Column(
                        
                        children: [
                          Container(
                            alignment: Alignment.centerRight,
                            margin: EdgeInsets.only(left: 150, top: 75),
                            
                            

                            child: Column(
                              children: [
                                Container(
                                  alignment: Alignment.centerLeft,
                                  
                                  child: Text(gridtitle[index],style: TextStyle(fontFamily: "Poppins", fontSize: 18, color: Colors.white, fontWeight: FontWeight.w500))
                                ),
                                Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text(r"$450.55", style: TextStyle(fontFamily: "Poppins", fontSize: 18, color: Colors.white, fontWeight: FontWeight.w500))
                                ),
                                Container(
                                  width: 40,
                                  height: 40,
                                  margin: EdgeInsets.only(top: 20),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color.fromRGBO(89, 110, 121, 1)
                                  ),
                                  child: Center(child: Text("+", style: TextStyle(fontFamily: "Poppins", fontSize: 18, color: Colors.white, fontWeight: FontWeight.w500)))
                                )
                              ]
                            )
                          )
                        ]
                      )
                    )
                    
                    
                    
                  ));
                })
              )
            )
          ]
        )

      )
    ));
  }
}