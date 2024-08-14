import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: stf(),
  ));
}

class stf extends StatefulWidget {
  const stf({super.key});

  @override
  State<stf> createState() => _stfState();
}

class _stfState extends State<stf> {
  // List of maps with image URL and texts
  List<Map<String, String>> data = [
     {
      "image":
          "https://st.depositphotos.com/1734628/2691/i/450/depositphotos_26916735-stock-photo-panoramic-views-of-the-tropical.jpg",
      "title": "Beach",
      "subtitle": "Sunny day"
    },
     {
      "image":
          "https://st.depositphotos.com/1734628/2691/i/450/depositphotos_26916735-stock-photo-panoramic-views-of-the-tropical.jpg",
      "title": "Beach",
      "subtitle": "Sunny day"
    },
     {
      "image":
          "https://st.depositphotos.com/1734628/2691/i/450/depositphotos_26916735-stock-photo-panoramic-views-of-the-tropical.jpg",
      "title": "Beach",
      "subtitle": "Sunny day"
    },
     {
      "image":
          "https://st.depositphotos.com/1734628/2691/i/450/depositphotos_26916735-stock-photo-panoramic-views-of-the-tropical.jpg",
      "title": "Beach",
      "subtitle": "Sunny day"
    },

     {
      "image":
          "https://st.depositphotos.com/1734628/2691/i/450/depositphotos_26916735-stock-photo-panoramic-views-of-the-tropical.jpg",
      "title": "Beach",
      "subtitle": "Sunny day"
    },
    {
      "image":
          "https://st.depositphotos.com/1734628/2691/i/450/depositphotos_26916735-stock-photo-panoramic-views-of-the-tropical.jpg",
      "title": "Beach",
      "subtitle": "Sunny day"
    },
    {
      "image":
          "https://img.freepik.com/premium-photo/woman-sitting-desk-working-her-laptop-with-focused-expression_146482-17103.jpg",
      "title": "Office",
      "subtitle": "Working"
    },
    {
      "image":
          "https://images.unsplash.com/photo-1506748686214-e9df14d4d9d0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=80",
      "title": "Mountain",
      "subtitle": "Hiking"
    },
     {
      "image":
          "https://img.freepik.com/premium-photo/woman-sitting-desk-working-her-laptop-with-focused-expression_146482-17103.jpg",
      "title": "Office",
      "subtitle": "Working"
    },
     {
      "image":
          "https://img.freepik.com/premium-photo/woman-sitting-desk-working-her-laptop-with-focused-expression_146482-17103.jpg",
      "title": "Office",
      "subtitle": "Working"
    },
     {
      "image":
          "https://img.freepik.com/premium-photo/woman-sitting-desk-working-her-laptop-with-focused-expression_146482-17103.jpg",
      "title": "Office",
      "subtitle": "Working"
    },
    // More entries can be added
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image container
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    "https://st.depositphotos.com/1734628/2691/i/450/depositphotos_26916735-stock-photo-panoramic-views-of-the-tropical.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.arrow_back,
                        size: 25,
                      ),
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                            "https://img.freepik.com/premium-photo/woman-sitting-desk-working-her-laptop-with-focused-expression_146482-17103.jpg"),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Mill Ave, Los Angeles, CA",
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                      Icon(
                        Icons.arrow_back_sharp,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      Text(
                        "Great tip to go to the beach",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 280,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Icon(Icons.search),
                            SizedBox(
                              width: 10,
                            ),
                            Text("search")
                          ],
                        ),
                      ),
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.white,
                        child: Icon(Icons.abc),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),

          // Positioned container with GridView
          Positioned(
            top: 290,
            left: 3,
            right: 3,
            child: Container(
              width: double.infinity,
              height: 500,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: GridView.builder(
                  itemCount: data.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: NetworkImage(data[index]['image']!),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(data[index]['title']!),
                        Text(data[index]['subtitle']!),
                      ],
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
