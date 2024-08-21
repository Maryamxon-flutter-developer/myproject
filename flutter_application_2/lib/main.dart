
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MaterialApp(
    home: MyWidget(),
  ));
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
   
    List<Oddiy> cofe = [
      Oddiy(
          rasm: "assets/cofe6.jpeg",
          cofe: "Cappucino",
          text: "with Out Milk",
          son: "4.2",
          son2: "4.20"),
      Oddiy(
          rasm: "assets/cofe4.jpeg",
          cofe: "Espresso",
          text: "with Chocolate",
          son: "4.5",
          son2: "5.10"),
      Oddiy(
          rasm: "assets/cofe2.png",
          cofe: "Red Eye",
          text: "with White Milk",
          son: "4.1",
          son2: "2.86"),
      Oddiy(
          rasm: "assets/cofe7.jpeg",
          cofe: "Americano",
          text: "with Out Milk",
          son: "4.0",
          son2: "7.56"),
      Oddiy(
          rasm: "assets/cofe8.jpg",
          cofe: "Long Black",
          text: "with Chocolate",
          son: "2.2",
          son2: "1.14"),
      Oddiy(
          rasm: "assets/cofe4.jpeg",
          cofe: "Machination",
          text: "with White Milk",
          son: "3.2",
          son2: "6.72"),
      Oddiy(
          rasm: "assets/cofe1.jpeg",
          cofe: "Double",
          text: "with White Milk",
          son: "1.2",
          son2: "2.66"),
    ];
  String nom = "Find the best ";
  TextEditingController ism = TextEditingController();
  @override
  Widget build(BuildContext context) {
   
  
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50, left: 30),
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 73, 73, 73),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(Icons.apps),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 50, right: 30),
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: AssetImage(
                                  "assets/cofe4.jpeg"),
                              fit: BoxFit.cover)),
                    ),
                  ),
                )
              ],
            ),
            SingleChildScrollView(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30, top: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text( nom,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Coffee for you ",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold,),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
        Padding(
  padding: const EdgeInsets.only(top: 10, left: 30, right: 30),
  child: TextField(
    autofocus: true,
    controller: ism,
    decoration: InputDecoration(
      filled: true,
      fillColor:  Color.fromARGB(255, 74, 72, 72),
      // Adding IconButton to the left side (prefixIcon)
      prefixIcon: IconButton(
        icon: Icon(Icons.coffee, color: Colors.grey),
        onPressed: () {
          setState(() {
            nom = ism.text;
          });
       
        },
      ),
      hintStyle: TextStyle(color: Colors.grey),
      hintText: "Find Your Coffee...",
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
  ),
),

            Padding(
              padding: const EdgeInsets.only(top: 10, right: 30, left: 30),
              child: SingleChildScrollView(scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Cappuccino",
                        style: TextStyle(color: Colors.orange, fontSize: 20),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Espresso",
                        style: TextStyle(color: Colors.grey, fontSize: 20),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Red Eye",
                        style: TextStyle(color: Colors.grey, fontSize: 20),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Black Eye",
                        style: TextStyle(color: Colors.grey, fontSize: 20),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Americano",
                        style: TextStyle(color: Colors.grey, fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 500,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      height: 300,
                      child: Expanded(
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: cofe.length,
                          itemBuilder: (context, index) {
                            return Dizayn(cofe[index], context);
                          },
                        ),
                      ),
                    ),
                       Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 150,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 49, 48, 48),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 130,
                                  width: 130,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(13),
                                    image: DecorationImage(
                                        image: AssetImage("assets/cofe4.jpeg"),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Column(
        
        
        mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "5 Coffee Beans You",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "Must try!",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                         Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 150,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 49, 48, 48),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 130,
                                  width: 130,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(13),
                                    image: DecorationImage(
                                        image: AssetImage("assets/cofe8.jpg"),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "5 Coffee Beans You",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "Must try!",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                         Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 150,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 49, 48, 48),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            children: [
        
        
        Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 130,
                                  width: 130,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(13),
                                    image: DecorationImage(
                                        image: AssetImage("assets/cofe3.jpg"),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "5 Coffee Beans You",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "Must try!",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Oddiy {
  String? rasm;
  String? cofe;
  String? text;
  String? son;
  String? son2;

  Oddiy({this.cofe, this.rasm, this.text, this.son, this.son2});
}

final still = TextStyle(
  color: Colors.white,
  fontSize: 20,
);

final still2 = TextStyle(
  color: Colors.grey,
  fontSize: 15,
);

final still3 = TextStyle(
  color: Colors.white,
  fontSize: 18,
  fontWeight: FontWeight.bold,
);


Widget Dizayn(Oddiy ism, BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              switch (ism.cofe) {
                case "Cappucino":
                  return Cappuccino();
                case "Espresso":
                  return EspressoScreen();
                case "Red Eye":
                  return RedEyeScreen();
                case "Americano":
                  return AmericanoScreen();
                case "Long Black":
                  return LongBlackScreen();
                case "Machination":return MachinationScreen();
                case "Double":
                  return DoubleScreen();
                default:
                  return MyWidget(); // Default case, if no match found
              }
            },
          ),
        );
      },
      child: Container(
        height: 280,
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: const Color.fromARGB(255, 49, 48, 48),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 120,
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13),
                  image: DecorationImage(
                    image: AssetImage(ism.rasm!),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 100, bottom: 100),
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.9),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            topRight: Radius.circular(13),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.orange,
                              size: 15,
                            ),
                            Text(
                              ism.son!,
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    ism.cofe!,
                    style: still,
                  ),
                  Text(
                    ism.text!,
                    style: still2,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Text(
                          '%',
                          style: TextStyle(
                            color: Colors.orange,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Text(
                        ism.son2!,


style: still3,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

// Screens for each coffee type
class Cappuccino extends StatefulWidget {

  const Cappuccino({super.key});

  @override
  State<Cappuccino> createState() => _CappuccinoState();
}

class _CappuccinoState extends State<Cappuccino> {
  String nom2 = "2.7";
  String nom = "Medium Roasted";
  int a = 0;
  void ism(){
    setState(() {
      if (a ==1){
        nom = "Small Roasted";
        nom2 = "2.3";
      }else if(a ==2){
        nom = "Middle Roasted";
        nom2 = "2.8";
      }else if(a ==3){
        nom = "Big Roasted";
        nom2 = "2.9";
      }
    });
  }
 
   
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage("assets/cofe6.jpeg"),fit: BoxFit.cover)
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 400),
              child: Container(
                height: 600,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(70),topRight: Radius.circular(70))
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: Column(
                            children: [
                              Text("Black Eye",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
                                Text("With Out Milk",style: TextStyle(color: Colors.grey,fontSize: 20),)
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(30.0),
                              child: Column(
                                children: [
                                  Icon(Icons.coffee,color: Colors.yellow,size: 30,),
                                  Text("Coffee",style: TextStyle(color: Colors.grey,fontSize: 20),)
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(30.0),
                              child: Column(
                                children: [
                                  Icon(Icons.water,color: Colors.yellow,size: 30,),
                                  Text("Milk",style: TextStyle(color: Colors.grey,fontSize: 20),)
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30,),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Icon(Icons.star,color: Colors.yellow,size: 30,),
                              ),
                               Padding(
                                 padding: const EdgeInsets.all(3.0),


child: Text("$nom2",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
                               ),
                              
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 30),
                            child: Text("$nom",style: TextStyle(color: Colors.grey,fontSize: 20,fontWeight: FontWeight.bold),),
                          )
                        ],
                      ),
                    ),
                     Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Description",style: TextStyle(color: Colors.grey,fontSize: 30,fontWeight: FontWeight.bold),),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30,right: 10),
                            child: Text("A cappucino is the perfect balance of espresso,steamed milk.This coffe is all about the structure",style: TextStyle(color: Colors.white,fontSize: 20),),
                          ),
                           Padding(
                                 padding: const EdgeInsets.only(left: 30),
                                 child: Row(
                                   children: [
                                     Text("Size",style: TextStyle(color: Colors.grey,fontSize: 30,fontWeight: FontWeight.bold),),
                                   ],
                                 ),
                               ),
                               Padding(
                                 padding: const EdgeInsets.all(8.0),
                                 child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                   children: [
                                     InkWell(
                                      onTap: (){
                                        setState(() {
                                          a = 1;
                                        
                                          ism();
                                        });
                                       
                                      
                                      },
                                       child: Container(
                                        height: 70,
                                        width: 180,
                                        decoration: BoxDecoration(
                                          color: Colors.yellow,
                                          borderRadius: BorderRadius.circular(20)
                                        ),
                                        child: Center(child: Text("S",style: TextStyle(color: Colors.black,fontSize: 50,fontWeight: FontWeight.bold),)),
                                       ),
                                     ),
                                      InkWell(
                                        onTap: () {
                                         setState(() {
                                          
                                          a =2;
                                          ism();
                                          
                                         });
                                        },
                                        child: Container(
                                        height: 70,
                                        width: 180,
                                        decoration: BoxDecoration(
                                          color: Colors.yellow,
                                          borderRadius: BorderRadius.circular(20)
                                        ),


child: Center(child: Text("M",style: TextStyle(color: Colors.black,fontSize: 50,fontWeight: FontWeight.bold),)),
                                                                             ),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          setState(() {
                                            a =3;
                                          ism();
                                          
                                          });
                                        },
                                        child: Container(
                                        height: 70,
                                        width: 180,
                                        decoration: BoxDecoration(
                                          color: Colors.yellow,
                                          borderRadius: BorderRadius.circular(20)
                                        ),
                                        child: Center(child: Text("L",style: TextStyle(color: Colors.black,fontSize: 50,fontWeight: FontWeight.bold),)),
                                                                             ),
                                      ),
                                   ],
                                 ),
                               )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ),
    );
  }
}

class EspressoScreen extends StatefulWidget {
  const EspressoScreen({super.key});

  @override
  State<EspressoScreen> createState() => _EspressoScreenState();
}

class _EspressoScreenState extends State<EspressoScreen> {
   String nom2 = "2.7";
  String nom = "Medium Roasted";
  int a = 0;
  void ism(){
    setState(() {
      if (a ==1){
        nom = "Small Roasted";
        nom2 = "2.3";
      }else if(a ==2){
        nom = "Middle Roasted";
        nom2 = "2.8";
      }else if(a ==3){
        nom = "Big Roasted";
        nom2 = "2.9";
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage("assets/cofe6.jpeg"),fit: BoxFit.cover)
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 400),
              child: Container(
                height: 600,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(70),topRight: Radius.circular(70))
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: Column(
                            children: [
                              Text("Black Eye",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
                                Text("With Out Milk",style: TextStyle(color: Colors.grey,fontSize: 20),)
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(30.0),
                              child: Column(
                                children: [
                                  Icon(Icons.coffee,color: Colors.yellow,size: 30,),
                                  Text("Coffee",style: TextStyle(color: Colors.grey,fontSize: 20),)
                                ],
                              ),


),
                            Padding(
                              padding: const EdgeInsets.all(30.0),
                              child: Column(
                                children: [
                                  Icon(Icons.water,color: Colors.yellow,size: 30,),
                                  Text("Milk",style: TextStyle(color: Colors.grey,fontSize: 20),)
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30,),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Icon(Icons.star,color: Colors.yellow,size: 30,),
                              ),
                               Padding(
                                 padding: const EdgeInsets.all(3.0),
                                 child: Text("$nom2",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
                               ),
                              
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 30),
                            child: Text("$nom",style: TextStyle(color: Colors.grey,fontSize: 20,fontWeight: FontWeight.bold),),
                          )
                        ],
                      ),
                    ),
                     Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Description",style: TextStyle(color: Colors.grey,fontSize: 30,fontWeight: FontWeight.bold),),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30,right: 10),
                            child: Text("A cappucino is the perfect balance of espresso,steamed milk.This coffe is all about the structure",style: TextStyle(color: Colors.white,fontSize: 20),),
                          ),
                           Padding(
                                 padding: const EdgeInsets.only(left: 30),
                                 child: Row(
                                   children: [
                                     Text("Size",style: TextStyle(color: Colors.grey,fontSize: 30,fontWeight: FontWeight.bold),),
                                   ],
                                 ),
                               ),
                               Padding(
                                 padding: const EdgeInsets.all(8.0),
                                 child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                   children: [
                                     InkWell(
                                      onTap: (){
                                        setState(() {
                                          a = 1;
                                        
                                          ism();
                                        });
                                       
                                      
                                      },
                                       child: Container(
                                        height: 70,
                                        width: 180,
                                        decoration: BoxDecoration(


color: Colors.yellow,
                                          borderRadius: BorderRadius.circular(20)
                                        ),
                                        child: Center(child: Text("S",style: TextStyle(color: Colors.black,fontSize: 50,fontWeight: FontWeight.bold),)),
                                       ),
                                     ),
                                      InkWell(
                                        onTap: () {
                                         setState(() {
                                          
                                          a =2;
                                          ism();
                                          
                                         });
                                        },
                                        child: Container(
                                        height: 70,
                                        width: 180,
                                        decoration: BoxDecoration(
                                          color: Colors.yellow,
                                          borderRadius: BorderRadius.circular(20)
                                        ),
                                        child: Center(child: Text("M",style: TextStyle(color: Colors.black,fontSize: 50,fontWeight: FontWeight.bold),)),
                                                                             ),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          setState(() {
                                            a =3;
                                          ism();
                                          
                                          });
                                        },
                                        child: Container(
                                        height: 70,
                                        width: 180,
                                        decoration: BoxDecoration(
                                          color: Colors.yellow,
                                          borderRadius: BorderRadius.circular(20)
                                        ),
                                        child: Center(child: Text("L",style: TextStyle(color: Colors.black,fontSize: 50,fontWeight: FontWeight.bold),)),
                                                                             ),
                                      ),
                                   ],
                                 ),
                               )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ),
    );
  }
}

class RedEyeScreen extends StatefulWidget {
  const RedEyeScreen({super.key});

  @override
  State<RedEyeScreen> createState() => _RedEyeScreenState();
}


class _RedEyeScreenState extends State<RedEyeScreen> {
   String nom2 = "2.7";
  String nom = "Medium Roasted";
  int a = 0;
  void ism(){
    setState(() {
      if (a ==1){
        nom = "Small Roasted";
        nom2 = "2.3";
      }else if(a ==2){
        nom = "Middle Roasted";
        nom2 = "2.8";
      }else if(a ==3){
        nom = "Big Roasted";
        nom2 = "2.9";
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage("assets/cofe8.jpg"),fit: BoxFit.cover)
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 400),
              child: Container(
                height: 600,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(70),topRight: Radius.circular(70))
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: Column(
                            children: [
                              Text("Black Eye",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
                                Text("With Out Milk",style: TextStyle(color: Colors.grey,fontSize: 20),)
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(30.0),
                              child: Column(
                                children: [
                                  Icon(Icons.coffee,color: Colors.yellow,size: 30,),
                                  Text("Coffee",style: TextStyle(color: Colors.grey,fontSize: 20),)
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(30.0),
                              child: Column(
                                children: [
                                  Icon(Icons.water,color: Colors.yellow,size: 30,),
                                  Text("Milk",style: TextStyle(color: Colors.grey,fontSize: 20),)
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30,),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Icon(Icons.star,color: Colors.yellow,size: 30,),
                              ),
                               Padding(
                                 padding: const EdgeInsets.all(3.0),
                                 child: Text("$nom2",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
                               ),
                              
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 30),


child: Text("$nom",style: TextStyle(color: Colors.grey,fontSize: 20,fontWeight: FontWeight.bold),),
                          )
                        ],
                      ),
                    ),
                     Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Description",style: TextStyle(color: Colors.grey,fontSize: 30,fontWeight: FontWeight.bold),),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30,right: 10),
                            child: Text("A cappucino is the perfect balance of espresso,steamed milk.This coffe is all about the structure",style: TextStyle(color: Colors.white,fontSize: 20),),
                          ),
                           Padding(
                                 padding: const EdgeInsets.only(left: 30),
                                 child: Row(
                                   children: [
                                     Text("Size",style: TextStyle(color: Colors.grey,fontSize: 30,fontWeight: FontWeight.bold),),
                                   ],
                                 ),
                               ),
                               Padding(
                                 padding: const EdgeInsets.all(8.0),
                                 child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                   children: [
                                     InkWell(
                                      onTap: (){
                                        setState(() {
                                          a = 1;
                                        
                                          ism();
                                        });
                                       
                                      
                                      },
                                       child: Container(
                                        height: 70,
                                        width: 180,
                                        decoration: BoxDecoration(
                                          color: Colors.yellow,
                                          borderRadius: BorderRadius.circular(20)
                                        ),
                                        child: Center(child: Text("S",style: TextStyle(color: Colors.black,fontSize: 50,fontWeight: FontWeight.bold),)),
                                       ),
                                     ),
                                      InkWell(
                                        onTap: () {
                                         setState(() {
                                          
                                          a =2;
                                          ism();
                                          
                                         });
                                        },
                                        child: Container(
                                        height: 70,
                                        width: 180,
                                        decoration: BoxDecoration(
                                          color: Colors.yellow,
                                          borderRadius: BorderRadius.circular(20)
                                        ),
                                        child: Center(child: Text("M",style: TextStyle(color: Colors.black,fontSize: 50,fontWeight: FontWeight.bold),)),
                                                                             ),
                                      ),
                                      InkWell(
                                        onTap: () {


setState(() {
                                            a =3;
                                          ism();
                                          
                                          });
                                        },
                                        child: Container(
                                        height: 70,
                                        width: 180,
                                        decoration: BoxDecoration(
                                          color: Colors.yellow,
                                          borderRadius: BorderRadius.circular(20)
                                        ),
                                        child: Center(child: Text("L",style: TextStyle(color: Colors.black,fontSize: 50,fontWeight: FontWeight.bold),)),
                                                                             ),
                                      ),
                                   ],
                                 ),
                               )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ),
    );
  }
}

class AmericanoScreen extends StatefulWidget {
  const AmericanoScreen({super.key});

  @override
  State<AmericanoScreen> createState() => _AmericanoScreenState();
}

class _AmericanoScreenState extends State<AmericanoScreen> {
  String nom2 = "2.7";
  String nom = "Medium Roasted";
  int a = 0;
  void ism(){
    setState(() {
      if (a ==1){
        nom = "Small Roasted";
        nom2 = "2.3";
      }else if(a ==2){
        nom = "Middle Roasted";
        nom2 = "2.8";
      }else if(a ==3){
        nom = "Big Roasted";
        nom2 = "2.9";
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage("assets/cofe7.jpeg"),fit: BoxFit.cover)
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 400),
              child: Container(
                height: 600,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(70),topRight: Radius.circular(70))
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: Column(
                            children: [
                              Text("Black Eye",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
                                Text("With Out Milk",style: TextStyle(color: Colors.grey,fontSize: 20),)
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(30.0),
                              child: Column(
                                children: [
                                  Icon(Icons.coffee,color: Colors.yellow,size: 30,),
                                  Text("Coffee",style: TextStyle(color: Colors.grey,fontSize: 20),)
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(30.0),
                              child: Column(
                                children: [
                                  Icon(Icons.water,color: Colors.yellow,size: 30,),


Text("Milk",style: TextStyle(color: Colors.grey,fontSize: 20),)
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30,),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Icon(Icons.star,color: Colors.yellow,size: 30,),
                              ),
                               Padding(
                                 padding: const EdgeInsets.all(3.0),
                                 child: Text("$nom2",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
                               ),
                              
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 30),
                            child: Text("$nom",style: TextStyle(color: Colors.grey,fontSize: 20,fontWeight: FontWeight.bold),),
                          )
                        ],
                      ),
                    ),
                     Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Description",style: TextStyle(color: Colors.grey,fontSize: 30,fontWeight: FontWeight.bold),),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30,right: 10),
                            child: Text("A cappucino is the perfect balance of espresso,steamed milk.This coffe is all about the structure",style: TextStyle(color: Colors.white,fontSize: 20),),
                          ),
                           Padding(
                                 padding: const EdgeInsets.only(left: 30),
                                 child: Row(
                                   children: [
                                     Text("Size",style: TextStyle(color: Colors.grey,fontSize: 30,fontWeight: FontWeight.bold),),
                                   ],
                                 ),
                               ),
                               Padding(
                                 padding: const EdgeInsets.all(8.0),
                                 child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                   children: [
                                     InkWell(
                                      onTap: (){
                                        setState(() {
                                          a = 1;
                                        
                                          ism();
                                        });
                                       
                                      
                                      },
                                       child: Container(
                                        height: 70,
                                        width: 180,
                                        decoration: BoxDecoration(
                                          color: Colors.yellow,
                                          borderRadius: BorderRadius.circular(20)
                                        ),
                                        child: Center(child: Text("S",style: TextStyle(color: Colors.black,fontSize: 50,fontWeight: FontWeight.bold),)),

),
                                     ),
                                      InkWell(
                                        onTap: () {
                                         setState(() {
                                          
                                          a =2;
                                          ism();
                                          
                                         });
                                        },
                                        child: Container(
                                        height: 70,
                                        width: 180,
                                        decoration: BoxDecoration(
                                          color: Colors.yellow,
                                          borderRadius: BorderRadius.circular(20)
                                        ),
                                        child: Center(child: Text("M",style: TextStyle(color: Colors.black,fontSize: 50,fontWeight: FontWeight.bold),)),
                                                                             ),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          setState(() {
                                            a =3;
                                          ism();
                                          
                                          });
                                        },
                                        child: Container(
                                        height: 70,
                                        width: 180,
                                        decoration: BoxDecoration(
                                          color: Colors.yellow,
                                          borderRadius: BorderRadius.circular(20)
                                        ),
                                        child: Center(child: Text("L",style: TextStyle(color: Colors.black,fontSize: 50,fontWeight: FontWeight.bold),)),
                                                                             ),
                                      ),
                                   ],
                                 ),
                               )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ),
    );
  }
}

class LongBlackScreen extends StatefulWidget {
  const LongBlackScreen({super.key});

  @override
  State<LongBlackScreen> createState() => _LongBlackScreenState();
}

class _LongBlackScreenState extends State<LongBlackScreen> {
  String nom2 = "2.7";
  String nom = "Medium Roasted";
  int a = 0;
  void ism(){
    setState(() {
      if (a ==1){
        nom = "Small Roasted";
        nom2 = "2.3";
      }else if(a ==2){
        nom = "Middle Roasted";
        nom2 = "2.8";
      }else if(a ==3){
        nom = "Big Roasted";
        nom2 = "2.9";
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage("assets/8.jpg"),fit: BoxFit.cover)
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 400),
              child: Container(
                height: 600,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(70),topRight: Radius.circular(70))
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: Column(
                            children: [
                              Text("Black Eye",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
                                Text("With Out Milk",style: TextStyle(color: Colors.grey,fontSize: 20),)
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(30.0),
                              child: Column(
                                children: [
                                  Icon(Icons.coffee,color: Colors.yellow,size: 30,),
                                  Text("Coffee",style: TextStyle(color: Colors.grey,fontSize: 20),)
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(30.0),
                              child: Column(
                                children: [
                                  Icon(Icons.water,color: Colors.yellow,size: 30,),
                                  Text("Milk",style: TextStyle(color: Colors.grey,fontSize: 20),)
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30,),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Icon(Icons.star,color: Colors.yellow,size: 30,),
                              ),
                               Padding(
                                 padding: const EdgeInsets.all(3.0),
                                 child: Text("$nom2",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
                               ),
                              
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 30),


child: Text("$nom",style: TextStyle(color: Colors.grey,fontSize: 20,fontWeight: FontWeight.bold),),
                          )
                        ],
                      ),
                    ),
                     Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Description",style: TextStyle(color: Colors.grey,fontSize: 30,fontWeight: FontWeight.bold),),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30,right: 10),
                            child: Text("A cappucino is the perfect balance of espresso,steamed milk.This coffe is all about the structure",style: TextStyle(color: Colors.white,fontSize: 20),),
                          ),
                           Padding(
                                 padding: const EdgeInsets.only(left: 30),
                                 child: Row(
                                   children: [
                                     Text("Size",style: TextStyle(color: Colors.grey,fontSize: 30,fontWeight: FontWeight.bold),),
                                   ],
                                 ),
                               ),
                               Padding(
                                 padding: const EdgeInsets.all(8.0),
                                 child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                   children: [
                                     InkWell(
                                      onTap: (){
                                        setState(() {
                                          a = 1;
                                        
                                          ism();
                                        });
                                       
                                      
                                      },
                                       child: Container(
                                        height: 70,
                                        width: 180,
                                        decoration: BoxDecoration(
                                          color: Colors.yellow,
                                          borderRadius: BorderRadius.circular(20)
                                        ),
                                        child: Center(child: Text("S",style: TextStyle(color: Colors.black,fontSize: 50,fontWeight: FontWeight.bold),)),
                                       ),
                                     ),
                                      InkWell(
                                        onTap: () {
                                         setState(() {
                                          
                                          a =2;
                                          ism();
                                          
                                         });
                                        },
                                        child: Container(
                                        height: 70,
                                        width: 180,
                                        decoration: BoxDecoration(
                                          color: Colors.yellow,
                                          borderRadius: BorderRadius.circular(20)
                                        ),
                                        child: Center(child: Text("M",style: TextStyle(color: Colors.black,fontSize: 50,fontWeight: FontWeight.bold),)),
                                                                             ),
                                      ),
                                      InkWell(
                                        onTap: () {


setState(() {
                                            a =3;
                                          ism();
                                          
                                          });
                                        },
                                        child: Container(
                                        height: 70,
                                        width: 180,
                                        decoration: BoxDecoration(
                                          color: Colors.yellow,
                                          borderRadius: BorderRadius.circular(20)
                                        ),
                                        child: Center(child: Text("L",style: TextStyle(color: Colors.black,fontSize: 50,fontWeight: FontWeight.bold),)),
                                                                             ),
                                      ),
                                   ],
                                 ),
                               )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ),
    );
  }
}

class MachinationScreen extends StatefulWidget {
  const MachinationScreen({super.key});

  @override
  State<MachinationScreen> createState() => _MachinationScreenState();
}

class _MachinationScreenState extends State<MachinationScreen> {
  String nom2 = "2.7";
  String nom = "Medium Roasted";
  int a = 0;
  void ism(){
    setState(() {
      if (a ==1){
        nom = "Small Roasted";
        nom2 = "2.3";
      }else if(a ==2){
        nom = "Middle Roasted";
        nom2 = "2.8";
      }else if(a ==3){
        nom = "Big Roasted";
        nom2 = "2.9";
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage("assets/cofe2.png"),fit: BoxFit.cover)
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 400),
              child: Container(
                height: 600,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(70),topRight: Radius.circular(70))
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: Column(
                            children: [
                              Text("Black Eye",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
                                Text("With Out Milk",style: TextStyle(color: Colors.grey,fontSize: 20),)
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(30.0),
                              child: Column(
                                children: [
                                  Icon(Icons.coffee,color: Colors.yellow,size: 30,),
                                  Text("Coffee",style: TextStyle(color: Colors.grey,fontSize: 20),)
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(30.0),
                              child: Column(
                                children: [
                                  Icon(Icons.water,color: Colors.yellow,size: 30,),


Text("Milk",style: TextStyle(color: Colors.grey,fontSize: 20),)
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30,),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Icon(Icons.star,color: Colors.yellow,size: 30,),
                              ),
                               Padding(
                                 padding: const EdgeInsets.all(3.0),
                                 child: Text("$nom2",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
                               ),
                              
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 30),
                            child: Text("$nom",style: TextStyle(color: Colors.grey,fontSize: 20,fontWeight: FontWeight.bold),),
                          )
                        ],
                      ),
                    ),
                     Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Description",style: TextStyle(color: Colors.grey,fontSize: 30,fontWeight: FontWeight.bold),),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30,right: 10),
                            child: Text("A cappucino is the perfect balance of espresso,steamed milk.This coffe is all about the structure",style: TextStyle(color: Colors.white,fontSize: 20),),
                          ),
                           Padding(
                                 padding: const EdgeInsets.only(left: 30),
                                 child: Row(
                                   children: [
                                     Text("Size",style: TextStyle(color: Colors.grey,fontSize: 30,fontWeight: FontWeight.bold),),
                                   ],
                                 ),
                               ),
                               Padding(
                                 padding: const EdgeInsets.all(8.0),
                                 child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                   children: [
                                     InkWell(
                                      onTap: (){
                                        setState(() {
                                          a = 1;
                                        
                                          ism();
                                        });
                                       
                                      
                                      },
                                       child: Container(
                                        height: 70,
                                        width: 180,
                                        decoration: BoxDecoration(
                                          color: Colors.yellow,
                                          borderRadius: BorderRadius.circular(20)
                                        ),
                                        child: Center(child: Text("S",style: TextStyle(color: Colors.black,fontSize: 50,fontWeight: FontWeight.bold),)),


),
                                     ),
                                      InkWell(
                                        onTap: () {
                                         setState(() {
                                          
                                          a =2;
                                          ism();
                                          
                                         });
                                        },
                                        child: Container(
                                        height: 70,
                                        width: 180,
                                        decoration: BoxDecoration(
                                          color: Colors.yellow,
                                          borderRadius: BorderRadius.circular(20)
                                        ),
                                        child: Center(child: Text("M",style: TextStyle(color: Colors.black,fontSize: 50,fontWeight: FontWeight.bold),)),
                                                                             ),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          setState(() {
                                            a =3;
                                          ism();
                                          
                                          });
                                        },
                                        child: Container(
                                        height: 70,
                                        width: 180,
                                        decoration: BoxDecoration(
                                          color: Colors.yellow,
                                          borderRadius: BorderRadius.circular(20)
                                        ),
                                        child: Center(child: Text("L",style: TextStyle(color: Colors.black,fontSize: 50,fontWeight: FontWeight.bold),)),
                                                                             ),
                                      ),
                                   ],
                                 ),
                               )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ),
    );
  }
}

class DoubleScreen extends StatefulWidget {
  const DoubleScreen({super.key});

  @override
  State<DoubleScreen> createState() => _DoubleScreenState();
}


class _DoubleScreenState extends State<DoubleScreen> {
  String nom2 = "2.7";
  String nom = "Medium Roasted";
  int a = 0;
  void ism(){
    setState(() {
      if (a ==1){
        nom = "Small Roasted";
        nom2 = "2.3";
      }else if(a ==2){
        nom = "Middle Roasted";
        nom2 = "2.8";
      }else if(a ==3){
        nom = "Big Roasted";
        nom2 = "2.9";
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage("assets/cofe4.jpeg"),fit: BoxFit.cover)
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 400),
              child: Container(
                height: 600,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(70),topRight: Radius.circular(70))
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: Column(
                            children: [
                              Text("Black Eye",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
                                Text("With Out Milk",style: TextStyle(color: Colors.grey,fontSize: 20),)
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(30.0),
                              child: Column(
                                children: [
                                  Icon(Icons.coffee,color: Colors.yellow,size: 30,),
                                  Text("Coffee",style: TextStyle(color: Colors.grey,fontSize: 20),)
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(30.0),
                              child: Column(
                                children: [
                                  Icon(Icons.water,color: Colors.yellow,size: 30,),
                                  Text("Milk",style: TextStyle(color: Colors.grey,fontSize: 20),)
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30,),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Icon(Icons.star,color: Colors.yellow,size: 30,),
                              ),
                               Padding(
                                 padding: const EdgeInsets.all(3.0),
                                 child: Text("$nom2",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
                               ),
                              
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 30),


child: Text("$nom",style: TextStyle(color: Colors.grey,fontSize: 20,fontWeight: FontWeight.bold),),
                          )
                        ],
                      ),
                    ),
                     Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Description",style: TextStyle(color: Colors.grey,fontSize: 30,fontWeight: FontWeight.bold),),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30,right: 10),
                            child: Text("A cappucino is the perfect balance of espresso,steamed milk.This coffe is all about the structure",style: TextStyle(color: Colors.white,fontSize: 20),),
                          ),
                           Padding(
                                 padding: const EdgeInsets.only(left: 30),
                                 child: Row(
                                   children: [
                                     Text("Size",style: TextStyle(color: Colors.grey,fontSize: 30,fontWeight: FontWeight.bold),),
                                   ],
                                 ),
                               ),
                               Padding(
                                 padding: const EdgeInsets.all(8.0),
                                 child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                   children: [
                                     InkWell(
                                      onTap: (){
                                        setState(() {
                                          a = 1;
                                        
                                          ism();
                                        });
                                       
                                      
                                      },
                                       child: Container(
                                        height: 70,
                                        width: 180,
                                        decoration: BoxDecoration(
                                          color: Colors.yellow,
                                          borderRadius: BorderRadius.circular(20)
                                        ),
                                        child: Center(child: Text("S",style: TextStyle(color: Colors.black,fontSize: 50,fontWeight: FontWeight.bold),)),
                                       ),
                                     ),
                                      InkWell(
                                        onTap: () {
                                         setState(() {
                                          
                                          a =2;
                                          ism();
                                          
                                         });
                                        },
                                        child: Container(
                                        height: 70,
                                        width: 180,
                                        decoration: BoxDecoration(
                                          color: Colors.yellow,
                                          borderRadius: BorderRadius.circular(20)
                                        ),
                                        child: Center(child: Text("M",style: TextStyle(color: Colors.black,fontSize: 50,fontWeight: FontWeight.bold),)),
                                                                             ),
                                      ),
                                      InkWell(
                                        onTap: () {


setState(() {
                                            a =3;
                                          ism();
                                          
                                          });
                                        },
                                        child: Container(
                                        height: 70,
                                        width: 180,
                                        decoration: BoxDecoration(
                                          color: Colors.yellow,
                                          borderRadius: BorderRadius.circular(20)
                                        ),
                                        child: Center(child: Text("L",style: TextStyle(color: Colors.black,fontSize: 50,fontWeight: FontWeight.bold),)),
                                                                             ),
                                      ),
                                   ],
                                 ),
                               )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ),
    );
  }
}












// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: LoginPage(),
//     );
//   }
// }

// class LoginPage extends StatefulWidget {
//   @override
//   _LoginPageState createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
//   // TextEditingControllers for input fields
//   TextEditingController _firstController = TextEditingController();
//   TextEditingController _secondController = TextEditingController();

//   // Flag to toggle password visibility
//   bool _isObscured = true;

//   // Predefined correct credentials
//   String correctName = "aa";
//   String correctPassword = "55";

//   // Login function to check credentials
//   void login() {
//     if (_firstController.text == correctName && _secondController.text == correctPassword) {
//       // Navigate to next page if credentials are correct
//       Navigator.push(
//         context,
//         MaterialPageRoute(builder: (context) => NextPage()),
//       );
//     } else {
//       // Show Snackbar if credentials are incorrect
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(
//           content: Text("Noto'g'ri ism yoki parol"),
//         ),
//       );
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             SizedBox(height: 50),
//             // Log In title
//             Center(
//               child: Text(
//                 "Log in",
//                 style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
//               ),
//             ),
//             SizedBox(height: 20),
//             // Facebook button
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Container(
//                 width: double.infinity,
//                 height: 60,
//                 decoration: BoxDecoration(
//                   color: Colors.blue,
//                   borderRadius: BorderRadius.circular(30),
//                 ),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Icon(Icons.facebook, color: Colors.white, size: 40),
//                     SizedBox(width: 20),
//                     Text(
//                       "Continue with Facebook",
//                       style: TextStyle(
//                           color: Colors.white,
//                           fontWeight: FontWeight.bold,
//                           fontSize: 18),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             // Google button
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Container(
//                 width: double.infinity,
//                 height: 60,
//                 decoration: BoxDecoration(
//                   color: Color.fromARGB(255, 231, 237, 243),
//                   borderRadius: BorderRadius.circular(30),
//                 ),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Icon(Icons.g_mobiledata, size: 40, color: Colors.red),
//                     SizedBox(width: 20),
//                     Text(
//                       "Continue with Google",
//                       style: TextStyle(
//                           fontWeight: FontWeight.bold, fontSize: 18),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             SizedBox(height: 20),
//             // OR text
//             Center(
//               child: Text(
//                 "OR",
//                 style: TextStyle(fontSize: 24),
//               ),
//             ),
//             SizedBox(height: 20),
//             // Name/Username input field
//             TextField(
//               controller: _firstController,
//               decoration: InputDecoration(
//                 labelText: 'Ism / Familiya',
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(20),
//                 ),
//                 suffixIcon: IconButton(
//                   icon: Icon(Icons.cancel),
//                   onPressed: () {
//                     _firstController.clear(); // Clear input
//                   },
//                 ),
//               ),
//             ),
//             SizedBox(height: 30),
//             // Password input field
//             TextField(
//               controller: _secondController,
//               obscureText: _isObscured, // Hide or show password
//               decoration: InputDecoration(
//                 labelText: 'Parol',
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(20),
//                 ),
//                 suffixIcon: IconButton(
//                   icon: Icon(
//                     _isObscured ? Icons.remove_red_eye : Icons.visibility_off,
//                   ),
//                   onPressed: () {
//                     setState(() {
//                       _isObscured = !_isObscured; // Toggle password visibility
//                     });
//                   },
//                 ),
//               ),
//             ),
//             SizedBox(height: 50),
//             // Log In button
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: InkWell(
//                 onTap: () {
//                   login(); // Trigger login on tap
//                 },
//                 child: Container(
//                   width: double.infinity,
//                   height: 60,
//                   decoration: BoxDecoration(
//                     color: Color.fromARGB(255, 240, 69, 21),
//                     borderRadius: BorderRadius.circular(30),
//                   ),
//                   child: Center(
//                     child: Text(
//                       "Log in",
//                       style: TextStyle(
//                           fontWeight: FontWeight.bold,
//                           fontSize: 20,
//                           color: Colors.white),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(height: 30),
//             // Forgot your password text
//             Center(
//               child: Text(
//                 "Forgot your password?",
//                 style: TextStyle(fontWeight: FontWeight.w600),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// // Next Page for successful login
// class NextPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Yangi Sahifa'),
//       ),
//       body: Center(
//         child: Text(
//           'Siz muvaffaqiyatli kirishingiz mumkin!',
//           style: TextStyle(fontSize: 24),
//         ),
//       ),
//     );
//   }
// }




































// import 'package:flutter/material.dart';

// void main() => runApp(
//   MaterialApp(
//     home: MyWidget(),
//   ),
// );

// class MyWidget extends StatefulWidget {
//   const MyWidget({super.key});

//   @override
//   State<MyWidget> createState() => _MyWidgetState();
// }

// class _MyWidgetState extends State<MyWidget> {
//   // Define counters for each zikr
//   int subhanallahCount = 0;
//   int alhamdulillahCount = 0;
//   int allahuAkbarCount = 0;
//   int laIlahaIllallahCount = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: const Color.fromARGB(255, 1, 13, 44),
//         title: const Text(
//           "Saved Dhikr",
//           style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
//         ),
//         centerTitle: true,
//       ),
//       backgroundColor: Colors.black,
//       body: SingleChildScrollView(
//         scrollDirection: Axis.vertical,
//         child: Column(
//           children: [
//             Container(
//               width: double.infinity,
//               height: 700,
//               decoration: const BoxDecoration(
//                 image: DecorationImage(
//                   image: NetworkImage(
//                     "https://png.pngtree.com/background/20210712/original/pngtree-blue-textured-muslim-background-picture-image_1174819.jpg",
//                   ),
//                   fit: BoxFit.cover,
//                 ),
//               ),
//               child: Padding(
//                 padding: const EdgeInsets.only(top: 200),
//                 child: Column(
//                   children: [
//                     buildDhikrContainer("Subhanallah", subhanallahCount, () {
//                       setState(() {
//                         subhanallahCount++;
//                       });
//                     }),
//                     const SizedBox(height: 20),
//                     buildDhikrContainer("Alhamdulillah", alhamdulillahCount, () {
//                       setState(() {
//                         alhamdulillahCount++;
//                       });
//                     }),
//                     const SizedBox(height: 20),
//                     buildDhikrContainer("Allahu Akbar", allahuAkbarCount, () {
//                       setState(() {
//                         allahuAkbarCount++;
//                       });
//                     }),
//                     const SizedBox(height: 20),
//                     buildDhikrContainer("La ilaha illalloh", laIlahaIllallahCount, () {
//                       setState(() {
//                         laIlahaIllallahCount++;
//                       });
//                     }),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   // Helper method to create a dhikr container with the counter
//   Widget buildDhikrContainer(String dhikr, int count, VoidCallback onPressed) {
//     return Container(
//       width: 300,
//       height: 70,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(20),
//         color: Colors.black,
//         border: Border.all(color: const Color.fromARGB(255, 125, 117, 46), width: 5),
//       ),
//       child: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Text(
//               dhikr,
//               style: const TextStyle(
//                 color: Color.fromARGB(255, 138, 129, 47),
//                 fontSize: 20,
//               ),
//             ),
//             Row(
//               children: [
//                 Text(
//                   '$count', // Display the current count
//                   style: const TextStyle(
//                     color: Colors.white,
//                     fontSize: 18,
//                   ),
//                 ),
//                 IconButton(
//                   onPressed: onPressed,
//                   icon: const Icon(Icons.add, color: Colors.white),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }



























