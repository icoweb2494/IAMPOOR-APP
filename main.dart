import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      home: Scaffold(
          appBar: AppBar(
            elevation: 0.0,
            title: const Text(
              'WhatsApp',
              style: TextStyle(fontSize: 22),
            ),
            backgroundColor: const Color(0xff12867e),
            actions: const [
              Icon(Icons.search),
              Icon(Icons.more_vert_sharp),
            ],
          ),
          body: const AppBarExtention()
      ),
    );
  }
}

class AppBarExtention extends StatelessWidget {
  const AppBarExtention({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const arr = ['CHAT', 'STATUS', 'CALLS'];
    return Container(
      height: MediaQuery.of(context).size.height * .05,
      decoration: const BoxDecoration(
        // border: Border.all(),
        color: Color(0xff12867e),
      ),
      child: Row(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * .10,
            child: const Icon(Icons.camera_alt_rounded,
                size: 23, color: Colors.white),
          ),
          ...arr.map((e) => myTab(e, context))
        ],
      ),
    );
  }
}

Widget myTab(String text, BuildContext context) {
  return SizedBox(
    width: MediaQuery.of(context).size.width * 0.3,
    child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w700,
          fontSize: 16,
        ),
      )
    ]),
  );
}
