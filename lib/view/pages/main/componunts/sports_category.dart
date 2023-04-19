import 'package:flutter/material.dart';
import 'package:sporting_app/view/pages/main/componunts/image_button.dart';
import 'package:sporting_app/view/pages/stadiumlist/componunts/stadium_list_detail.dart';
import 'package:sporting_app/view/pages/stadiumlist/stadium_list.dart';

class SportsCategory extends StatelessWidget {

  const SportsCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      delegate: SliverChildListDelegate([
        // InkWell(
        //   onTap: () {
        //     Navigator.of(context).push(MaterialPageRoute(builder: (_) => StadiumListDetail()));
        //   },
        //   child: Column(
        //     children: [
        //       Container(
        //         height: 70,
        //           child: Image.asset("assets/Tennislogo.png")),
        //       Text("테니스",style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),),
        //     ],
        //   ),
        // ),
        // InkWell(
        //   onTap: () {},
        //   child: Column(
        //     children: [
        //       Container(
        //           height: 70,
        //           child: Image.asset("assets/Baseballlogo.png")),
        //       Text("야구",style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),),
        //     ],
        //   ),
        // ),
        // InkWell(
        //   onTap: () {},
        //   child: Column(
        //     children: [
        //       Container(
        //           height: 70,
        //           child: Image.asset("assets/Bowlinglogo.png")),
        //       Text("볼링",style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),),
        //     ],
        //   ),
        // ),
        // InkWell(
        //   onTap: () {},
        //   child: Column(
        //     children: [
        //       Container(
        //           height: 70,
        //           child: Image.asset("assets/Billiardslogo.png")),
        //       Text("당구",style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),),
        //     ],
        //   ),
        // ),
        // InkWell(
        //   onTap: () {},
        //   child: Column(
        //     children: [
        //       Container(
        //           height: 70,
        //           child: Image.asset("assets/golflogo.png")),
        //       Text("골프",style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),),
        //     ],
        //   ),
        // ),
        // InkWell(
        //   onTap: () {},
        //   child: Column(
        //     children: [
        //       Container(
        //           height: 70,
        //           child: Image.asset("assets/soccerlogo.png")),
        //       Text("축구",style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),),
        //     ],
        //   ),
        // ),
        // InkWell(
        //   onTap: () {},
        //   child: Column(
        //     children: [
        //       Container(
        //           height: 70,
        //           child: Image.asset("assets/Tabletennislogo.png")),
        //       Text("탁구",style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),),
        //     ],
        //   ),
        // ),
        // InkWell(
        //   onTap: () {},
        //   child: Column(
        //     children: [
        //       Container(
        //           height: 70,
        //           child: Image.asset("assets/Basketballlogo.png")),
        //       Text("농구",style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),),
        //     ],
        //   ),
        // ),


        const ImageButton(image: "assets/Tennislogo.png", text: "테니스"),
        const ImageButton(image: "assets/Baseballlogo.png", text: "야구"),
        const ImageButton(image: "assets/Bowlinglogo.png", text: "볼링"),
        const ImageButton(image: "assets/Billiardslogo.png", text: "당구"),
        const ImageButton(image: "assets/golflogo.png", text: "골프"),
        const ImageButton(image: "assets/soccerlogo.png", text: "축구"),
        const ImageButton(image: "assets/Tabletennislogo.png", text: "탁구"),
        const ImageButton(image: "assets/Basketballlogo.png", text: "농구"),
      ]),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4, mainAxisSpacing: 0, crossAxisSpacing: 10, childAspectRatio: 1),
    );
  }
}
