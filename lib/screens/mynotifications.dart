import 'package:flutter/material.dart';

class MyNotifications extends StatefulWidget {
  @override
  _MyNotificationsState createState() => _MyNotificationsState();
}

class _MyNotificationsState extends State<MyNotifications> with SingleTickerProviderStateMixin{

  TabController tabController;

  allMentions(){
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 10,
        itemBuilder: (context, int i){
          return Container(
            padding: EdgeInsets.all(10.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width  * 0.1,
                  child: Column(
                    children: <Widget>[
                      CircleAvatar(
                        backgroundImage: NetworkImage('https://cdn.dribbble.com/users/3353575/screenshots/6193789/ig_thanos.jpg'),
                      ),

                    ],
                  ),
                ),
                Spacer(),
                Container(
                  width: MediaQuery.of(context).size.width * 0.8,
//                  color: Colors.blueAccent,
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Thanos',
                                  style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                                ),
                                TextSpan(
                                  text: '\t@TheDestroyer 12h',
                                  style: TextStyle(color: Colors.black54),
                                ),
                              ],
                            ),
                          ),
                          Icon(Icons.keyboard_arrow_down),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Text("Just Because you hit bottom, doesn\"t mean you have to stay there.", textAlign: TextAlign.start,)),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Icon(Icons.comment, color: Colors.black54,),
                          Icon(Icons.transform, color: Colors.black54,),
                          Icon(Icons.favorite_border, color: Colors.black54,),
                          Icon(Icons.share, color: Colors.black54,),
                        ],
                      ),
                    ],
                  ),
                ),
                Spacer(),
              ],
            ),
          );
        },
      ),
    );
  }

  allTab() {
    return ListView.separated(
      separatorBuilder: (context, int i){
        return Divider();
      },
      itemCount: 10,
      itemBuilder: (context, int i){
        return Container(
          child: Row(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width * 0.15,
                    child: Icon(Icons.star_border),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width * 0.82,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        CircleAvatar(
                          radius: 20,
                          backgroundImage: NetworkImage('https://www.pcgamesn.com/wp-content/uploads/2020/03/valorant-logo.jpg'),
                        ),
                        Icon(Icons.keyboard_arrow_down),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.82,

                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: RichText(

                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'Recent Tweet from',
                              style: TextStyle(
                                  color: Colors.black
                              ),
                            ),
                            TextSpan(
                              text: '\tVALORANT',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                                text: '\n'
                            ),
                            TextSpan(
                                text: '\n'
                            ),
                            TextSpan(
                              text: 'Hi there we are the best, we want you to '
                                  'know you are the best. No One can beat you.',
                              style: TextStyle(
                                color: Colors.black,

                              ),
                            ),
                            TextSpan(
                                text: '\n'
                            ),
                            TextSpan(
                                text: '\n'
                            ),
                            TextSpan(
                              text: 'Everyone deserves One Chance.',
                              style: TextStyle(
                                color: Colors.black,

                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  void initState(){
    super.initState();
    tabController = TabController( vsync: this, length: 2, initialIndex: 0);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        flexibleSpace: SafeArea(
          child: TabBar(
            indicatorPadding: EdgeInsets.all(0.0),

            indicatorColor: Colors.blue,
            indicatorSize: TabBarIndicatorSize.label,
            controller: tabController,
            tabs: [
              Tab(

                icon: Text('All', style: TextStyle(
                  color: Colors.black
                ),),
              ),
              Tab(
                icon: Text('Mentions', style: TextStyle(
                    color: Colors.black
                ),),
              ),
            ],
          ),
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: <Widget>[
          allTab(),
          allMentions(),
        ],
      ),
    );
  }
}
