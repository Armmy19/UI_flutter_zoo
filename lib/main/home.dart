import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:zoo/menu/NavDrawer.dart';
import 'package:zoo/main/img_promotion.dart';
import 'package:zoo/working_zoo/main_zoo.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  static const String routeName = '/home';
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text("หน้าหลัก"),
        ),
        drawer: NavDrawer(),
        body: ListView(
          children: [
            Container(
              child: CarouselSlider(
                options: CarouselOptions(
                  autoPlay: true,
                  aspectRatio: 2.0,
                  enlargeCenterPage: true,
                ),
                items: imageSliders,
              ),
            ),
            Column(
              children: [
                list_main(),
              ],
            ),
          ],
        ));
  }

  Widget list_main() {
    return Column(
      children: [
        GFCard(
          boxFit: BoxFit.cover,
          titlePosition: GFPosition.start,
          showOverlayImage: true,
          imageOverlay: AssetImage(
            'assets/3.jfif',
          ),
          title: GFListTile(
            // avatar: GFAvatar(),
            titleText: 'สวนสัตว์อุบลราชธานี',
            color: Colors.white,
          ),
          buttonBar: GFButtonBar(
            children: <Widget>[
              GFButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => main_zoo()));
                },
                text: "เข้าชม",
                shape: GFButtonShape.pills,
                color: Colors.green,
              ),
            ],
          ),
        ),
        GFCard(
          boxFit: BoxFit.cover,
          titlePosition: GFPosition.start,
          showOverlayImage: true,
          imageOverlay: AssetImage(
            'assets/3.jfif',
          ),
          title: GFListTile(
            // avatar: GFAvatar(),
            titleText: 'สวนสัตว์ขอนแก่น',
            color: Colors.white,
          ),
          buttonBar: GFButtonBar(
            children: <Widget>[
              GFButton(
                onPressed: () {},
                text: "เข้าชม",
                shape: GFButtonShape.pills,
                color: Colors.green,
              ),
            ],
          ),
        ),
        GFCard(
          boxFit: BoxFit.cover,
          titlePosition: GFPosition.start,
          showOverlayImage: true,
          imageOverlay: AssetImage(
            'assets/3.jfif',
          ),
          title: GFListTile(
            // avatar: GFAvatar(),
            titleText: 'สวนสัตว์เชียงใหม่',
            color: Colors.white,
          ),
          buttonBar: GFButtonBar(
            children: <Widget>[
              GFButton(
                onPressed: () {},
                text: "เข้าชม",
                shape: GFButtonShape.pills,
                color: Colors.green,
              ),
            ],
          ),
        ),
        GFCard(
          boxFit: BoxFit.cover,
          titlePosition: GFPosition.start,
          showOverlayImage: true,
          imageOverlay: AssetImage(
            'assets/3.jfif',
          ),
          title: GFListTile(
            // avatar: GFAvatar(),
            titleText: 'สวนสัตว์เขาเขียว',
            color: Colors.white,
          ),
          buttonBar: GFButtonBar(
            children: <Widget>[
              GFButton(
                onPressed: () {},
                text: "เข้าชม",
                shape: GFButtonShape.pills,
                color: Colors.green,
              ),
            ],
          ),
        ),
        GFCard(
          boxFit: BoxFit.cover,
          titlePosition: GFPosition.start,
          showOverlayImage: true,
          imageOverlay: AssetImage(
            'assets/3.jfif',
          ),
          title: GFListTile(
            // avatar: GFAvatar(),
            titleText: 'สวนสัตว์สงขา',
            color: Colors.white,
          ),
          buttonBar: GFButtonBar(
            children: <Widget>[
              GFButton(
                onPressed: () {},
                text: "เข้าชม",
                shape: GFButtonShape.pills,
                color: Colors.green,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
