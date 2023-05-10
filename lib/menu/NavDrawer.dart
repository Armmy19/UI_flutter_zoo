import 'package:flutter/material.dart';
import 'package:zoo/login/login.dart';
import 'package:zoo/Profile/Profile.dart';
import 'package:zoo/main/basket.dart';
import 'package:zoo/main/home.dart';
import 'package:zoo/main/record_shop.dart';
import 'package:zoo/working_zoo/card_yous.dart';
import 'package:zoo/working_zoo/point.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          const UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage("assets/9.jfif"),
            ),
            accountName: Text("neecoder x"),
            accountEmail: Text("test@test.com"),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/3.jfif"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('หน้าหลัก'),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => home()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.card_giftcard),
            title: const Text('บัตรของคุณ'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => card_yous()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.money),
            title: const Text('เติมเงิน'),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => point()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.shop),
            title: const Text('ซื้อบัตรออนไลน์'),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => home()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.shopping_basket),
            title: const Text('ตระกล้า'),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => basket()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.report),
            title: const Text('ประวัติการซื้อ'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => record_shop()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.account_circle),
            title: const Text('ข้อมูลส่วนตัว'),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => profile()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('ออกจากระบบ'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SignupPage()));
            },
          )
        ],
      ),
    );
  }
}
