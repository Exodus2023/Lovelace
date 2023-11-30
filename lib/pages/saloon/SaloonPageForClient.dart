import 'package:flutter/material.dart';
import 'package:lovelace/components/dialogBoxes/confirm_box.dart';
import 'package:lovelace/components/dialogBoxes/horary.dart';
import 'package:lovelace/components/saloonsBoxes/days_and_hours.dart';
import 'package:lovelace/components/saloonsBoxes/request_sent.dart';
import 'package:lovelace/components/saloonsBoxes/saloon_description.dart';
import 'package:lovelace/pages/general/colors.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:lovelace/components/texts/page_title.dart';

class SaloonPageForClient extends StatefulWidget {
  State<SaloonPageForClient> createState() => _SaloonPageForClientState();
}

class _SaloonPageForClientState extends State<SaloonPageForClient> {
  var today = DateTime.now();

  String hora1 = '09:30';
  String hora2 = '11:30';
  String hora3 = '13:30';
  String hora4 = '15:30';

  void sentDialog(){
     Navigator.of(context).pop();
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return RequestSent();
        }
    );
  }

   void confirmDialog1() {
    Navigator.of(context).pop();
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return ConfirmBox(today.day, hora1, sentDialog);
        }
    );
  }

  void confirmDialog2() {
    Navigator.of(context).pop();
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return ConfirmBox(today.day, hora2, sentDialog);
        }
    );
  }

  void confirmDialog3() {
    Navigator.of(context).pop();
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return ConfirmBox(today.day, hora3, sentDialog);
        }
    );
  }

  void confirmDialog4() {
    Navigator.of(context).pop();
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return ConfirmBox(today.day, hora4, sentDialog);
        }
    );
  }

  

  void _onDaySelected(DateTime day, DateTime focusedDay) {
    setState(() {
      today = day;
    });
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return Horary(hora1, hora2, hora3, hora4, confirmDialog1, confirmDialog2, confirmDialog3, confirmDialog4);
        });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: PageTitle('Lovelace'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: primary),
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: ListView(children: [
          DaysAndHours(hora1, hora2, hora3, hora4),
          SizedBox(height: 10),
          SaloonDescrition('descrição'),
          SizedBox(height: 10),
          Container(
              decoration: BoxDecoration(
                  border: Border.all(color: primary),
                  borderRadius: BorderRadiusDirectional.circular(20)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(height: 20),
                  Text('Agenda',
                      style: TextStyle(fontSize: 23, color: primary
                      )),
                  SizedBox(height: 10),
                  TableCalendar(
                    firstDay: DateTime(today.year, today.month, 1),
                    lastDay: DateTime(today.year + 1, 12, 1),
                    focusedDay: today,
                    selectedDayPredicate: (day) => isSameDay(day, today),
                    onDaySelected: _onDaySelected,
                    headerStyle: HeaderStyle(
                      formatButtonVisible: false,
                      titleCentered: true,
                    ),
                    calendarStyle: CalendarStyle(
                        selectedDecoration:
                            BoxDecoration(color: primary, shape: BoxShape.circle),
                        todayDecoration:
                            BoxDecoration(color: primary, shape: BoxShape.circle),
                    )
                  ),
                ]
              )
            ),
        ]
        ),
      ),
    );
  }
}
