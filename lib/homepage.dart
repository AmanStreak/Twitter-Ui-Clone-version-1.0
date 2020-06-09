import 'package:flutter/material.dart';
import 'package:fluttertwitter/screens/myhome.dart';
import 'package:fluttertwitter/screens/mymessages.dart';
import 'package:fluttertwitter/screens/mynotifications.dart';
import 'package:fluttertwitter/screens/mysearch.dart';

class HomePage extends StatefulWidget{
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage>{

  PageController pageController = PageController();

  int pageIndex = 0;

  @override
  void initState(){
    super.initState();
    pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.create),
      ),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Builder(

            builder: (context){
              return GestureDetector(
                onTap: (){
                  Scaffold.of(context).openDrawer();
                },
                child: CircleAvatar(
                  backgroundImage: NetworkImage('https://www.pcgamesn.com/wp-content/uploads/2020/03/valorant-logo.jpg', ),
                ),
              );
            }
          ),
        ),
        title: Image.network('https://seeklogo.com/images/T/twitter-logo-A84FE9258E-seeklogo.com.png', fit: BoxFit.contain, height: 20,),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: pageIndex,
        backgroundColor: Colors.white,
        onTap: (index){
//          setState(() {
//            pageIndex = index;
//          });
          pageController.animateToPage(index, duration: const Duration(milliseconds: 200), curve: Curves.easeInOut);
        },

        type: BottomNavigationBarType.fixed,
        iconSize: 25.0,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_none),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail_outline),
            title: Text(''),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Container(
                alignment: Alignment.centerLeft,
//                height: 100,
//                width: 50,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      FittedBox(
                        fit: BoxFit.contain,
                        child: CircleAvatar(
                          radius: 30.0,
                          backgroundImage: NetworkImage('https://www.pcgamesn.com/wp-content/uploads/2020/03/valorant-logo.jpg', ),
                        ),
                      ),
                      Spacer(),
                      RichText(
                        textAlign: TextAlign.left,

                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'Amandeep', style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black
                            ),
                            ),
                            TextSpan(
                              text: '\n@amanstreak', style: TextStyle(
                              fontWeight: FontWeight.w300,
                              color: Colors.black,
                            ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      RichText(
                        textAlign: TextAlign.left,

                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: '50',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            TextSpan(
                              text: '\tFollowing',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            TextSpan(
                              text: '\t\t',
                            ),
                            TextSpan(
                              text: '17k',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            TextSpan(
                              text: '\tFollowers',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                    ],
                  ),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.person_outline),
              title: Text('Profile', style: TextStyle(fontSize: 17.0, color: Colors.black54),),
            ),
            ListTile(
              leading: Icon(Icons.featured_play_list),
              title: Text('Lists', style: TextStyle(fontSize: 17.0, color: Colors.black54),),
            ),
            ListTile(
              leading: Icon(Icons.filter_frames),
              title: Text('Topics', style: TextStyle(fontSize: 17.0, color: Colors.black54),),
            ),
            ListTile(
              leading: Icon(Icons.bookmark_border),
              title: Text('Bookmarks', style: TextStyle(fontSize: 17.0, color: Colors.black54),),
            ),
            ListTile(
              leading: Icon(Icons.flash_on),
              title: Text('Moments', style: TextStyle(fontSize: 17.0, color: Colors.black54),),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(),
            ListTile(
              title: Text('Settings and Privacy', style: TextStyle(
                fontSize: 17.0,
                color: Colors.black54,
              ),),
            ),
            ListTile(
              title: Text('Help Centre', style: TextStyle(
                fontSize: 17.0,
                color: Colors.black54,
              ),),
            ),
            SizedBox(
              height: 50,
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(

                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.lightbulb_outline, color: Colors.blue,),
                  Icon(Icons.settings_cell, color: Colors.blue,),
                ],
              ),
            ),
          ],
        ),
      ),
      body: PageView(
        onPageChanged: (int x){
          setState((){
            pageIndex = x;
          });
        },
        controller: pageController,
        children: <Widget>[
          MyHome(),
          MySearch(),
          MyNotifications(),
          MyMessages(),
        ],
      ),
    );
  }
}