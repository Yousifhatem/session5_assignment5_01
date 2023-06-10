import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.cyan),
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
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text(
          'Session 5',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          //color: Colors.red,
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 350,
                height: 400,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.amber,
                    image: const DecorationImage(
                        image: AssetImage('assets/images/myImage.jpeg'),
                        fit: BoxFit.cover)),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                'Yousef Abdellatif',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                'Flutter developer, Work experience 4 years. ',
                style: TextStyle(
                    color: Colors.grey[350],
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'I make nature and product photography. ',
                style: TextStyle(
                    color: Colors.grey[350],
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text.rich(TextSpan(children: [
                      TextSpan(
                          text: '112',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20)),
                      TextSpan(text: ' works', style: TextStyle(fontSize: 17)),
                    ])),
                    Stack(
                      alignment: Alignment.centerRight,
                      children: [
                        Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(color: Colors.white, width: 5),
                              image: const DecorationImage(
                                  image:
                                      AssetImage('assets/images/myImage.jpeg'),
                                  fit: BoxFit.contain)),
                        ),
                        Container(
                          width: 70,
                          height: 70,
                          margin: const EdgeInsets.only(right: 44),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(color: Colors.white, width: 5),
                              image: const DecorationImage(
                                  image:
                                      AssetImage('assets/images/myImage.jpeg'),
                                  fit: BoxFit.contain)),
                        ),
                        Container(
                          width: 70,
                          height: 70,
                          margin: const EdgeInsets.only(right: 85),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(color: Colors.white, width: 5),
                              image: const DecorationImage(
                                  image:
                                      AssetImage('assets/images/myImage.jpeg'),
                                  fit: BoxFit.contain)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.only(
                        top: 16, left: 16, right: 55, bottom: 16),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.indigo[800]),
                    child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '3',
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Text(
                            'applications',
                            style: TextStyle(
                                fontSize: 15,
                                //fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ]),
                  ),
                  Container(
                    padding: const EdgeInsets.only(
                        top: 16, left: 16, right: 55, bottom: 16),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.grey[200]),
                    child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '25',
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          Text(
                            'views today',
                            style: TextStyle(
                                fontSize: 15,
                                //fontWeight: FontWeight.bold,
                                color: Colors.grey),
                          ),
                        ]),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(
                        Icons.person,
                        color: Colors.indigo[800],
                        size: 40,
                      ),
                      const Icon(
                        Icons.search,
                        color: Colors.grey,
                        size: 40,
                      ),
                      const Icon(
                        Icons.settings,
                        color: Colors.grey,
                        size: 40,
                      ),
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
