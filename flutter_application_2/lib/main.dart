import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ListScreen(),
  ));
}

class ListScreen extends StatefulWidget {
  const ListScreen({super.key});

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  List<Oddiy> calls = [
    Oddiy(
      img:
          "https://img.freepik.com/fotos-premium/bebe-ojos-grandes-esta-mirando-camara_787273-2554.jpg",
      name: "Alisa Rodrigez",
      info: "(3) 15 July, 13:27",
      icon: Icons.call_sharp,
      iconColor: const Color.fromARGB(255, 243, 163, 33),
    ),
    Oddiy(
      img:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ7twmONO7kDJpQGe6yaZXLi7lQ2AN1GM4N7yfsf5jVYTasdQWFPPIu-P1qhiWW2F9cuOo&usqp=CAU",
      name: "Pedro",
      info: "(3) 15 July, 13:27",
      icon: Icons.add_call,
      iconColor: Colors.blue,
    ),
    Oddiy(
      img:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTs1GdGnaclTwwgLXJa7MgBY6kNGlbS5JzfzM8KYpFVFPrD2KT4kElEEtLhdyEze6_SznE&usqp=CAU",
      name: "Alisa Rodrigez",
      info: "(3) 15 July, 13:27",
      icon: Icons.phone_callback_sharp,
      iconColor: Color.fromARGB(255, 243, 37, 33),
    ),

   
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 270,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 19, 3, 42),
              borderRadius:
                  const BorderRadius.only(bottomLeft: Radius.circular(100)),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Icon(Icons.camera, color: Colors.white, size: 40),
                    Text("Modychat",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 40)),
                    Icon(Icons.search, color: Colors.white, size: 40),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 310,
                      height: 50,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 114, 134, 132),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const ChatsScreen()),
                                );
                              },
                              child: const Text("Chats",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20)),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const StatusScreen()),
                                );
                              },
                              child: Container(
                                width: 70,
                                height: 80,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Color.fromARGB(255, 21, 4, 53),
                                ),
                                child: Center(
                                  child: const Text("Status",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20)),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const CallsScreen()),
                                );
                              },
                              child: const Text("Calls",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20)),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration:
                  const BoxDecoration(color: Color.fromARGB(255, 23, 3, 52)),
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 241, 236, 247),
                  borderRadius:
                      BorderRadius.only(topRight: Radius.circular(100)),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: const [
                              Text("ALL Calls",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 2, 10, 36),
                                      fontSize: 25,
                                      fontWeight: FontWeight.w900)),
                              Padding(
                                padding: EdgeInsets.only(right: 40),
                                child: Text("Friends"),
                              )
                            ],
                          ),
                          const Icon(Icons.menu, size: 30),
                        ],
                      ),
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: calls.length + (calls.length > 2 ? 1 : 0), // Add 1 for "See More" if there are more than 2 items
                        itemBuilder: (context, index) {
                          if (index < calls.length) {
                            return dizayn(calls[index]);
                          } else {
                            return ListTile(
                              title: Text("See More >", style: TextStyle(color: Color.fromARGB(255, 242, 47, 22), fontSize: 18)),
                              onTap: () {
                                // Action for "See More"
                                print("See More tapped");
                              },
                            );
                          }
                        },
                      ),
                    ),



                      Expanded(
                      child: ListView.builder(
                        itemCount: calls.length + (calls.length > 2 ? 1 : 0), // Add 1 for "See More" if there are more than 2 items
                        itemBuilder: (context, index) {
                          if (index < calls.length) {
                            return dizayn(calls[index]);
                          } else {
                            return ListTile(
                              title: Text("See More >", style: TextStyle(color: Color.fromARGB(255, 242, 47, 22), fontSize: 18)),
                              onTap: () {
                                // Action for "See More"
                                print("See More tapped");
                              },
                            );
                          }
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your action here
          print("FloatingActionButton Pressed");
        },
        backgroundColor: Color.fromARGB(255, 239, 28, 148), // Set background color
        child: const Icon(Icons.call_sharp, size: 30), // Set the icon
        elevation: 10.0, // Adjust elevation to moderate
        // Set shadow color to pink
      ),
    );
  }
}

class Oddiy {
  String? name;
  String? info;
  String? img;
  IconData? icon;
  Color? iconColor;

  Oddiy({this.name, this.info, this.img, this.icon, this.iconColor});
}

Widget dizayn(Oddiy ism) {
  return ListTile(
    leading: Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(image: NetworkImage(ism.img!), fit: BoxFit.cover),
      ),
    ),
    title: Text(ism.name ?? '',
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
    subtitle: Text(ism.info ?? '',
        style: const TextStyle(color: Color.fromARGB(255, 104, 101, 101))),
    trailing: Icon(ism.icon, color: ism.iconColor ?? Colors.orange),
  );
}

class ChatsScreen extends StatelessWidget {
  const ChatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Chats"),
      ),
      body: const Center(
        child: Text("This is the Chats Screen"),
      ),
    );
  }
}

class StatusScreen extends StatelessWidget {
  const StatusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Status"),
      ),
      body: const Center(
        child: Text("This is the Status Screen"),
      ),
    );
  }
}

class CallsScreen extends StatelessWidget {
  const CallsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calls"),
      ),
      body: const Center(
        child: Text("This is the Calls Screen"),
      ),
    );
  }
}
