import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:getwidget/getwidget.dart';
import 'package:zoo/menu/NavDrawer.dart';

class payment extends StatefulWidget {
  const payment({super.key});

  @override
  State<payment> createState() => _paymentState();
}

class _paymentState extends State<payment> {
  static const String routeName = '/payment';
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text("สวนสัตว์อุบลราชธานี"),
        ),
        drawer: NavDrawer(),
        body: Container(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: payment_money(),
          ),
        ));
  }

  Widget payment_money() {
    return Column(
      children: [
        Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const ListTile(
                leading: Icon(Icons.payment, size: 60),
                title: Text('เลือกช่องทางการชำระเงิน',
                    style: TextStyle(color: Colors.black, fontSize: 16)),
                // subtitle: Text('TWICE'),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20.5,
        ),
        Card(
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
        SizedBox(
          height: 10.5,
        ),
        Card(
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
        Card(
            child: ListTile(
          leading:
              Image.network('https://www.shimono.co.th/wp-content/uploads/2020/06/visa-mastercard-400x-q75.png'),
          title: Text('Credit card debit card'),
          subtitle: Text('ตัดผ่านบัตรเครดิต'),
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
        SizedBox(
          height: 10.5,
        ),
        Container(
            height: 40.0,
            child: Material(
              borderRadius: BorderRadius.circular(20.0),
              shadowColor: Colors.greenAccent,
              color: Colors.green,
              elevation: 7.0,
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Center(
                  child: Text(
                    'ย้อนกลับ',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Montserrat'),
                  ),
                ),
              ),
            )),
      ],
    );
  }
}
