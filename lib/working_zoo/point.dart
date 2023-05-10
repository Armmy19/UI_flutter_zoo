import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:getwidget/getwidget.dart';
import 'package:zoo/menu/NavDrawer.dart';

class point extends StatefulWidget {
  const point({super.key});

  @override
  State<point> createState() => _pointState();
}

class _pointState extends State<point> {
  static const String routeName = '/point';
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text("เติมเงินเครดิต"),
        ),
        drawer: NavDrawer(),
        body: Container(
            child: Column(
          children: [point_cadit(), Ponit()],
        )));
  }

  Widget point_cadit() {
    return Column(
      children: [
        Card(
          elevation: 35, // the size of the shadow
          shadowColor: Colors.black, // shadow color
          color: Colors.white,
          child: SizedBox(
            child: Column(
              children: [
                Center(
                    child: Column(
                  children: [
                    Icon(
                      Icons.money,
                      size: 100,
                      color: Colors.green,
                    ),
                    Text('0.00',
                        style: TextStyle(color: Colors.green, fontSize: 50)),
                  ],
                )),
                Card(
                  elevation: 35, // the size of the shadow
                  shadowColor: Colors.black, // shadow color
                  child: ListTile(
                    title: ElevatedButton.icon(
                      onPressed: () => _showActionSheet(context),
                      icon: Icon(
                        // <-- Icon
                        Icons.point_of_sale,
                        size: 30.0,
                      ),
                      label: Text(
                        'เติมเงิน',
                        style: TextStyle(fontSize: 25),
                      ), // <-- Text
                    ),
                    // leading: CircleAvatar(
                    //   backgroundImage: AssetImage('assets/3.jfif'),
                    // ),
                    onTap: () {
                      print('Card Clicked');
                    },
                  ),
                ),
              ],
            ),
            width: 500,
          ),
        ),
        Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const ListTile(
                leading: Icon(Icons.payment, size: 60),
                title: Text('ประวัติการเติมเงินของคุณ',
                    style: TextStyle(color: Colors.black, fontSize: 18)),
                // subtitle: Text('TWICE'),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget Ponit() {
    return Container(
      height: 350,
      child: ListView(
        children: [
          Card(
            child: Column(
              children: [
                ExpansionTile(
                  title: Text(
                    "วันที่ 13/02/2565",
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                  children: <Widget>[
                    ListTile(
                      title: Text('500 บาท เวลา 10:11:00'),
                    )
                  ],
                ),
              ],
            ),
          ),
          Card(
            child: Column(
              children: [
                ExpansionTile(
                  title: Text(
                    "วันที่ 14/02/2565",
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                  children: <Widget>[
                    ListTile(
                      title: Text('1000 บาท เวลา 10:11:00'),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  void _showActionSheet(BuildContext context) {
    showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) => CupertinoActionSheet(
        title: Text(
          'เลือกช่องทางเติมเงิน',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        actions: <CupertinoActionSheetAction>[
          CupertinoActionSheetAction(
            /// This parameter indicates the action would be a default
            /// defualt behavior, turns the action's text to bold text.
            isDefaultAction: true,
            onPressed: () {
              Navigator.pop(context);
            },
            child: Card(
                child: ListTile(
              leading: Image.network(
                  'https://www.it24hrs.com/wp-content/uploads/2017/05/prompt-pay-stat-1y-2017-a.png'),
              title: Text('prompt pay.'),
              subtitle: Text('ชำระเงินผ่านคิวอาร์โค๊ด'),
              trailing: GFButton(
                onPressed: () {
                  //  Navigator.push(context,
                  // MaterialPageRoute(builder: (context) => main_zoo()));
                },
                text: "เลือก",
                shape: GFButtonShape.pills,
                color: Colors.green.shade400,
              ),
            )),
          ),
          CupertinoActionSheetAction(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Card(
                child: ListTile(
              leading: Image.network(
                  'https://www.prachachat.net/wp-content/uploads/2022/04/%E0%B8%98%E0%B8%99%E0%B8%B2%E0%B8%84%E0%B8%B2%E0%B8%A3_%E0%B8%9B%E0%B8%81%E0%B9%83%E0%B8%99_0.jpg'),
              title: Text('At the Bank'),
              subtitle: Text('ชำระเงินผ่านแอปพลิเคชั่นธนาคาร'),
              trailing: GFButton(
                onPressed: () {
                  //  Navigator.push(context,
                  // MaterialPageRoute(builder: (context) => main_zoo()));
                },
                text: "เลือก",
                shape: GFButtonShape.pills,
                color: Colors.green.shade400,
              ),
            )),
          ),
          CupertinoActionSheetAction(
            /// This parameter indicates the action would perform
            /// a destructive action such as delete or exit and turns
            /// the action's text color to red.
            isDestructiveAction: true,
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('ยกเลิก'),
          ),
        ],
      ),
    );
  }
}
