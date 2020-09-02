import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_ticket_widget/flutter_ticket_widget.dart';
import 'package:barcode_flutter/barcode_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TicketPage(),
    );
  }
}

class TicketPage extends StatefulWidget {
  @override
  _TicketPageState createState() => _TicketPageState();
}

class _TicketPageState extends State<TicketPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xffff538e), Color(0xffff7378)],
                begin: Alignment.center,
                end: Alignment.bottomCenter)),
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: FlutterTicketWidget(
          width: size.width,
          height: size.height * 0.7,
          isCornerRounded: true,
          child: Container(
            width: size.width,
            height: size.height,
            padding: EdgeInsets.only(top: 10, right: 10, left: 10),
            child: Column(
              children: [
                Container(
                  //logo
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/3.png"))),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "LA-A EventCorner",
                  style: TextStyle(
                      color: Color(0xff00275e), fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                Row(
                  //Time
                  children: [
                    Text("Time :", style: TextStyle(color: Colors.grey)),
                    Text(
                      " Evening",
                      style: TextStyle(color: Color(0xfff79684)),
                    ),
                  ],
                ),
                SizedBox(
                  height: size.height * 0.015,
                ),
                Row(
                  //Date
                  children: [
                    Text("Date  :", style: TextStyle(color: Colors.grey)),
                    Text(
                      " 25 September 2020",
                      style: TextStyle(color: Color(0xfff79684)),
                    ),
                  ],
                ),
                SizedBox(
                  height: size.height * 0.015,
                ),
                Row(
                  //InvoiceN
                  children: [
                    Text("Invoice :", style: TextStyle(color: Colors.grey)),
                    Text(
                      " N001",
                      style: TextStyle(color: Color(0xfff79684)),
                    ),
                  ],
                ),
//                Divider(
//                  height: 10,
//                  color: Colors.grey,
//                  endIndent: 50,
//                  indent: 1,
//                  thickness: 2.0,
//                ),
                SizedBox(
                  height: size.height * 0.11,
                ),
                Row(
                  children: List.generate(
                      18,
                      (index) => Padding(
                            padding: const EdgeInsets.only(left: 8.2),
                            child: Container(
                              width: 10,
                              height: 2,
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      colors: [
                                    Color(0xffff538e),
                                    Color(0xffff7378)
                                  ],
                                      begin: Alignment.center,
                                      end: Alignment.bottomCenter)),
                            ),
                          )),
                ),
                SizedBox(
                  height: size.height * 0.03,
                ),
                Row(
                  //InvoiceN
                  children: [
                    Text("Participant:", style: TextStyle(color: Colors.grey)),
                    Text(
                      " KerKer",
                      style: TextStyle(color: Color(0xff00275e)),
                    ),
                  ],
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                Container(
                  width: size.width,
                  height: size.height * 0.05,
                  child: Table(
                    border: TableBorder.symmetric(
                        inside: BorderSide(color: Color(0xffff538e))),
                    children: [
                      TableRow(children: [
                        Center(
                            child: Text(
                          "N",
                          style: TextStyle(color: Colors.grey),
                        )),
                        Center(
                            child: Text(
                          "Product",
                          style: TextStyle(color: Colors.grey),
                        )),
                        Center(
                            child: Text(
                          "Qty",
                          style: TextStyle(color: Colors.grey),
                        )),
                        Center(
                            child: Text(
                          "Price",
                          style: TextStyle(color: Colors.grey),
                        )),
                        Center(
                            child: Text(
                          "Amount",
                          style: TextStyle(color: Colors.grey),
                        )),
                      ]),
                      TableRow(children: [
                        Center(
                            child: Column(
                          children: <Widget>[
                            SizedBox(
                              height: 10,
                            ),
                            Text("1",
                                style: TextStyle(color: Color(0xfff79684))),
                          ],
                        )),
                        Center(
                            child: Column(
                          children: <Widget>[
                            SizedBox(
                              height: 10,
                            ),
                            Text("VIP",
                                style: TextStyle(color: Color(0xfff79684))),
                          ],
                        )),
                        Center(
                            child: Column(
                          children: <Widget>[
                            SizedBox(
                              height: 10,
                            ),
                            Text("2",
                                style: TextStyle(color: Color(0xfff79684))),
                          ],
                        )),
                        Center(
                            child: Column(
                          children: <Widget>[
                            SizedBox(
                              height: 10,
                            ),
                            Text("2 \$",
                                style: TextStyle(color: Color(0xfff79684))),
                          ],
                        )),
                        Center(
                            child: Column(
                          children: <Widget>[
                            SizedBox(
                              height: 10,
                            ),
                            Text("4\$",
                                style: TextStyle(color: Color(0xfff79684))),
                          ],
                        )),
                      ]),
                    ],
                  ),
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                BarCodeImage(
                  foregroundColor: Colors.yellow,

                  data: "LA-A EventCorner", // Code string. (required)
                  codeType: BarCodeType.Code128, // Code type (required)
                  lineWidth:
                      1.0, // width for a single black/white bar (default: 2.0)
                  barHeight:
                      80.0, // height for the entire widget (default: 100.0)
                  hasText:
                      true, // Render with text label or not (default: false)
                  onError: (error) {
                    // Error handler
                    print('error = $error');
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
