import 'package:dropdown_plus/dropdown_plus.dart';
import 'package:flutter/material.dart';
import 'package:zoo/main/home.dart';
import 'package:zoo/menu/NavDrawer.dart';
import 'package:zoo/working_zoo/payment.dart';

class buyticket extends StatefulWidget {
  const buyticket({super.key});

  @override
  State<buyticket> createState() => _buyticketState();
}

class _buyticketState extends State<buyticket> {
  static const String routeName = '/buyticket';
  final myController = TextEditingController(text: '180');
  final date = TextEditingController();

  DateTime selectedDate = DateTime.now();
  TimeOfDay selectedTime = TimeOfDay.now();

  final List<Map<String, dynamic>> _roles = [
    {"name": "Super Admin", "desc": "Having full access rights", "role": 1},
    {
      "name": "Admin",
      "desc": "Having full access rights of a Organization",
      "role": 2
    },
    {
      "name": "Manager",
      "desc": "Having Magenent access rights of a Organization",
      "role": 3
    },
    {
      "name": "Technician",
      "desc": "Having Technician Support access rights",
      "role": 4
    },
    {
      "name": "Customer Support",
      "desc": "Having Customer Support access rights",
      "role": 5
    },
    {"name": "User", "desc": "Having End User access rights", "role": 6},
  ];

  @override
  void initState() {
    super.initState();
    init();
    print(selectedTime.period);
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        helpText: 'Select your Booking date',
        cancelText: 'Not Now',
        confirmText: "Book",
        fieldLabelText: 'Booking Date',
        fieldHintText: 'Month/Date/Year',
        errorFormatText: 'Enter valid date',
        errorInvalidText: 'Enter date in valid range',
        context: context,
        builder: (BuildContext context, Widget? child) {
          return Theme(
            data: ThemeData.light(),
            child: child!,
          );
        },
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate)
      setState(() {
        print(picked);
        selectedDate = picked;
      });
  }

  Future<Null> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
        context: context,
        initialTime: selectedTime,
        builder: (BuildContext context, Widget? child) {
          return Theme(
            data: ThemeData.light(),
            child: MediaQuery(
              data:
                  MediaQuery.of(context).copyWith(alwaysUse24HourFormat: false),
              child: child!,
            ),
          );
        });

    if (picked != null)
      setState(() {
        selectedTime = picked;
      });
  }

  init() async {
    //
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("สวนสัตว์อุบลราชธานี"),
        ),
        drawer: NavDrawer(),
        body: ListView(
          children: [list_one(), form_buy()],
        ));
  }

  Widget list_one() {
    return Card(
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
    );
  }

  Widget form_buy() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        child: Column(
          children: [
            Card(
                elevation: 4,
                child: ListTile(
                  onTap: () {
                    _selectDate(context);
                  },
                  title: Text(
                    'เลือกวันที่จอง',
                    style: TextStyle(fontSize: 16),
                  ),
                  subtitle: Text(
                    "${selectedDate.toLocal()}".split(' ')[0],
                    style: TextStyle(fontSize: 14),
                  ),
                  trailing: IconButton(
                    icon: Icon(
                      Icons.date_range,
                      color: appStore.iconColor,
                    ),
                    onPressed: () {
                      _selectDate(context);
                    },
                  ),
                )),
            SizedBox(height: 10.0),
            TextField(
              controller: TextEditingController(
                text: "${selectedDate.toLocal()}".split(' ')[0],
              ),
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: '',
                  labelStyle: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                  // hintText: 'EMAIL',
                  // hintStyle: ,
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.green))),
            ),
            SizedBox(height: 10.0),
            TextDropdownFormField(
              options: ["1", "2", "3", "4", "5", "6"],
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  suffixIcon: Icon(Icons.arrow_drop_down),
                  labelText: "จำนวนบัตร"),
              dropdownHeight: 120,
            ),
            SizedBox(height: 10.0),
            TextDropdownFormField(
              options: ["รถยนต์(40 บาท)", "จักยานยนต์(20 บาท)", "ไม่มีรถ"],
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  suffixIcon: Icon(Icons.arrow_drop_down),
                  labelText: "เลือกประเภทรถ"),
              dropdownHeight: 120,
            ),
            SizedBox(height: 10.0),
            TextDropdownFormField(
              options: ["A", "B", "C"],
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  suffixIcon: Icon(Icons.arrow_drop_down),
                  labelText: "ล็อคที่"),
              dropdownHeight: 120,
            ),
            SizedBox(height: 10.0),
            TextField(
              controller: myController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'ราคารวม ',
                  labelStyle: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.green))),
            ),
            SizedBox(
              height: 25.0,
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
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => payment()));
                    },
                    child: Center(
                      child: Text(
                        'จองบัตร',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Montserrat'),
                      ),
                    ),
                  ),
                )),
            SizedBox(height: 20.0),
            Container(
              height: 40.0,
              color: Colors.transparent,
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.black,
                        style: BorderStyle.solid,
                        width: 1.0),
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(20.0)),
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Center(
                    child: Text('ย้อนกลับ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Montserrat')),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

AppStore appStore = AppStore();

class AppStore {
  Color? textPrimaryColor;
  Color? iconColorPrimaryDark;
  Color? scaffoldBackground;
  Color? backgroundColor;
  Color? backgroundSecondaryColor;
  Color? appColorPrimaryLightColor;
  Color? textSecondaryColor;
  Color? appBarColor;
  Color? iconColor;
  Color? iconSecondaryColor;
  Color? cardColor;

  AppStore() {
    textPrimaryColor = Color(0xFF212121);
    iconColorPrimaryDark = Color(0xFF212121);
    scaffoldBackground = Color(0xFFEBF2F7);
    backgroundColor = Colors.black;
    backgroundSecondaryColor = Color(0xFF131d25);
    appColorPrimaryLightColor = Color(0xFFF9FAFF);
    textSecondaryColor = Color(0xFF5A5C5E);
    appBarColor = Colors.white;
    iconColor = Color(0xFF212121);
    iconSecondaryColor = Color(0xFFA8ABAD);
    cardColor = Color(0xFF191D36);
  }
}
