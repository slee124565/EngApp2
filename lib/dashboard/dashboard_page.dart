import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
// import 'package:google_fonts/google_fonts.dart';

class DashboardPage extends StatefulWidget {
  static String id = 'dashboard_page';

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF595A5E),
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(16.0, 4.0, 0.0, 0.0),
                height: 88.0,
                alignment: Alignment.centerLeft,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'FERQO',
                      // style: GoogleFonts.montserrat(
                      //   color: Colors.white,
                      //   fontWeight: FontWeight.w500,
                      //   fontStyle: FontStyle.normal,
                      //   fontSize: 24,
                      // ),
                    ),
                    Text(
                      '智慧家庭',
                      // style: GoogleFonts.montserrat(
                      //   color: Colors.white,
                      //   fontWeight: FontWeight.w500,
                      //   fontStyle: FontStyle.normal,
                      //   fontSize: 24,
                      // ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xFFF4F4F4),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(32.0),
                    ),
                  ),
                  child: Container(
                    margin: EdgeInsets.symmetric(
                      vertical: 21.0,
                      horizontal: 16.0,
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '狀態監控',
                              // style: GoogleFonts.notoSans(
                              //   fontWeight: FontWeight.w500,
                              //   fontSize: 16,
                              //   fontStyle: FontStyle.normal,
                              // ),
                            ),
                            Container(
                              width: 60.0,
                              height: 30.0,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(24),
                                ),
                              ),
                              child: Text(
                                '+關注',
                                // style: GoogleFonts.notoSans(
                                //   fontWeight: FontWeight.w500,
                                //   fontSize: 12,
                                //   fontStyle: FontStyle.normal,
                                // ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 21.0,
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              for (var _ in [1, 2, 3, 4])
                                Container(
                                  width: 80.0,
                                  height: 104.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                      12.0,
                                    ),
                                    border: Border.all(
                                      color: Colors.blueAccent,
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 45.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '快速情境',
                              // style: GoogleFonts.notoSans(
                              //   fontWeight: FontWeight.w500,
                              //   fontSize: 16,
                              //   fontStyle: FontStyle.normal,
                              // ),
                            ),
                            Container(
                              width: 60.0,
                              height: 30.0,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(24),
                                ),
                              ),
                              child: Text(
                                '+新增',
                                // style: GoogleFonts.notoSans(
                                //   fontWeight: FontWeight.w500,
                                //   fontSize: 12,
                                //   fontStyle: FontStyle.normal,
                                // ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 21.0,
                        ),
                        Container(
                          height: 68.0,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 3,
                            itemBuilder: (_, __) => Container(
                              margin: EdgeInsets.only(right: 8.0),
                              width: 204.0,
                              height: 68.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  12.0,
                                ),
                                border: Border.all(
                                  color: Colors.blueAccent,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 45.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '常用開關',
                              // style: GoogleFonts.notoSans(
                              //   fontWeight: FontWeight.w500,
                              //   fontSize: 16,
                              //   fontStyle: FontStyle.normal,
                              // ),
                            ),
                            Container(
                              width: 60.0,
                              height: 30.0,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(24),
                                ),
                              ),
                              child: Text(
                                '+新增',
                                // style: GoogleFonts.notoSans(
                                //   fontWeight: FontWeight.w500,
                                //   fontSize: 12,
                                //   fontStyle: FontStyle.normal,
                                // ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 21.0,
                        ),

                      ],
                    ),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 84.0,
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    for (var _ in [1, 2, 3, 4, 5])
                      Container(
                        width: 50.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.blueAccent),
                        ),
                      ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
