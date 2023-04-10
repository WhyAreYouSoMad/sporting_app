import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:sporting_app/screen/login_page.dart';

class Mainpage extends StatelessWidget {
  const Mainpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.black,
            size: 30,
          ),
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (context) {
                return SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Container(
                      height: MediaQuery.of(context).size.height,
                      width: double.infinity,
                      child: Column(
                        children: [
                          IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(Icons.close),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
              isScrollControlled: true,
            );
          },
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (_) => MyLogin()));
            },
            icon: Icon(
              Icons.bookmark,
              color: Colors.black,
              size: 30,
            ),
          )
        ],
      ),

    //  위는 AppBar
    //  아래는 NaviBar

     bottomNavigationBar: CurvedNavigationBar(
       backgroundColor: Colors.greenAccent,
       color: Colors.white,
       animationDuration: Duration(milliseconds: 300),
       onTap: (index) {
         print(index);
       },
       items: [
         Icon(Icons.map,),
         Icon(Icons.sports_baseball),
         Image.asset('assets/sporting.png', color: Colors.black,),
         Icon(Icons.mail),
         Icon(Icons.person),
       ],
     ),
      //


    );
  }
}
