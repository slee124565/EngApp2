import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
                      style: GoogleFonts.montserrat(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal,
                        fontSize: 24,
                      ),
                    ),
                    Text(
                      '智慧家庭',
                      style: GoogleFonts.montserrat(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal,
                        fontSize: 24,
                      ),
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
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        unselectedIconTheme: IconThemeData(
          color: Color(0xFF777472),
        ),
        unselectedLabelStyle: GoogleFonts.notoSans(
          fontSize: 10.0,
          fontWeight: FontWeight.w600,
          fontStyle: FontStyle.normal,
          color: Color(0xFF777472),
        ),
        selectedIconTheme: IconThemeData(
            color: Color(0xFFB8A85A),
        ),
        items: const<BottomNavigationBarItem> [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label:'首頁'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label:'房間'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label:'服務'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label:'通知'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label:'個人'
          ),
        ],
      ),
    );
  }
}
