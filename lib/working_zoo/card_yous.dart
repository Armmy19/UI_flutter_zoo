import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:zoo/menu/NavDrawer.dart';

class card_yous extends StatefulWidget {
  const card_yous({super.key});

  @override
  State<card_yous> createState() => _card_yousState();
}

class _card_yousState extends State<card_yous> {
  static const String routeName = '/card_yous';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("บัตรของคุณ"),
        ),
        drawer: NavDrawer(),
        body: Container(
          child: Column(
            children: [
              MWExpansionPanel5ComponentWidget().paddingSymmetric(
                vertical: 8,
                horizontal: 16,
              )
            ],
          ),
        ));
  }
}

class MWExpansionPanel5ComponentWidget extends StatefulWidget {
  const MWExpansionPanel5ComponentWidget({Key? key}) : super(key: key);

  @override
  _MWExpansionPanel5ComponentWidgetState createState() =>
      _MWExpansionPanel5ComponentWidgetState();
}

class _MWExpansionPanel5ComponentWidgetState
    extends State<MWExpansionPanel5ComponentWidget> {
  bool isExpanded = false;

  String dropdownValue = 'UK';

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: radius(),
        color: Colors.green.withAlpha(100),
      ),
      child: ExpansionTile(
        childrenPadding: EdgeInsets.all(8),
        leading: Container(
          child: Icon(Icons.payment_outlined, color: Colors.white, size: 30),
          padding: EdgeInsets.all(6),
          decoration: BoxDecoration(
              borderRadius: radius(100), color: Color(0xFFD51A18)),
        ),
        title: Text.rich(
          TextSpan(
            text: 'บัตร สวนสัตว์อุบลราชธนี ',
            style: boldTextStyle(),
            children: <InlineSpan>[
              // TextSpan(text: ' *5138', style: primaryTextStyle()),
              // TextSpan(text: ' is Expired', style: boldTextStyle()),
            ],
          ),
        ),
        subtitle:
            Text('วันที่ จอง 13/02/2565', style: secondaryTextStyle(size: 12)),
        trailing: isExpanded
            ? Container(
                child: Icon(Icons.keyboard_arrow_up,
                    color: context.iconColor, size: 30),
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(
                    borderRadius: radius(100),
                    color: context.accentColor.withAlpha(32)),
              )
            : Icon(Icons.keyboard_arrow_down,
                color: context.iconColor, size: 30),
        onExpansionChanged: (t) {
          isExpanded = !isExpanded;
          setState(() {});
        },
        children: [
          Container(
            decoration:
                boxDecorationDefault(color: context.cardColor, boxShadow: null),
            padding: EdgeInsets.all(8),
            child: Column(
              children: [
                SettingItemWidget(
                  padding: EdgeInsets.all(4),
                  title: 'X1 บัตรผู้ใหญ่',
                  subTitle: 'วันที่จอง 13/02/2565',
                  trailing: Icon(Icons.more_horiz),
                  titleTextStyle:
                      boldTextStyle(size: 20, weight: FontWeight.w500),
                ),
                SettingItemWidget(
                  padding: EdgeInsets.all(4),
                  title: 'X1 รถยนต์ โซน A',
                  subTitle: 'วันที่จอง 13/02/2565',
                  trailing: Icon(Icons.more_horiz),
                  titleTextStyle:
                      boldTextStyle(size: 20, weight: FontWeight.w500),
                ),
                16.height,
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 230, 0),
                  child: Text(
                    'ID CARD',
                    style: secondaryTextStyle(size: 20),
                  ),
                ),
                AppTextField(
                  textFieldType: TextFieldType.OTHER,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.payment, color: context.iconColor),
                    labelText: 'UB00000000003',
                    // suffixIcon: Icon(Icons.camera_alt_outlined,
                    //     color: context.iconColor),
                    border: OutlineInputBorder(),
                  ),
                ),
                8.height,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [],
                ),
                8.height,
                Image(
                  image: NetworkImage(
                      'https://pngimg.com/uploads/qr_code/qr_code_PNG7.png'),
                  height: 180,
                  width: 280,
                ),
                8.height,
                Text(
                  '**** ใช้คิวอาร์นี้เพื่อเข้าชมและใช้จ่ายได้ในทุกโซน ภายในพื้นที่ ****',
                  style: secondaryTextStyle(size: 12),
                )
              ],
            ).paddingAll(8),
          )
        ],
      ),
    );
  }
}
