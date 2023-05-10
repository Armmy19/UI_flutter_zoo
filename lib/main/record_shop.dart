import 'package:flutter/material.dart';
import 'package:zoo/menu/NavDrawer.dart';

class record_shop extends StatefulWidget {
  const record_shop({super.key});

  @override
  State<record_shop> createState() => _record_shopState();
}

class _record_shopState extends State<record_shop> {
  static const String routeName = '/profile';
  int index = -1;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text("ประวัติการซื้อของคุณ"),
        ),
        drawer: NavDrawer(),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: list_record(),
        ));
  }

  Widget list_record() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: ExpansionPanelList(
            expansionCallback: (i, isOpen) {
              setState(() {
                if (index == i)
                  index = -1;
                else
                  index = i;
              });
            },
            animationDuration: Duration(seconds: 1),
            dividerColor: Colors.green,
            elevation: 2,
            children: [
              ExpansionPanel(
                headerBuilder: (BuildContext context, bool isExpanded) {
                  return ListTile(
                    title: Text("บัตรผู้ใหญ่  (สวนสัตว์อุบลราชธานี)"),
                  );
                },
                canTapOnHeader: true,
                body: ListTile(
                  title: Text("บัตรผูใหญ่ 150 บาท"),
                  subtitle: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('จำนวน 2 ใบ'),
                      Text('รวมเป็นเเงิน 300 บาท')
                    ],
                  ),
                ),
                isExpanded: index == 0,
              ),

              ExpansionPanel(
                headerBuilder: (BuildContext context, bool isExpanded) {
                  return ListTile(
                    title: Text("บัตรเด็ก 100 บาท (สวนสัตว์อุบลราชธานี)"),
                  );
                },
                body: ListTile(
                  title: Text("บัตรเด็ก 100 บาท"),
                  subtitle: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('จำนวน 2 ใบ'),
                      Text('รวมเป็นเเงิน 200 บาท')
                    ],
                  ),
                ),
                isExpanded: index == 1,
              ),
              // ExpansionPanel(
              //   headerBuilder: (BuildContext context, bool isExpanded) {
              //     return ListTile(
              //       title: Text("Index 2 (Header Tap Enabled)"),
              //     );
              //   },
              //   canTapOnHeader: true,
              //   body: ListTile(
              //     title: Text("Notes"),
              //     subtitle: const Text('for index 2'),
              //   ),
              //   isExpanded: index == 2,
              // ),
              // ExpansionPanel(
              //   headerBuilder: (BuildContext context, bool isExpanded) {
              //     return ListTile(
              //       title: Text("Index 3"),
              //     );
              //   },
              //   body: ListTile(
              //     title: Text("Notes"),
              //     subtitle: const Text('for index 3'),
              //   ),
              //   isExpanded: index == 3,
              // ),
              // ExpansionPanel(
              //   headerBuilder: (BuildContext context, bool isExpanded) {
              //     return ListTile(
              //       title: Text("Index 4"),
              //     );
              //   },
              //   body: ListTile(
              //     title: Text("Notes"),
              //     subtitle: const Text('for index 4'),
              //   ),
              //   isExpanded: index == 4,
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
