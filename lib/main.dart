import 'package:flutter/material.dart';
import 'package:myapp/model/category.dart';
import 'package:myapp/model/destination.dart';
import 'package:myapp/model/Detail.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Travel App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue, title: Text('Flutter Travel App')),
      body: Column(
        children: [
          Image.network(
            "https://img.freepik.com/free-photo/travel-concept-with-worldwide-landmarks_23-2149153263.jpg",
            fit: BoxFit.cover,
            width: double.infinity,
            height: 200,
          ),
          SizedBox(
            height: 60,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categoryList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: EdgeInsets.all(10),
                    child: Text(
                      categoryList[index].name ?? '',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                );
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: destinationList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {
                    Navigator.push(
                    context,
                    MaterialPageRoute(
                    builder: (context) =>
                       Detail(destination: destinationList[index]),
                     ),
                    );
                    },
                    child: Hero(
                      tag: destinationList[index].city ?? '',
                      child: SizedBox(
                        height: 230,
                        child: Stack(
                          children: [
                            ClipRRect(
                              // round the corner of the buttom
                              borderRadius: BorderRadius.circular(40),
                              child: Image.network(
                                destinationList[index].imageUrl ?? '',
                                fit: BoxFit.cover,
                                width: double.infinity,
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                height: 60,
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(40),
                                    bottomRight: Radius.circular(40),
                                  ),
                                ),
                                width: double.infinity,
                                padding: EdgeInsets.all(10),
                                child: Center(
                                  child: Text(
                                    destinationList[index].city ?? '',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
