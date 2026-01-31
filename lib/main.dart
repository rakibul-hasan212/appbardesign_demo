import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

//Create Sanckbar method to show when the user click the AppBar button.
  MySanckBar(massage,context){
   return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(massage))
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile Info"),
        backgroundColor: Colors.amber,
        titleSpacing: 10,
        elevation: 0,
        actions: [
          IconButton(onPressed: (){
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("this is Comment button")));
          }, icon: Icon(Icons.comment)),// inline Snackbar action
          IconButton(onPressed: (){MySanckBar("This is home button", context);}, icon: Icon(Icons.home)),
          IconButton(onPressed: (){MySanckBar("This is call button", context);}, icon: Icon(Icons.add_call)),
          IconButton(onPressed: (){MySanckBar("This is search button", context);}, icon: Icon(Icons.search)),
          IconButton(onPressed: (){MySanckBar("This is Mail button", context);}, icon: Icon(Icons.mail)),
          IconButton(onPressed: (){MySanckBar("This is GiftCard button", context);}, icon: Icon(Icons.card_giftcard))
        ],

      ),

      body: SingleChildScrollView(

        child: Column(
          //mainAxisAlignment: Axis.horizontal,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      height: 200,
                      width: 200,
                      color: Colors.lime,
                      child: Center(child: Text("this is container row 1")),
                      margin: EdgeInsets.only(right: 10,bottom: 10),
                    ),
                    Container(
                      height: 200,
                      width: 200,
                      color: Colors.green,
                      child: Center(child: Text("this is container row 2")),
                      margin: EdgeInsets.only(right: 10,bottom: 10),
                    ),
                    Container(
                      height: 200,
                      width: 200,
                      color: Colors.red,
                      child: Center(child: Text("this is container row 3")),
                      margin: EdgeInsets.only(right: 10,bottom: 10),
                    ),
                    Container(
                      height: 200,
                      width: 500,
                      color: Colors.deepOrangeAccent,
                      child: Center(child: Text("this is container row 4")),
                      margin: EdgeInsets.only(right: 10,bottom: 10),
                    ),
                    Container(
                      height: 200,
                      width: 200,
                      color: Colors.greenAccent,
                      child: Center(child: Text("this is container row 5")),
                      margin: EdgeInsets.only(bottom: 10),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                height: 500,
                width: 500,
                color: Colors.pinkAccent,
                child:
                Center(
                    child: Text("About Me container",style: TextStyle(fontSize: 40,wordSpacing: 10,fontWeight: FontWeight.bold,),)

                ),
              ),//about me
              Container(
                //margin: EdgeInsets.only(bottom: 10),
                height: 100,
                width: 500,
                color: Colors.greenAccent,
                child: Center(
                    child: Text(
                      "My Project Gellary",
                      style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,wordSpacing: 20),
                    )
                ),
              ),//project start
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 10,bottom: 10),
                      height: 300,
                      width: 245,
                      color: Colors.lime,
                      child: Center(child: Text("My Project 1")),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 10,bottom: 10),
                      height: 300,
                      width: 245,
                      color: Colors.deepOrange,
                      child: Center(child: Text("My Project 2")),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      height: 300,
                      width: 245,
                      color: Colors.green,
                      child: Center(child: Text("My Project 3")),
                    )
                  ],
                ),
              ),//project part1
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 10,bottom: 10),
                      height: 300,
                      width: 245,
                      color: Colors.greenAccent,
                      child: Center(child: Text("My Project 4")),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 10,bottom: 10),
                      height: 300,
                      width: 245,
                      color: Colors.orange,
                      child: Center(child: Text("My Project 5")),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      height: 300,
                      width: 245,
                      color: Colors.lightBlue,
                      child: Center(child: Text("My Project 6")),
                    )
                  ],
                ),
              ),//project part2
              Container(
                //margin: EdgeInsets.only(bottom: 10),
                height: 100,
                width: 500,
                color: Colors.blueGrey,
                child: Center(
                    child: Text("Download Ressume",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40,wordSpacing: 20),)
                ),
              ),//Ressume part
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 10,bottom: 10),
                      height: 200,
                      width: 200,
                      color: Colors.amberAccent,
                      child: Center(
                          child: Text("Flutter Developer CV",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w800),)
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 10,bottom: 10),
                      height: 200,
                      width: 200,
                      color: Colors.orange,
                      child: Center(
                          child: Text("Web Developer CV",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w800),)
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      height: 200,
                      width: 200,
                      color: Colors.cyan,
                      child: Center(
                          child: Text("Prompt Engineering CV",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w800),)
                      ),
                    ),
                  ],
                ),
              ),//end the ressume part
              Container(
                margin: EdgeInsets.only(bottom: 10),
                height: 150,
                width: 500,
                color: Colors.green,
                child: Text("this is container 10"),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                height: 150,
                width: 500,
                color: Colors.greenAccent,
                child: Text("this is container 11"),
              )
            ],
          ),
      ),
      //how to make Floating Action button and needed properties
      floatingActionButton: FloatingActionButton(
          
          child: Icon(Icons.add),
          onPressed: (){
            MySanckBar(("This is floating button"), context);
          },
          backgroundColor: Colors.amber,
          ),

      //how to make bottom Navigation bar and needed properties
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: 2,// which one is currently active navigation bar(0 means frist)
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.message),label: "Message"),
            BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
          ],
          onTap: (int index){//Action perform when tap this Manu
            if(index==0){
              MySanckBar("Home Manu Perform", context);
            }
            else if(index ==1){
              MySanckBar("Message Manu Perform", context);
            }
            else{
              MySanckBar("Profile Manu Perform", context);
            }
          },


      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.all(0),
                  child: UserAccountsDrawerHeader(
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      accountName: Text("Rakibul Hasan",style: TextStyle(color:Colors.black),),
                      accountEmail: Text("rh@gmail.com",style: TextStyle(color:Colors.black)),
                      //currentAccountPicture: Image.asset(name),
                      currentAccountPicture: Image.network("https://upload.wikimedia.org/wikipedia/commons/1/17/Google-flutter-logo.png"),
                      onDetailsPressed: (){MySanckBar("This is DrawerHeader", context);},
                  ),

                ),
            ListTile(
              leading: Icon(Icons.home,color:Colors.amber,),
              title: Text(
                "Home",
                style: TextStyle(
                    color: Colors.amber,
                    fontWeight: FontWeight.w800),
                ),
              onTap: (){MySanckBar("This is DrawerListTile Home page", context);},
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text(
                  "Contact",
                  style: TextStyle(
                      color: Colors.amber,
                      fontWeight: FontWeight.w800)
              ),
              onTap: (){MySanckBar("This is DrawerListTile contact page", context);},
            ),
            ListTile(
              leading: Icon(Icons.mail),
              title: Text(
                  "E-mail",
                  style: TextStyle(
                      color: Colors.amber,
                      fontWeight: FontWeight.w800)
              ),
              onTap: (){MySanckBar("This is DrawerListTile Mail page", context);},
            ),
            ListTile(
              leading: Icon(Icons.people),
              title: Text(
                  "Profile",
                  style: TextStyle(
                      color: Colors.amber,
                      fontWeight: FontWeight.w800)
              ),
              onTap: (){MySanckBar("This is DrawerListTile profile page", context);},
            )

          ],
        ),
      ),

    );

  }
}
