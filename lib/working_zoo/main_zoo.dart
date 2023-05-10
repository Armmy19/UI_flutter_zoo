import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:zoo/menu/NavDrawer.dart';
import 'package:zoo/working_zoo/buy_ticket.dart';

class main_zoo extends StatefulWidget {
  const main_zoo({super.key});

  @override
  State<main_zoo> createState() => _main_zooState();
}

class _main_zooState extends State<main_zoo> {
  static const String routeName = '/main_zoo';

  late List<ItemModel> mListing;

  @override
  void initState() {
    super.initState();
    init();
  }

  init() async {
    mListing = getData();

    setState(() {});
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("สวนสัตร์อุบลราชธานี"),
      ),
      drawer: NavDrawer(),
      body: Container(
        child: Column(
          children: [
            16.height,
            Text("โปรโมชั่น",
                    style: boldTextStyle(
                        color: appStore.textPrimaryColor, size: 20))
                .paddingLeft(16),
            SizedBox(
              height: 220,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: mListing.length,
                shrinkWrap: true,
                padding: EdgeInsets.only(right: 16),
                itemBuilder: (context, index) {
                  return Product(mListing[index], index);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Text("บัตรเข้าชม",
                    style: boldTextStyle(
                        color: appStore.textPrimaryColor, size: 20))
                .paddingLeft(16),
            ),
            Container(
              height: 350,
              child: ListView(
                children: [
                  Column(
                    children: [buy_ticket()],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buy_ticket() {
    return Column(
      children: [
        Card(
          child: Container(
            height: 100,
            color: Colors.white,
            child: Row(
              children: [
                Center(
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Image.asset("assets/9.jfif"),
                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.topLeft,
                    child: Column(
                      children: [
                        Expanded(
                          flex: 5,
                          child: ListTile(
                            title: Text("บัตรผู้ใหญ่ 150 บาท"),
                            subtitle: Text("สวนสัตร์อุบลราชธานี"),
                          ),
                        ),
                        Expanded(
                          flex: 5,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              TextButton(
                                child: Text("ซื้อบัตร"),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => buyticket()));
                                },
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              TextButton(
                                child: Text("เพิ่มลงกระกล้า"),
                                onPressed: () {},
                              ),
                              SizedBox(
                                width: 8,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  flex: 8,
                ),
              ],
            ),
          ),
          elevation: 8,
          margin: EdgeInsets.all(10),
        ),
        Card(
          child: Container(
            height: 100,
            color: Colors.white,
            child: Row(
              children: [
                Center(
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Image.asset("assets/9.jfif"),
                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.topLeft,
                    child: Column(
                      children: [
                        Expanded(
                          flex: 5,
                          child: ListTile(
                            title: Text("บัตรต่างชาติ 180 บาท"),
                            subtitle: Text("สวนสัตร์อุบลราชธานี"),
                          ),
                        ),
                        Expanded(
                          flex: 5,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              TextButton(
                                child: Text("ซื้อบัตร"),
                                onPressed: () {},
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              TextButton(
                                child: Text("เพิ่มลงกระกล้า"),
                                onPressed: () {},
                              ),
                              SizedBox(
                                width: 8,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  flex: 8,
                ),
              ],
            ),
          ),
          elevation: 8,
          margin: EdgeInsets.all(10),
        ),
        Card(
          child: Container(
            height: 100,
            color: Colors.white,
            child: Row(
              children: [
                Center(
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Image.asset("assets/9.jfif"),
                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.topLeft,
                    child: Column(
                      children: [
                        Expanded(
                          flex: 5,
                          child: ListTile(
                            title: Text("บัตรเด็ก 80 บาท"),
                            subtitle: Text("สวนสัตร์อุบลราชธานี"),
                          ),
                        ),
                        Expanded(
                          flex: 5,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              TextButton(
                                child: Text("ซื้อบัตร"),
                                onPressed: () {},
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              TextButton(
                                child: Text("เพิ่มลงกระกล้า"),
                                onPressed: () {},
                              ),
                              SizedBox(
                                width: 8,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  flex: 8,
                ),
              ],
            ),
          ),
          elevation: 8,
          margin: EdgeInsets.all(10),
        ),
      ],
    );
  }
}

class DemoMWListViewScreen3 extends StatefulWidget {
  static const tag = '/DemoMWListViewScreen3';

  @override
  _DemoMWListViewScreen3State createState() => _DemoMWListViewScreen3State();
}

class _DemoMWListViewScreen3State extends State<DemoMWListViewScreen3> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [],
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class Product extends StatelessWidget {
  late ItemModel model;

  Product(ItemModel model, int pos) {
    this.model = model;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.4,
      margin: EdgeInsets.only(left: 16, top: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(12.0),
            child: Image.asset(
              '${model.img}',
              fit: BoxFit.cover,
              height: 170,
              width: MediaQuery.of(context).size.width,
            ),
          ),
          SizedBox(height: 4),
          Padding(
            padding: const EdgeInsets.only(left: 4, right: 4),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(model.name,
                    style: primaryTextStyle(color: appStore.textPrimaryColor)),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ItemModel {
  var name = "";
  var img = "";
}

List<ItemModel> getData() {
  List<ItemModel> popularArrayList = [];
  ItemModel item1 = ItemModel();
  item1.img =
      'assets/3.jfif';
  item1.name = "โปรโมชั่น";

  ItemModel item2 = ItemModel();
  item2.img =
      'assets/3.jfif';
  item2.name = "โปรโมชั่น";

  ItemModel item3 = ItemModel();
  item3.img =
      'assets/3.jfif';
  item3.name = "โปรโมชั่น";

  ItemModel item4 = ItemModel();
  item4.img =
      'assets/3.jfif';
  item4.name = "โปรโมชั่น";

  ItemModel item5 = ItemModel();
  item5.img =
      'assets/3.jfif';
  item5.name = "โปรโมชั่น";

  ItemModel item6 = ItemModel();
  item6.img =
      'assets/3.jfif';
  item6.name = "โปรโมชั่น";

  popularArrayList.add(item1);
  popularArrayList.add(item2);
  popularArrayList.add(item3);
  popularArrayList.add(item4);
  popularArrayList.add(item5);
  popularArrayList.add(item6);
  popularArrayList.add(item1);
  popularArrayList.add(item2);
  popularArrayList.add(item3);
  popularArrayList.add(item4);
  popularArrayList.add(item5);
  popularArrayList.add(item6);
  popularArrayList.add(item1);
  popularArrayList.add(item2);
  popularArrayList.add(item3);
  popularArrayList.add(item4);
  popularArrayList.add(item5);
  popularArrayList.add(item6);
  popularArrayList.add(item1);
  popularArrayList.add(item2);
  popularArrayList.add(item3);
  popularArrayList.add(item4);
  popularArrayList.add(item5);
  popularArrayList.add(item6);
  return popularArrayList;
}

AppStore appStore = AppStore();

class AppStore {
  Color textPrimaryColor = Color(0xFF212121);
  Color iconColorPrimaryDark = Color(0xFF212121);
  Color scaffoldBackground = Color(0xFFEBF2F7);
  Color backgroundColor = Colors.black;
  Color backgroundSecondaryColor = Color(0xFF131d25);
  Color appColorPrimaryLightColor = Color(0xFFF9FAFF);
  Color textSecondaryColor = Color(0xFF5A5C5E);
  Color appBarColor = Colors.white;
  Color iconColor = Color(0xFF212121);
  Color iconSecondaryColor = Color(0xFFA8ABAD);
  Color cardColor = Colors.white;
  Color appColorPrimary = Color(0xFF1157FA);
  Color scaffoldBackgroundColor = Color(0xFFEFEFEF);

  AppStore();
}
