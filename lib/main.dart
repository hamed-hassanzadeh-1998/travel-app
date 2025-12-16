import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/Model/TravelModel.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  double imageSize = 55;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: size.height / 1.8,
              color: const Color.fromARGB(255, 255, 255, 255),
              child: Stack(
                children: [
                  //background image
                  Container(
                    width: double.infinity,
                    height: size.height / 2.1,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 207, 19, 216),
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(60),
                        bottomRight: Radius.circular(60),
                      ),
                      image: DecorationImage(
                        image: NetworkImage(travelList[_selectedIndex].image),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  //Head Icons
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(16, 20, 16, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 30,
                            height: 30,
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(112, 255, 255, 255),
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              CupertinoIcons.chevron_left,
                              color: Colors.black,
                              size: 20,
                            ),
                          ),
                          Container(
                            width: 30,
                            height: 30,
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(112, 255, 255, 255),
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              CupertinoIcons.heart,
                              color: Colors.black,
                              size: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                 //Image List
                  Positioned(
                    right: 0,
                    top: 70,
                    child: SizedBox(
                      width: 90,
                      height: double.maxFinite,
                      child: ListView.builder(
                        itemCount: travelList.length,
                        itemBuilder: (context, index) {
                          return imageItem(index);
                        },
                      ),
                    ),
                  ),
 
                  //name & place
                  Positioned(
                    bottom: size.height/9.5,
                    left: size.width/9,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(travelList[_selectedIndex].name, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white)),
                        const SizedBox(height: 8),
                        Row(
                          children: [
                            Icon(CupertinoIcons.placemark, size: 16, color: Colors.white),
                            Text(travelList[_selectedIndex].location, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500,color: Colors.white)),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                height: size.height / 1.8,
                color: const Color.fromARGB(255, 255, 255, 255),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Card(
                          color: Color.fromARGB(255, 255, 255, 255),
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                            side: BorderSide(color: Color.fromARGB(60, 0, 0, 0), width: 1),
                          ),

                          child:Container(
                            width: 80,
                            height: 80,
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text('Distance'),
                                Text(travelList[_selectedIndex].distance  ),
                              ],
                            ),
                          ),
                        ),
                        Card(
                          color: Color.fromARGB(255, 255, 255, 255),
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                            side: BorderSide(color: Color.fromARGB(60, 0, 0, 0), width: 1),
                          ),

                          child:Container(
                            width: 80,
                            height: 80,
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text('Temp'),
                                Text(travelList[_selectedIndex].temp  ),
                              ],
                            ),
                          ),
                        ),
                        Card(
                          color: Color.fromARGB(255, 255, 255, 255),
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                            side: BorderSide(color: Color.fromARGB(60, 0, 0, 0), width: 1),
                          ),

                          child:Container(
                            width: 80,
                            height: 80,
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text('Rating'),
                                Text(travelList[_selectedIndex].rating  ),
                              ],
                            ),
                          ),
                        ),
                        
                      ],
                    ),
                    Row(),
                    Row(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget imageItem(int index) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () {
              setState(() {
                _selectedIndex = index;
              });
            },
            child: AnimatedContainer(
              decoration: BoxDecoration(
                border: Border.all(color: _selectedIndex == index ? Colors.white : const Color.fromARGB(0, 255, 255, 255), width: 2),
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: NetworkImage(travelList[index].image),
                  fit: BoxFit.cover,
                ),
              ),
              width: _selectedIndex == index ? imageSize + 15 : imageSize,
              height: _selectedIndex == index ? imageSize + 15 : imageSize,
              duration: const Duration(milliseconds: 300),
            ),
          ),
        ),
      ],
    );
  }
}
