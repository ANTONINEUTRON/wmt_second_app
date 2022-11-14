import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WTFellowship Second App',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey.shade100,
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(15, 30, 15, 20),
        child: ListView(
            children: [
              Profile(),
              Padding(padding: EdgeInsets.all(10)),
              Search()
            ]
        ),
      )
    );
  }
}

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black87),
      ),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Icon(
              Icons.search_sharp,
              size:20,
              color: Colors.grey,
            ),
          ),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                  labelText:"Search"
              ),
            )
          ),
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.settings),
              color: Colors.green.shade300,
          )
        ],
      ),
    );
  }
}


class Profile extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.7,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Michael Safranov",
                style: Theme.of(context).textTheme.headline5,
              ),
              Text(
                  "Manager at CNN",
                  style: TextStyle(
                      color: Colors.grey.shade500
                  )
              )
            ],
          ),
        ),
        Icon(
          Icons.account_box_outlined,
          size: 50,
          color: Colors.blue.shade900,
        )
      ],
    );
  }

}

