import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:zoo/menu/NavDrawer.dart';

class basket extends StatefulWidget {
  const basket({super.key});

  @override
  State<basket> createState() => _basketState();
}

class _basketState extends State<basket> {
  static const String routeName = '/basket';
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text("ตระกล้าของคุณ"),
        ),
        drawer: NavDrawer(),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
          child: Container(
            child: Column(
              children: [list_basket()],
            ),
          ),
        ));
  }

  Widget list_basket() {
    return Card(
      child: ListTile(
        leading: Image.asset("assets/9.jfif"),
        title: Text('สวนสัตว์อุบลราชธานี'),
        subtitle: Text('บัตรผู้ใหญ่ 150 บาท' '\nจำนวนบัตร X3'),
        trailing: PopupMenuButton<int>(
          itemBuilder: (context) => [
            // popupmenu item 1
            PopupMenuItem(
              value: 1,
              // row has two child icon and text.
              child: Row(
                children: [
                  Icon(Icons.delete),
                  SizedBox(
                    // sized box with width 10
                    width: 10,
                  ),
                  Text("ลบ")
                ],
              ),
            ),
            // popupmenu item 2
            PopupMenuItem(
              value: 2,
              // row has two child icon and text
              child: Row(
                children: [
                  Icon(Icons.chrome_reader_mode),
                  SizedBox(
                    // sized box with width 10
                    width: 10,
                  ),
                  Text("เพิ่มเติม")
                ],
              ),
            ),
            PopupMenuItem(
              value: 2,
              // row has two child icon and text
              child: Row(
                children: [
                  Icon(Icons.chrome_reader_mode),
                  SizedBox(
                    // sized box with width 10
                    width: 10,
                  ),
                  Text("จองบัตร")
                ],
              ),
            ),
          ],
          offset: Offset(0, 100),
          color: Colors.grey,
          elevation: 2,
        ),
      ),
    );
  }
}
