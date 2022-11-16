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
        scaffoldBackgroundColor: Colors.grey.shade300,
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
          child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Profile(),
                ),
                Padding(padding: EdgeInsets.all(10)),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Search(),
                ),
                Padding(padding: EdgeInsets.all(10)),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Statistics(),
                ),
                Padding(padding: EdgeInsets.all(15)),
                CompanyGoals()
              ]
          ),
        )
    );
  }
}

class Statistics extends StatelessWidget {
  const Statistics({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Statistics",
              style: Theme.of(context).textTheme.headline5,
            ),
            Text(
              "MONTH",
              style: Theme.of(context).textTheme.labelLarge,
            )
          ],
        ),

        Container(
          padding: EdgeInsets.only(top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    child: Icon(
                        Icons.key,
                        color: Colors.white
                    ),
                    height: 50,
                    width: 50,
                    color: Colors.black,
                  ),
                  Container(width: 10,),
                  Text(
                    "Security Attacks",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 19
                    ),
                  )
                ],
              ),

              Row(
                children: [
                  Icon(
                    Icons.arrow_upward,
                    color: Colors.green.shade800,
                  ),
                  Text(
                      "68%",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: Colors.green.shade800
                      )
                  )
                ],
              )
            ],
          ),
        ),

        Container(
          padding: EdgeInsets.only(top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    child: Icon(
                        Icons.fingerprint_sharp,
                        color: Colors.white
                    ),
                    height: 50,
                    width: 50,
                    color: Colors.black,
                  ),
                  Container(width: 10,),
                  Text(
                    "Protected Bunches",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 19
                    ),
                  )
                ],
              ),

              Row(
                children: [
                  Icon(
                    Icons.arrow_downward,
                    color: Colors.red.shade800,
                  ),
                  Text(
                      "38%",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: Colors.red.shade800
                      )
                  )
                ],
              )
            ],
          ),
        ),

        Container(
          padding: EdgeInsets.only(top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    child: Icon(
                        Icons.sports_basketball_outlined,
                        color: Colors.white
                    ),
                    height: 50,
                    width: 50,
                    color: Colors.black,
                  ),
                  Container(width: 10,),
                  const Text(
                    "Runtime Cost",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 19
                    ),
                  )
                ],
              ),

              const Text(
                  "\$6236",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      color: Colors.black
                  )
              )
            ],
          ),
        ),
      ],
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
        mainAxisSize: MainAxisSize.min,
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
          Container(
            height: 60,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [
                      Colors.green.shade800,
                      Colors.green.shade600,
                      Colors.green.shade300,
                      Colors.amberAccent.shade200,
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter
                ),
                border: Border.all(color: Colors.black87)
            ),
            child: IconButton(
              onPressed: (){},
              icon: Icon(Icons.menu_rounded),
              color: Colors.black,
            ),
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
        Image.asset(
            "images/profile.jpg",
          width: 50,
          height: 50,
        )
      ],
    );
  }

}

class CompanyGoals extends StatelessWidget {
  const CompanyGoals({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10),
        color: Colors.white,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                    "Company Goals",
                  style: Theme.of(context).textTheme.headline5
                ),
                Text(
                    "ALL",
                  style: Theme.of(context).textTheme.labelLarge,
                )
              ],
            ),

            Padding(padding: EdgeInsets.all(10),),//space betwee company goals and section below it

            Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.black,
                        width: 2
                    )
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.check_circle),
                            Text("Cybersecurity Teams")
                          ],
                        ),
                        Text(
                            "Active",
                          style: TextStyle(
                            color: Colors.grey.shade500
                          )
                        )
                      ],
                    ),

                    Padding(padding: EdgeInsets.all(10),),

                    Text(
                        "Conduct Phishing Simulations Between Companies",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    Divider(
                      color: Colors.grey.shade600,
                      indent: 10,
                      endIndent: 10,
                    ),
                    Row(
                      children: [
                        Icon(Icons.access_time_sharp),
                        Text("Ends in 24 days")
                      ],
                    )
                  ],
                )
            )
          ],
        )
    );
  }
}
